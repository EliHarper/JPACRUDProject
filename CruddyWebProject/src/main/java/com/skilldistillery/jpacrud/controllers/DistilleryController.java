package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.DistilleryDAO;
import com.skilldistillery.jpacrud.entities.Distillery;

@Controller
public class DistilleryController {
	
	@Autowired
	private DistilleryDAO dao;
	
	@RequestMapping(path="index.do", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Distillery> dIndex = dao.index();
		mv.setViewName("WEB-INF/views/index.jsp");
		mv.addObject("distilleries", dIndex);
		return mv;
	}
	
//	@RequestMapping(path="results.do", method=RequestMethod.GET)
//	public ModelAndView results(int id) {
//		
//		Distillery d = dao.retreiveById(id);
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("WEB-INF/views/results.jsp");
//		mv.addObject("distillery", d);
//		return mv;
//	}
	
	@RequestMapping(path = "show.do", method = RequestMethod.GET)
	  public ModelAndView getDistillery(@RequestParam(name="id") int id) {
	    ModelAndView mv = new ModelAndView();

	    Distillery d = dao.retreiveById(id);     

	    mv.addObject("distillery", d);
	    mv.setViewName("WEB-INF/views/show.jsp");
	    return mv;
	  }
	
	@RequestMapping(path = "toAddDistillery.do", method = RequestMethod.GET)
	public ModelAndView addDistillery() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/add.jsp");
		return mv;
	}
	
	@RequestMapping(path = "addDistillery.do", method = RequestMethod.POST)
	public ModelAndView addDistillery(String name, String type, Double latitude, Double longitude) {
		Distillery d = new Distillery(name, type, latitude, longitude);
		ModelAndView mv = new ModelAndView();
        dao.create(d);
        mv.setViewName("WEB-INF/views/afterAdd.jsp");
        mv.addObject("distillery", d);
        return mv;
	}
	
	@RequestMapping(path="delete.do", method= {RequestMethod.POST})
	public ModelAndView deleteDistillery(@RequestParam(name="id") int id) {
		ModelAndView mv = new ModelAndView();
		Distillery d = dao.retreiveById(id);
		boolean b = dao.destroy(id);
		if (b) {
			mv.setViewName("WEB-INF/views/afterDelete.jsp");
			mv.addObject("distillery", d);
		}
		return mv;
	}
	
	@RequestMapping(path= "result.do", method= RequestMethod.GET)
		ModelAndView updateDistillery(Integer id, String name, String type, Double latitude, Double longitude) {
		Distillery d = new Distillery(id, name, type, latitude, longitude);
		dao.update(id, d);
		ModelAndView mv = new ModelAndView();
//		film.setLanguageId(filmDAO.convertLangToLangId(updatedFilm.getLanguage()));
		mv.setViewName("WEB-INF/views/result.jsp");
//		System.out.println(updatedFilm);
		mv.addObject("distillery", d);
		return mv;
	}

}
