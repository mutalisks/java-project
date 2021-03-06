package jp.co.geppo.entity.base;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

import jp.co.geppo.base.BaseEntity;
import jp.co.geppo.entity.Account;
import jp.co.geppo.entity.GeppoCategory;

/**
 * 月報記録ベース
 */
@MappedSuperclass
public class GeppoRecordBase extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /** アカウント */
    @ManyToOne(fetch = FetchType.LAZY, targetEntity = Account.class, optional = false)
    @JoinColumn(name = "account_id", nullable = false)
    private Account account;

    /** 月報カテゴリー */
    @ManyToOne(fetch = FetchType.LAZY, targetEntity = GeppoCategory.class, optional = false)
    @JoinColumn(name = "geppo_category_id", nullable = false)
    private GeppoCategory geppoCategory;

    /** 対象月 */
    @Column(name = "target_date", nullable = false)
    private LocalDate targetDate;

    /** 内容 */
    @Column(name = "content", nullable = false)
    private String content;

    /**
     * アカウントを取得します。
     * @return アカウント
     */
    public Account getAccount() {
        return account;
    }

    /**
     * アカウントをセットします。
     * @param account アカウント
     */
    public void setAccount(final Account account) {
        this.account = account;
    }

    /**
     * 月報カテゴリーを取得します。
     * @return 月報カテゴリー
     */
    public GeppoCategory getGeppoCategory() {
        return geppoCategory;
    }

    /**
     * 月報カテゴリーをセットします。
     * @param geppoCategory 月報カテゴリー
     */
    public void setGeppoCategory(GeppoCategory geppoCategory) {
        this.geppoCategory = geppoCategory;
    }

    /**
     * 対象日を取得します。
     * @return 対象日
     */
    public LocalDate getTargetDate() {
        return targetDate;
    }

    /**
     * 対象日をセットします。
     * @param targetDate 対象日
     */
    public void setTargetDate(final LocalDate targetDate) {
        this.targetDate = targetDate;
    }

    /**
     * 内容を取得します。
     * @return 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 内容をセットします。
     * @param content 内容
     */
    public void setContent(final String content) {
        this.content = content;
    }
}