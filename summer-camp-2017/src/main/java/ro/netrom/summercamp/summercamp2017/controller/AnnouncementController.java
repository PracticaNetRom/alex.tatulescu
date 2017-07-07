package ro.netrom.summercamp.summercamp2017.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.dto.SaveAnnouncementDto;
import ro.netrom.summercamp.summercamp2017.model.Announcement;

@Controller
@RequestMapping(value = { "/announcements" }, method = RequestMethod.GET)
public class AnnouncementController {

	@RequestMapping(value = { "", "/list" }, method = RequestMethod.GET)
	public String allAnnouncements(Model model) {

		RestTemplate restTemplate = new RestTemplate();

		List<Announcement> announcementList = Arrays.asList(
				restTemplate.getForObject("http://194.102.98.245:17281/announcement/list.do", Announcement[].class));

		model.addAttribute("announcements", announcementList);

		return "announcementsList";

	}

	@RequestMapping(value = { "/saveForm" }, method = RequestMethod.GET)
	public String savaAnnouncementForm() {
		return "post-ad";
	}

	@RequestMapping(value = { "/details" }, method = RequestMethod.GET, params = { "id", "title", "content", "status",
			"createDate", "ownerEmail", "ownerPhone", "ownerFirstName", "ownerLastName", "location", "categoryName" })
	public String getannouncementDetails(HttpServletRequest request, Model model) {

		Integer id = Integer.parseInt(request.getParameter("id"));
		model.addAttribute("id", id);
		String title = request.getParameter("title");
		model.addAttribute("title", title);
		String content = request.getParameter("content");
		model.addAttribute("content", content);
		String status = request.getParameter("status");

		if (status.equals("false")) {
			status = "Active";
		}

		model.addAttribute("status", status);
		String createDate = request.getParameter("createDate");
		model.addAttribute("createDate", createDate);
		String ownerEmail = request.getParameter("ownerEmail");
		model.addAttribute("ownerEmail", ownerEmail);
		String ownerPhone = request.getParameter("ownerPhone");
		model.addAttribute("ownerPhone", ownerPhone);
		String ownerFirstName = request.getParameter("ownerFirstName");
		model.addAttribute("ownerFirstName", ownerFirstName);
		String ownerLastName = request.getParameter("ownerLastName");
		model.addAttribute("ownerLastName", ownerLastName);
		String location = request.getParameter("location");
		model.addAttribute("location", location);
		String categoryName = request.getParameter("categoryName");
		model.addAttribute("categoryName", categoryName);

		return "details";
	}

	@RequestMapping(value = { "/save" }, method = RequestMethod.POST)
	public String saveAnnouncement(HttpServletRequest request) {

		final String uri = "http://194.102.98.245:17281/announcement/save.do";

		String title = request.getParameter("title");

		String content = request.getParameter("content");

		Date expireDate = new Date();

		String location = request.getParameter("location");

		String confirmationCode = request.getParameter("confirmationCode");

		String ownerEmail = request.getParameter("email");

		String ownerFirstName = request.getParameter("firstName");

		String ownerLastName = request.getParameter("lastName");

		String ownerPhone = request.getParameter("phone");

		String categoryName = request.getParameter("category");

		SaveAnnouncementDto newAnnouncement = new SaveAnnouncementDto(title, content, expireDate, location,
				confirmationCode, ownerEmail, ownerFirstName, ownerLastName, ownerPhone, categoryName);

		RestTemplate restTemplate = new RestTemplate();
		@SuppressWarnings("unused")
		SaveAnnouncementDto result = restTemplate.postForObject(uri, newAnnouncement, SaveAnnouncementDto.class);

		return "redirect:/announcement/save";

	}

}
