package com.air2u.manage.dao;

import com.air2u.manage.entity.MatchColorWork;

public interface MatchColorWorkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MatchColorWork record);

    int insertSelective(MatchColorWork record);

    MatchColorWork selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MatchColorWork record);

    int updateByPrimaryKey(MatchColorWork record);
}