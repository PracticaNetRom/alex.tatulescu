package ro.netrom.summercamp.summercamp2017.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.dto.SaveAnnouncementDto;
import ro.netrom.summercamp.summercamp2017.model.Announcement;

@Controller
@RequestMapping(value = { "/announcement" }, method = RequestMethod.GET)
public class AnnouncementController {

	@RequestMapping(value = { "/list.html" }, method = RequestMethod.GET)
	public String allAnnouncements(Model model) {

		RestTemplate restTemplate = new RestTemplate();

		List<Announcement> announcementList = Arrays.asList(
				restTemplate.getForObject("http://194.102.98.245:17281/announcement/list.do", Announcement[].class));

		model.addAttribute("announcements", announcementList);

		return "announcements";

	}

	@RequestMapping(value = { "/save" }, method = RequestMethod.POST)
	public String saveAnnouncement() {

		final String uri = "http://194.102.98.245:17281/announcement/save.do";

		Date date = new Date();

		SaveAnnouncementDto newAnnouncement = new SaveAnnouncementDto("3", "3", date, "Craiova", "123",
				"aaaa@gmail.com", "Liviu", "Dragnea", "1234567", "Cars");

		RestTemplate restTemplate = new RestTemplate();
		SaveAnnouncementDto result = restTemplate.postForObject(uri, newAnnouncement, SaveAnnouncementDto.class);

		System.out.println(result.toString());

		return "save";

	}

}
