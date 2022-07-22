package com.eee0.test.ajax.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eee0.test.ajax.dao.FavoriteDAO;
import com.eee0.test.ajax.model.Favorite;

@Service
public class FavoriteBO {

	@Autowired FavoriteDAO favoriteDAO;
	
	public List<Favorite> getFavoriteList() {
		
		return favoriteDAO.selectFavorite();
	}
	
	public int addFavoriteInsert(Favorite favorite) {
		
		return favoriteDAO.InsertFavorite(favorite);
	}


}
