package com.itwill.guest.dao;

import com.itwill.guest.dto.GuestDto;

import java.util.List;

public interface GuestDao {

    GuestDto insert(GuestDto guest) throws Exception;

    GuestDto update(GuestDto guest) throws Exception;

    void delete(int guestNo) throws Exception;

    GuestDto findByGuestNo(int guestNo) throws Exception;

    List<GuestDto> findByAll() throws Exception;

    List<GuestDto> findByGuestName(String guestName) throws Exception;

    List<GuestDto> findByGuestTitle(String guestTitle) throws Exception;

    List<GuestDto> findByGuestContent(String guestContent) throws Exception;
}