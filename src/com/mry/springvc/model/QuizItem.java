package com.mry.springvc.model;

import java.util.Date;

public class QuizItem {
	private int id;
	private String topic;
	private String subTopic;
	private String itemCategory;
	private String itemId;
	private int exposureTime;
	private String negativeItem;
	private String anchorItem;
	private String itemType;
	private String parentKey;
	private int pointType;
	

	public int getPointType() {
		return pointType;
	}
	public void setPointType(int pointType) {
		this.pointType = pointType;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getSubTopic() {
		return subTopic;
	}
	public void setSubTopic(String subTopic) {
		this.subTopic = subTopic;
	}
	public String getItemCategory() {
		return itemCategory;
	}
	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	
	public int getExposureTime() {
		return exposureTime;
	}
	public void setExposureTime(int exposureTime) {
		this.exposureTime = exposureTime;
	}
	public String getNegativeItem() {
		return negativeItem;
	}
	public void setNegativeItem(String negativeItem) {
		this.negativeItem = negativeItem;
	}
	public String getAnchorItem() {
		return anchorItem;
	}
	public void setAnchorItem(String anchorItem) {
		this.anchorItem = anchorItem;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public String getParentKey() {
		return parentKey;
	}
	public void setParentKey(String parentKey) {
		this.parentKey = parentKey;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
	
}
