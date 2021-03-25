package com.kh.spring.meetingroom.model.service;

import java.util.ArrayList;

import com.kh.spring.meetingroom.model.vo.Meetingroom;

public interface MeetingroomService {

	int insertRoom(Meetingroom room);

	ArrayList<Meetingroom> selectAllRoomList();

	int updateRoom(Meetingroom room);

	int deleteRoom(int roomNo);

	ArrayList<Meetingroom> selectRoomList();

}
