package net.findeasily.website.service;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import net.findeasily.website.domain.Property;
import net.findeasily.website.mapper.PropertyMapper;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author Hao Zhou
 * @since 2018-08-08
 */
@Service
public class PropertyService extends ServiceImpl<PropertyMapper, Property> {

}
