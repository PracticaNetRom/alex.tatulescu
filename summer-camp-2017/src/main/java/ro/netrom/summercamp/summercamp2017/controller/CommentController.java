package ro.netrom.summercamp.summercamp2017.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.model.Comment;

@Controller
@RequestMapping("/comments")
public class CommentController {

	@RequestMapping("/list")
	public String comments(Model model) {

		RestTemplate restTemplate = new RestTemplate();

		List<Comment> commentList = Arrays.asList(restTemplate
				.getForObject("http://194.102.98.245:17281/comments/list.do?announcementId=1", Comment[].class));

		model.addAttribute("comments", commentList);

		return "comments";

	}

}
