package com.air2u.manage.dao;

import com.air2u.manage.entity.Recipe;

public interface RecipeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Recipe record);

    int insertSelective(Recipe record);

    Recipe selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Recipe record);

    int updateByPrimaryKey(Recipe record);
}