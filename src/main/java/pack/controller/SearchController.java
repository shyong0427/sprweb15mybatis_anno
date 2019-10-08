package pack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.SangpumDto;
import pack.model.SangpumInter;

@Controller
public class SearchController {
	@Autowired
	@Qualifier("sangpumImpl")
	private SangpumInter sangpumInter;
	
	@RequestMapping(value = "search", method = RequestMethod.POST)
	public ModelAndView sangpum(SangpumBean bean) {
		List<SangpumDto> list = sangpumInter.search(bean);
		
		return new ModelAndView("list", "datas", list);
	}
}
