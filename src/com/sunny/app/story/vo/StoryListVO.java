package com.sunny.app.story.vo;

import java.util.List;

import com.sunny.app.story.file.dto.StoryFileDTO;

public class StoryListVO {

	private int storyNumber;
	private String storyTitle;
	private String storyContent;
	private String storyContent2;
	private String storyContent3;
	private int storyViewcnt;	
	private String storyDate;
	private String lastUpdate;
	private int userNumber;
	private String userNickname;
	private String userProfileImage;
	private String fileSystemName;
	private List<StoryFileDTO> storyFiles;
	
	
	public StoryListVO() {}


	public int getStoryNumber() {
		return storyNumber;
	}


	public void setStoryNumber(int storyNumber) {
		this.storyNumber = storyNumber;
	}


	public String getStoryTitle() {
		return storyTitle;
	}


	public void setStoryTitle(String storyTitle) {
		this.storyTitle = storyTitle;
	}


	public String getStoryContent() {
		return storyContent;
	}


	public void setStoryContent(String storyContent) {
		this.storyContent = storyContent;
	}


	public String getStoryContent2() {
		return storyContent2;
	}


	public void setStoryContent2(String storyContent2) {
		this.storyContent2 = storyContent2;
	}


	public String getStoryContent3() {
		return storyContent3;
	}


	public void setStoryContent3(String storyContent3) {
		this.storyContent3 = storyContent3;
	}


	public int getStoryViewcnt() {
		return storyViewcnt;
	}


	public void setStoryViewcnt(int storyViewcnt) {
		this.storyViewcnt = storyViewcnt;
	}


	public String getStoryDate() {
		return storyDate;
	}


	public void setStoryDate(String storyDate) {
		this.storyDate = storyDate;
	}


	public String getLastUpdate() {
		return lastUpdate;
	}


	public void setLastUpdate(String lastUpdate) {
		this.lastUpdate = lastUpdate;
	}


	public int getUserNumber() {
		return userNumber;
	}


	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}


	public String getUserNickname() {
		return userNickname;
	}


	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}


	public String getUserProfileImage() {
		return userProfileImage;
	}


	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}


	public String getFileSystemName() {
		return fileSystemName;
	}


	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}


	public List<StoryFileDTO> getStoryFiles() {
		return storyFiles;
	}


	public void setStoryFiles(List<StoryFileDTO> storyFiles) {
		this.storyFiles = storyFiles;
	}


	@Override
	public String toString() {
		return "StoryListVO [storyNumber=" + storyNumber + ", storyTitle=" + storyTitle + ", storyContent="
				+ storyContent + ", storyContent2=" + storyContent2 + ", storyContent3=" + storyContent3
				+ ", storyViewcnt=" + storyViewcnt + ", storyDate=" + storyDate + ", lastUpdate=" + lastUpdate
				+ ", userNumber=" + userNumber + ", userNickname=" + userNickname + ", userProfileImage="
				+ userProfileImage + ", fileSystemName=" + fileSystemName + ", storyFiles=" + storyFiles + "]";
	}


}