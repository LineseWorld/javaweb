package Info;

public class UserInfo {
	private String user_id;
	
	private String user_pwd;
	private String user_name;
	private String user_img_url;
	private int user_score;
	public UserInfo(String user_id, String user_pwd, String user_name, String user_img_url, int user_score,
		String user_sex, int user_follows, int use_question_num, int user_answer_num, String user_describe) {
		super();
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.user_img_url = user_img_url;
		this.user_score = user_score;
		this.user_sex = user_sex;
		this.user_follows = user_follows;
		this.use_question_num = use_question_num;
		this.user_answer_num = user_answer_num;
		this.user_describe = user_describe;
	}
	public UserInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String user_sex;
	private int user_follows;
	private int use_question_num;
	private int user_answer_num;
	private String user_describe;
	public String getUser_describe() {
		return user_describe;
	}
	public void setUser_describe(String user_describe) {
		this.user_describe = user_describe;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_img_url() {
		return user_img_url;
	}
	public void setUser_img_url(String user_img_url) {
		this.user_img_url = user_img_url;
	}
	public int getUser_score() {
		return user_score;
	}
	public void setUser_score(int user_score) {
		this.user_score = user_score;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public int getUser_follows() {
		return user_follows;
	}
	public void setUser_follows(int user_follows) {
		this.user_follows = user_follows;
	}
	public int getUse_question_num() {
		return use_question_num;
	}
	public void setUse_question_num(int use_question_num) {
		this.use_question_num = use_question_num;
	}
	public int getUser_answer_num() {
		return user_answer_num;
	}
	public void setUser_answer_num(int user_answer_num) {
		this.user_answer_num = user_answer_num;
	}
}
