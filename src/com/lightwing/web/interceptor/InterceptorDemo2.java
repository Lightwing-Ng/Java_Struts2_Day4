package com.lightwing.web.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 自定义的拦截器2
 *
 * @author Lightwing Ng
 */
public class InterceptorDemo2 extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        System.out.println("InterceptorDemo2执行了...");
        String obj = invocation.invoke();
        System.out.println("InterceptorDemo2执行结束了...");
        return obj;
    }
}
