package Info;

public class AnswerInfo {
	private int answer_id;
	private int question_id;
	private String user_id;
	private String Answer_content;
	private int answer_score;
	public AnswerInfo(){
	}
	//¹¹Ôìº¯Êý
	
	public AnswerInfo(int answer_id,int question_id,String user_id,String Answer_content,int answer_score){
		
		this.answer_id=answer_id;
		this.question_id=question_id;
		this.user_id=user_id;
		this.Answer_content=Answer_content;
		this.answer_score=answer_score;
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
	public String getAnswer_content() {
		return Answer_content;
	}

	public void setAnswer_content(String Answer_content) {
		this.Answer_content = Answer_content;
	}

	public int getAnswer_score() {
		return answer_score;
	}

	public void setAnswer_score(int answer_score) {
		this.answer_score = answer_score;
	}
}
