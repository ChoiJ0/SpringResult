package com.eee0.test.ajax.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.eee0.test.ajax.model.Favorite;

@Repository
public interface FavoriteDAO {
	
	public List<Favorite> selectFavorite();

	public int insertFavorite(Favorite favorite);

	public int selectCountByName(@Param("url") String url);

	public int deleteFavorite(@Param("id")int id);


}
