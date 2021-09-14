package com.polaris.yiyao.dao;

import com.polaris.yiyao.activity.dao.ActivityInfoDAO;
import com.polaris.yiyao.activity.dto.ActivityInfoDTO;
import com.polaris.yiyao.converter.ActivityInfoConverter;
import com.polaris.yiyao.entity.ActivityInfoPO;
import com.polaris.yiyao.mapper.ActivityInfoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author Polaris
 * @date 2021年09月14日 20:37
 */
@Service
public class ActivityInfoDAOImpl implements ActivityInfoDAO {

    @Resource
    private ActivityInfoMapper activityInfoMapper;

    @Resource
    private ActivityInfoConverter activityInfoConverter;


    @Override
    public int deleteByPrimaryKey(Long id) {
        return activityInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(ActivityInfoDTO activityInfoDTO) {
        ActivityInfoPO activityInfoPO = activityInfoConverter.dto2Po(activityInfoDTO);
        int num =  activityInfoMapper.insert(activityInfoPO);
        //id回填
        activityInfoDTO.setId(activityInfoPO.getId());
        return num;
    }

    @Override
    public int insertSelective(ActivityInfoDTO activityInfoDTO) {
        ActivityInfoPO activityInfoPO = activityInfoConverter.dto2Po(activityInfoDTO);
        int num = activityInfoMapper.insertSelective(activityInfoPO);
        activityInfoDTO.setId(activityInfoPO.getId());
        return num;
    }

    @Override
    public ActivityInfoDTO selectByPrimaryKey(Long id) {
        return activityInfoConverter.po2Dto(activityInfoMapper.selectByPrimaryKey(id));
    }

    @Override
    public int updateByPrimaryKeySelective(ActivityInfoDTO activityInfoDTO) {
        return activityInfoMapper.updateByPrimaryKeySelective(activityInfoConverter.dto2Po(activityInfoDTO));
    }

    @Override
    public int updateByPrimaryKey(ActivityInfoDTO activityInfoDTO) {
        return activityInfoMapper.updateByPrimaryKey(activityInfoConverter.dto2Po(activityInfoDTO));
    }
}
