package Info;

public class SaveInfo {
	private int answer_id;
	private int question_id;
	private String user_id;
	
	public SaveInfo(int answer_id, int question_id, String user_id) {
		super();
		this.answer_id = answer_id;
		this.question_id = question_id;
		this.user_id = user_id;
	}
	public SaveInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getAnswer_id() {
		return answer_id;
	}
	public void setAnswer_id(int answer_id) {
		this.answer_id = answer_id;
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
	
}
