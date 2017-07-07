package ro.netrom.summercamp.summercamp2017.dto;

public class SaveCommentDto {

	private String content;

	private String name;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public SaveCommentDto(String content, String name) {
		super();
		this.content = content;
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
