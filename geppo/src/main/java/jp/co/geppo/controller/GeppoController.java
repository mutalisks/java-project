package jp.co.geppo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.geppo.entity.GeppoRecord;
import jp.co.geppo.model.form.GeppoForm;
import jp.co.geppo.model.form.GeppoSearchForm;
import jp.co.geppo.model.security.AccountDetails;
import jp.co.geppo.repository.AccountRepository;
import jp.co.geppo.repository.GeppoCategoryRepository;
import jp.co.geppo.service.GeppoService;
import jp.co.geppo.util.UrlUtil;

/**
 * 月報コントローラ
 */
@Controller
@RequestMapping("geppo")
public class GeppoController {
	
    @Autowired
    private GeppoService geppoService;

    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private GeppoCategoryRepository geppoCategoryRepository;
    /**
     * 月報検索・一覧画面を表示します。
     * @return 画面
     */
    @GetMapping("list")
    public String list(@RequestParam(name = "page", defaultValue = "1") int pageNo, @Validated GeppoSearchForm searchForm,
            HttpServletRequest request,Model model) {
    	model.addAttribute("geppoSearchForm", geppoService.searchGeppo(searchForm, pageNo));
        model.addAttribute("url", UrlUtil.createPageUrl(request));
        model.addAttribute("pageNo", pageNo);
        model.addAttribute("accounts", accountRepository.findAll());
    	return "geppo/list";
    }

    /**
     * 月報登録画面を表示します。
     * @return 画面
     */
    @GetMapping("add")
    public String add(Model model) {
    	model.addAttribute("geppoForm", geppoService.add());
        model.addAttribute("categories", geppoCategoryRepository.findAll());
    	return "geppo/add";
    }

    /**
     * 月報を登録します。
     * @return 画面
     */
    @PostMapping("create")
    public String create(@AuthenticationPrincipal AccountDetails accountDetails, @Validated GeppoForm geppoForm, BindingResult result, Model model) {
    	if (result.hasErrors()) {
            model.addAttribute("geppoForm", geppoForm);
            model.addAttribute("categories", geppoCategoryRepository.findAll());
            return "geppo/add";
        }
        GeppoRecord geppoRecord = geppoService.create(accountDetails.getAccount(), geppoForm);
        return "redirect:/geppo/" + geppoRecord.getId() + "/detail";
    }

    /**
     * 月報詳細画面を表示します。
     * @return 画面
     */
    @GetMapping("{id}/detail")
    public String detail(@AuthenticationPrincipal AccountDetails accountDetails, @PathVariable("id") Long id, Model model) {
    	GeppoForm geppoForm = geppoService.detail(accountDetails.getAccount().getId(), id);
        model.addAttribute("geppoForm", geppoForm);
        return "geppo/detail";
    }

    /**
     * 月報編集画面を表示します。
     * @return 画面
     */
    @GetMapping("{id}/edit")
    public String edit(@AuthenticationPrincipal AccountDetails accountDetails, @PathVariable("id") Long id, Model model) {
    	GeppoForm geppoForm = geppoService.detail(accountDetails.getAccount().getId(), id);
    	model.addAttribute("geppoForm", geppoForm);
        model.addAttribute("categories", geppoCategoryRepository.findAll());
    	return "geppo/edit";
    }


    /**
     * 月報を更新します。
     * @return 画面
     */
    @PostMapping("{id}/update")
    public String update(@AuthenticationPrincipal AccountDetails accountDetails, @PathVariable("id") Long id, @Validated GeppoForm form, BindingResult result, Model model) {
    	if (result.hasErrors()) {
            model.addAttribute("geppoForm", form);
            model.addAttribute("categories", geppoCategoryRepository.findAll());
            return "geppo/edit";
        }
        GeppoRecord geppoRecord = geppoService.update(accountDetails.getAccount().getId(), form);
        return "redirect:/geppo/" + geppoRecord.getId() + "/detail";
    }

    /**
     * 月報を削除します。
     * @return 画面
     */
    @PostMapping("{id}/delete")
    public String delete(@AuthenticationPrincipal AccountDetails accountDetails, @PathVariable("id") Long id) {
    	geppoService.delete(accountDetails.getAccount().getId(), id);
    	return "redirect:/geppo/list";
    }
}
