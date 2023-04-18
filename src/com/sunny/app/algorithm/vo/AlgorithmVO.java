package com.sunny.app.algorithm.vo;

public class AlgorithmVO {
	private String algorithmResult;
    private String selectOne;
    private String selectTwo;
    private String selectThree;
    private String selectFour;
    private String selectFive;
    private String plantName;
	private String plantContent;
	
	public AlgorithmVO() {
	}

	public String getAlgorithmResult() {
		return algorithmResult;
	}

	public void setAlgorithmResult(String algorithmResult) {
		this.algorithmResult = algorithmResult;
	}

	public String getSelectOne() {
		return selectOne;
	}

	public void setSelectOne(String selectOne) {
		this.selectOne = selectOne;
	}

	public String getSelectTwo() {
		return selectTwo;
	}

	public void setSelectTwo(String selectTwo) {
		this.selectTwo = selectTwo;
	}

	public String getSelectThree() {
		return selectThree;
	}

	public void setSelectThree(String selectThree) {
		this.selectThree = selectThree;
	}

	public String getSelectFour() {
		return selectFour;
	}

	public void setSelectFour(String selectFour) {
		this.selectFour = selectFour;
	}

	public String getSelectFive() {
		return selectFive;
	}

	public void setSelectFive(String selectFive) {
		this.selectFive = selectFive;
	}

	public String getPlantName() {
		return plantName;
	}

	public void setPlantName(String plantName) {
		this.plantName = plantName;
	}

	public String getPlantContent() {
		return plantContent;
	}

	public void setPlantContent(String plantContent) {
		this.plantContent = plantContent;
	}

	@Override
	public String toString() {
		return "AlgorithmVO [algorithmResult=" + algorithmResult + ", selectOne=" + selectOne + ", selectTwo="
				+ selectTwo + ", selectThree=" + selectThree + ", selectFour=" + selectFour + ", selectFive="
				+ selectFive + ", plantName=" + plantName + ", plantContent=" + plantContent + "]";
	}
	
	
}
