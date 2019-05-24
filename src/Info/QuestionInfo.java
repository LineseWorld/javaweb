package Info;

public class QuestionInfo {
	private int question_id;
	private String user_id;
	private String question_title;
	private String question_content;
	private String part_content;
	private int question_answers;
	public QuestionInfo(){
		
	}
	//¹¹Ôìº¯Êý
	public QuestionInfo(int question_id,String user_id,String question_title,String question_content,int question_answers,String part_content){
		this.question_id=question_id;
		this.user_id=user_id;
		this.question_title=question_title;
		this.question_content=question_content;
		this.question_answers=question_answers;
		this.part_content=part_content;
	}
	public String getPart_content() {
		return part_content;
	}
	public void setPart_content(String part_content) {
		this.part_content=part_content;
	}
	public int getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getQuestion_content() {
		return question_content;
	}
	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}
	public int getQuestion_answers() {
		return question_answers;
	}
	public void setQuestion_answers(int question_answers) {
		this.question_answers = question_answers;
	}
}
