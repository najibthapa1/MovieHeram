package com.movieheram.filter;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.movieheram.model.UserModel;
import com.movieheram.util.CookieUtil;
import com.movieheram.util.SessionUtil;

@WebFilter(asyncSupported = true, urlPatterns = "/*")
public class AuthenticationFilter implements Filter {

    private static final String[] PUBLIC_PAGES = { "/login", "/signUp", "/", "/home", "/resources","/getStarted" };

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();

        // Let static resources pass through
        if (uri.contains("/resources/") || uri.endsWith(".css") || uri.endsWith(".js") || uri.endsWith(".png") || uri.endsWith(".jpg")) {
            chain.doFilter(request, response);
            return;
        }

        // Get user from session
        UserModel user = (UserModel) SessionUtil.getAttribute(req, "user");
        String role = CookieUtil.getCookie(req, "role") != null ? CookieUtil.getCookie(req, "role").getValue() : null;

        boolean isLoggedIn = user != null;

        // Check for public pages
        for (String page : PUBLIC_PAGES) {
            if (uri.startsWith(contextPath + page)) {
                chain.doFilter(request, response);
                return;
            }
        }

        if (isLoggedIn) {
            if ("admin".equals(role)) {
                // Admin can access everything for now (extend this if needed)
                chain.doFilter(request, response);
            } else {
                // Regular user (block access to admin-only pages)
                if (uri.contains("/admin")) {
                    res.sendRedirect(contextPath + "/home");
                } else {
                    chain.doFilter(request, response);
                }
            }
        } else {
            // Not logged in → redirect to login for all non-public pages
            res.sendRedirect(contextPath + "/getStarted");
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Optional: init logic
    }

    @Override
    public void destroy() {
        // Optional: cleanup logic
    }
}