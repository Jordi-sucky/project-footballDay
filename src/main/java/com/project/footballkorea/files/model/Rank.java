package com.project.footballkorea.files.model;

import java.util.Date;

public class Rank {
	
	private int id;
	private int leagueId;
	private String clubName;
	private int point;
	private int win;
	private int draw;
	private int defeat;
	private int goals;
	private int loss;
	private Date createdAt;
	private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getLeagueId() {
		return leagueId;
	}
	public void setLeagueId(int leagueId) {
		this.leagueId = leagueId;
	}
	public String getClubName() {
		return clubName;
	}
	public void setClubName(String clubName) {
		this.clubName = clubName;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getWin() {
		return win;
	}
	public void setWin(int win) {
		this.win = win;
	}
	public int getDraw() {
		return draw;
	}
	public void setDraw(int draw) {
		this.draw = draw;
	}
	public int getDefeat() {
		return defeat;
	}
	public void setDefeat(int defeat) {
		this.defeat = defeat;
	}
	public int getGoals() {
		return goals;
	}
	public void setGoals(int goals) {
		this.goals = goals;
	}
	public int getLoss() {
		return loss;
	}
	public void setLoss(int loss) {
		this.loss = loss;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
}
