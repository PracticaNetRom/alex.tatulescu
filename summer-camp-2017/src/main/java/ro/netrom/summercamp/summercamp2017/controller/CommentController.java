package ro.netrom.summercamp.summercamp2017.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.dto.SaveAnnouncementDto;
import ro.netrom.summercamp.summercamp2017.dto.SaveCommentDto;
import ro.netrom.summercamp.summercamp2017.model.Comment;

@Controller
@RequestMapping("/comments")
public class CommentController {

	@RequestMapping("/list")
	public String listComments(HttpServletRequest request, Model model) {

		final String uri = "http://194.102.98.245:17281/comments/list.do";

		RestTemplate restTemplate = new RestTemplate();

		String id = request.getParameter("announcementId");

		List<Comment> commentList = Arrays
				.asList(restTemplate.getForObject(uri + "?announcementId=" + id, Comment[].class));

		model.addAttribute("comments", commentList);

		return "comments";

	}

	@RequestMapping("/submit")
	public String submitComments(HttpServletRequest request) {

		RestTemplate restTemplate = new RestTemplate();

		final String uri = "http://194.102.98.245:17281/comments/save.do";

		String content = request.getParameter("comment");

		String name = request.getParameter("dname");

		String aId = request.getParameter("announcementId");

		SaveCommentDto newComment = new SaveCommentDto(content, name);

		@SuppressWarnings("unused")
		SaveAnnouncementDto result = restTemplate.postForObject(uri + "?announcementId=" + aId, newComment,
				SaveAnnouncementDto.class);

		return "redirect:/announcements/details";

	}

}
