package jp.co.geppo.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;

import jp.co.geppo.entity.GeppoRecord;
import jp.co.geppo.model.form.GeppoSearchForm;
import jp.co.geppo.util.QueryUtil;

/**
 * 月報記録リポジトリカスタム実装クラス
 */
public class GeppoRecordRepositoryCustomImpl implements GeppoRecordRepositoryCustom {
	
	
	@Autowired
    private EntityManager em;
	/**
     * 1ページ分の日報記録を検索条件に基づいて取得します。
     * @param pageNo ページ番号
     * @param limit 1ページあたりの上限件数
     * @return 該当記録
     */
	@Override
	public List<GeppoRecord> searchForPage(GeppoSearchForm form, int pageNo, int limit) {
		StringBuilder query = new StringBuilder();
        query.append("select gr from GeppoRecord gr"
            + " inner join gr.geppoCategory gc"
            + " inner join gr.account a"
            + " where");

        if (form.getId() != null) {
            query.append(" gr.id = :id and");
        }
        if (form.getWrittenBy() != null) {
            query.append(" gr.account.id = :writtenBy and");
        }
        if (Strings.isNotBlank(form.getKeywords())) {
            query.append(" ");
            query.append(QueryUtil.likeClause("gr.content", "keyword"));
            query.append(" and");
        }
        if (form.getDateFrom() != null) {
            query.append(" gr.targetDate >= :dateFrom and");
        }
        if (form.getDateTo() != null) {
            query.append(" gr.targetDate <= :dateTo and");
        }
        query.append(" gr.deleted = false");

        query.append(" order by gr.id asc");

        TypedQuery<GeppoRecord> q = em.createQuery(query.toString(), GeppoRecord.class);
        if(form.getId() != null) {
            q.setParameter("id", form.getId());
        }
        if (form.getWrittenBy() != null) {
            q.setParameter("writtenBy", form.getWrittenBy());
        }
        if (Strings.isNotBlank(form.getKeywords())) {
            q.setParameter("keyword", form.getKeywords());
        }
        if (form.getDateFrom() != null) {
            q.setParameter("dateFrom", form.getDateFrom());
        }
        if (form.getDateTo() != null) {
            q.setParameter("dateTo", form.getDateTo());
        }

        return q.setFirstResult((pageNo - 1) * limit)
            .setMaxResults(limit)
            .getResultList();
	}
	
	/**
     * 検索結果の件数を取得します。
     * @param form 日報検索フォーム
     * @return 該当件数
     */
	@Override
	public Long searchCount(GeppoSearchForm form) {
		final StringBuilder query = new StringBuilder();
        query.append("select count(*) from GeppoRecord gr where");

        if (form.getId() != null) {
            query.append(" gr.id = :id and");
        }
        if (form.getWrittenBy() != null) {
            query.append(" gr.account.id = :writtenBy and");
        }
        if (Strings.isNotBlank(form.getKeywords())) {
            query.append(" ");
            query.append(QueryUtil.likeClause("gr.content", "keyword"));
            query.append(" and");
        }
        if (form.getDateFrom() != null) {
            query.append(" gr.targetDate >= :dateFrom and");
        }
        if (form.getDateTo() != null) {
            query.append(" gr.targetDate <= :dateTo and");
        }
        query.append(" gr.deleted = false");

        final TypedQuery<Long> q = em.createQuery(query.toString(), Long.class);
        if(form.getId() != null) {
            q.setParameter("id", form.getId());
        }
        if (form.getWrittenBy() != null) {
            q.setParameter("writtenBy", form.getWrittenBy());
        }
        if (Strings.isNotBlank(form.getKeywords())) {
            q.setParameter("keyword", form.getKeywords());
        }
        if (form.getDateFrom() != null) {
            q.setParameter("dateFrom", form.getDateFrom());
        }
        if (form.getDateTo() != null) {
            q.setParameter("monthTo", form.getDateTo());
        }

        return q.getSingleResult();
	}

}