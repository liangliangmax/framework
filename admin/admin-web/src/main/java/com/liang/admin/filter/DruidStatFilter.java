package com.liang.admin.filter;

/**
 * Created by liang on 2017/4/26.
 */

import com.alibaba.druid.support.http.WebStatFilter;

import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

@WebFilter(filterName="druidWebStatFilter",urlPatterns="/*",
        initParams={
                @WebInitParam(name="exclusions",value="*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*")// 忽略资源
        })
/**
 * Druid拦截器，用于查看Druid监控
 * @author Raye
 * @since 2016年10月7日14:59:27
 */
public class DruidStatFilter extends WebStatFilter {

}