package com.sunny.app.algorithm.dto;


public class AlgorithmDTO {
	private String algorithmResult;
    private String selectOne;
    private String selectTwo;
    private String selectThree;
    private String selectFour;
    private String selectFive;

   public AlgorithmDTO() {}

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

@Override
public String toString() {
	return "AlgorithmDTO [algorithmResult=" + algorithmResult + ", selectOne=" + selectOne + ", selectTwo=" + selectTwo
			+ ", selectThree=" + selectThree + ", selectFour=" + selectFour + ", selectFive=" + selectFive + "]";
}

   
}