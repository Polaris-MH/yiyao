package com.polaris.yiyao.converter;

import com.polaris.yiyao.activity.dto.ActivityInfoDTO;
import com.polaris.yiyao.entity.ActivityInfoPO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @author Polaris
 * @date 2021年09月14日 20:47
 */
@Mapper(componentModel = "spring")
public interface ActivityInfoConverter {
    ActivityInfoConverter instance = Mappers.getMapper(ActivityInfoConverter.class);

    ActivityInfoPO dto2Po(ActivityInfoDTO activityInfoDTO);

    ActivityInfoDTO po2Dto(ActivityInfoPO activityInfoPO);
}
