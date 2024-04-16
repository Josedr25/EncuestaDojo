package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EncuestaController {
	
	private String[] getLanguages() {
		return new String[] {
				"Java", "Python"
		};
	}
	
	private String[] getLocations() {
		return new String[] {
				"Seattle", "Dallas", "San Jose"
		};
	}
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("locations", getLocations());
		model.addAttribute("languajes", getLanguages());
		return "index.jsp";
	}
	
	@PostMapping("/resultado")
	public String resultado(@RequestParam("name") String name,
							@RequestParam("location") String location,
							@RequestParam("language") String language,
							@RequestParam("comment") String comment,
							Model model){

        model.addAttribute("name", name);
        model.addAttribute("location", location);
        model.addAttribute("language", language);
        model.addAttribute("comment", comment);
        
        return "resultado.jsp";
	}
}
