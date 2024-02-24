package com.demo.Dto;

import java.sql.Date;


import com.demo.Model.Pillion_Status;

public class Pillion_route_details_Dto {
	private int route_id ;
	private Pillion_Status status_id;
	private String start_point;
	private String end_point;
	private Date travel_date;
	private String description;
	
	
	
	public Pillion_route_details_Dto() {
		super();
	}
	public Pillion_route_details_Dto(int route_id, Pillion_Status status_id, String start_point, String end_point, Date travel_date,
			String description) {
		super();
		this.route_id = route_id;
		this.status_id = status_id;
		this.start_point = start_point;
		this.end_point = end_point;
		this.travel_date = travel_date;
		this.description = description;
	}
	public int getRoute_id() {
		return route_id;
	}
	public void setRoute_id(int route_id) {
		this.route_id = route_id;
	}
	public Pillion_Status getStatus_id() {
		return status_id;
	}
	public void setStatus_id(Pillion_Status status_id) {
		this.status_id = status_id;
	}
	public String getStart_point() {
		return start_point;
	}
	public void setStart_point(String start_point) {
		this.start_point = start_point;
	}
	public String getEnd_point() {
		return end_point;
	}
	public void setEnd_point(String end_point) {
		this.end_point = end_point;
	}
	public Date getTravel_date() {
		return travel_date;
	}
	public void setTravel_date(Date travel_date) {
		this.travel_date = travel_date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Pillion_route_details_Dto [route_id=" + route_id + ", status_id=" + status_id + ", start_point="
				+ start_point + ", end_point=" + end_point + ", travel_date=" + travel_date + ", description="
				+ description + "]";
	}
	
}
