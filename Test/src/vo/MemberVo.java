package vo;

public class MemberVo {
	private String id;
	private String pw;
	private String name;
	private int point;
	
	public MemberVo(String id, String pw, String name, int point) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.point = point;
	}

	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public String getName() {
		return name;
	}
	public int getPoint() {
		return point;
	}
}
