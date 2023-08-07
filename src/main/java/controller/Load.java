package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.Adao;
import dto.Adto;

@Controller
public class Load {

	@RequestMapping("/insert")
	public ModelAndView insertMvc(@ModelAttribute Adto adto, Adao adao) {

		adao.insert(adto);

		System.out.println(adto.getId());
		System.out.println(adto.getName());
		System.out.println(adto.getEmail());
		System.out.println(adto.getPassword());
		System.out.println(adto.getConfirm_password());
		System.out.println(adto.getGender());
		System.out.println(adto.getCountry());
		System.out.println(adto.getState());
		System.out.println(adto.getCheckbox());

		ModelAndView andView = new ModelAndView("homepage.jsp");
		andView.addObject("msg", "Inserted successfully");
		return andView;

	}

	@RequestMapping("/fetchall")
	public ModelAndView fetchall(@ModelAttribute Adao adao) {
		List<Adto> list = adao.fetchall();
		ModelAndView andView=new ModelAndView("download.jsp");
		andView.addObject("list",list);
		andView.addObject("data", "Data is viewed");
		return andView;
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@ModelAttribute Adto adto,Adao d1) 
	{
		int id=adto.getId();
		String message=d1.delete(id);
		
		ModelAndView andView=new ModelAndView("insert.jsp");
		andView.addObject("msg", message);
		return andView;
		
	}
	
	@RequestMapping("/update")
	public ModelAndView update(@RequestParam int id,@ModelAttribute Adao adao) {
		System.out.println(id);
		Adto d1=adao.fetchById(id);
		ModelAndView andView=new ModelAndView("update.jsp");
		andView.addObject("obj", d1);
		return andView;
	}
	
	
	
	@RequestMapping("/merge")
	private void merging(@ModelAttribute Adto adto,Adao adao) 
	{
		adao.mergeData(adto);
		
	}

}
