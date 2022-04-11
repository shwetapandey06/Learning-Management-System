package bean;

import java.util.Date;

public class Exam {
	private int exam_id;
	private String name;
	private Date date;
	private String image;
	private String professor;
	private String description;
	private boolean bba;
	private boolean mba;
	private boolean bca;
	private boolean mca;
	private boolean pgdm;
		
	public Exam() {
		// TODO Auto-generated constructor stub
	}

	public Exam(int exam_id, String name, Date date, String image, String professor, String description, boolean bba,
			boolean mba, boolean bca, boolean mca, boolean pgdm) {
		super();
		this.exam_id = exam_id;
		this.name = name;
		this.date = date;
		this.image = image;
		this.professor = professor;
		this.description = description;
		this.bba = bba;
		this.mba = mba;
		this.bca = bca;
		this.mca = mca;
		this.pgdm = pgdm;
	}

	public int getExam_id() {
		return exam_id;
	}

	public void setExam_id(int exam_id) {
		this.exam_id = exam_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getProfessor() {
		return professor;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isBba() {
		return bba;
	}

	public void setBba(boolean bba) {
		this.bba = bba;
	}

	public boolean isMba() {
		return mba;
	}

	public void setMba(boolean mba) {
		this.mba = mba;
	}

	public boolean isBca() {
		return bca;
	}

	public void setBca(boolean bca) {
		this.bca = bca;
	}

	public boolean isMca() {
		return mca;
	}

	public void setMca(boolean mca) {
		this.mca = mca;
	}

	public boolean isPgdm() {
		return pgdm;
	}

	public void setPgdm(boolean pgdm) {
		this.pgdm = pgdm;
	}

	@Override
	public String toString() {
		return "Exam [exam_id=" + exam_id + ", name=" + name + ", date=" + date + ", image=" + image + ", professor="
				+ professor + ", description=" + description + ", bba=" + bba + ", mba=" + mba + ", bca=" + bca
				+ ", mca=" + mca + ", pgdm=" + pgdm + "]";
	}
	
}
