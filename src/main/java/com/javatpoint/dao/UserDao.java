package com.javatpoint.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.javatpoint.beans.User;

public class UserDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int save(User u) {
        String sql = "INSERT INTO users(username, password, email, eventRegistered) VALUES(?, ?, ?, ?)";
        return template.update(sql, u.getUsername(), u.getPassword(), u.getEmail(), u.getEventRegistered());
    }

    public int update(User u) {
        String sql = "UPDATE users SET username=?, password=?, email=?, eventRegistered=? WHERE id=?";
        return template.update(sql, u.getUsername(), u.getPassword(), u.getEmail(), u.getEventRegistered(), u.getId());
    }

    public int delete(Long id) {
        String sql = "DELETE FROM users WHERE id=?";
        return template.update(sql, id);
    }

    public User getUserById(Long id) {
        String sql = "SELECT * FROM users WHERE id=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(User.class));
    }

    public List<User> getUsers() {
        return template.query("SELECT * FROM users", new RowMapper<User>() {
            public User mapRow(ResultSet rs, int row) throws SQLException {
                User u = new User();
                u.setId(rs.getLong(1));
                u.setUsername(rs.getString(2));
                u.setPassword(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setEventRegistered(rs.getString(5));
                return u;
            }
        });
    }
    
    public User getUserByUsernameAndPassword(String username, String password) {
        String sql = "SELECT * FROM users WHERE username=? AND password=?";
        try {
            return template.queryForObject(sql, new Object[]{username, password}, new BeanPropertyRowMapper<>(User.class));
        } catch (Exception e) {
            return null; // If no user is found, return null
        }
    }


    
}