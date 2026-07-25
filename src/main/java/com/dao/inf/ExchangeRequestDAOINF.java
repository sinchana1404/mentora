package com.dao.inf;

import java.util.List;

import com.dto.ExchangeRequestDTO;

public interface ExchangeRequestDAOINF {
	    boolean sendRequest(ExchangeRequestDTO request);
	    boolean acceptRequest(int requestId);
	    boolean rejectRequest(int requestId);
	    
	    void deleteRequest(int requestId);

	    List<ExchangeRequestDTO> getAllRequests();
	    
	    List<ExchangeRequestDTO> getAllRequestsByStatus(String status);
}
