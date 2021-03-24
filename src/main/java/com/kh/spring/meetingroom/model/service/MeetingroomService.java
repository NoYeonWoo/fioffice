package com.kh.spring.meetingroom.model.service;

import java.util.ArrayList;

import com.kh.spring.meetingroom.model.vo.Meetingroom;

public interface MeetingroomService {

	int insertRoom(Meetingroom room);

	ArrayList<Meetingroom> selectRoomList();

}
