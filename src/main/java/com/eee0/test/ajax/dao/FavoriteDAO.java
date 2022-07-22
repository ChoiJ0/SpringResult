package com.eee0.test.ajax.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eee0.test.ajax.model.Favorite;

@Repository
public interface FavoriteDAO {
	
	public List<Favorite> selectFavorite();

	public int InsertFavorite(Favorite favorite);


}
