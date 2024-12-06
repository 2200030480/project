package com.javatpoint.controllers;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.javatpoint.beans.User;
import com.javatpoint.dao.UserDao;

@Controller
public class UserController {

    @Autowired
    UserDao dao; // Inject UserDao via Spring

    // Show Add User form
    @RequestMapping("/userform")
    public String showForm(Model m) {
        m.addAttribute("command", new User());
        return "userform";
    }

    // Save user (Signup)
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("user") User user) {
        dao.save(user);
        return "redirect:/login"; // Redirect to login page after signup
    }

    // Show Farmer Signup page
    @RequestMapping("/farmerSignup")
    public String showFarmerSignupForm(Model m) {
        m.addAttribute("command", new User());
        return "farmerSignup"; // Redirect to farmerSignup.jsp
    }

    // View users and logged-in user details
    @RequestMapping("/viewusers")
    public String viewUsers(Model m, HttpSession session) {
        List<User> list = dao.getUsers();
        m.addAttribute("list", list);

        // Fetch the logged-in user from the session
        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            m.addAttribute("loggedInUser", loggedInUser); // Add the logged-in user to the model
        }

        return "viewusers";
    }

    // Edit user
    @RequestMapping(value = "/edituser/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable Long id, Model m) {
        User user = dao.getUserById(id);
        m.addAttribute("command", user);
        return "usereditform";
    }

    // Save edited user
    @RequestMapping(value = "/editsave", method = RequestMethod.POST)
    public String editSave(@ModelAttribute("user") User user) {
        dao.update(user);
        return "redirect:/viewusers";
    }

    // Delete user
    @RequestMapping(value = "/deleteuser/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable Long id) {
        dao.delete(id);
        return "redirect:/viewusers";
    }

    // Show signup page
    @RequestMapping("/signup")
    public String showSignupForm(Model m) {
        m.addAttribute("command", new User());
        return "signup"; // Return signup.jsp
    }

    // Show login page
    @RequestMapping("/login")
    public String showLoginForm() {
        return "login"; // Return login.jsp
    }

    // Login user and store in session
    @PostMapping("/loginUser")
    public String loginUser(@RequestParam("username") String username, 
                            @RequestParam("password") String password, 
                            Model m, 
                            HttpSession session) {
        User user = dao.getUserByUsernameAndPassword(username, password);
        if (user != null) {
            // Store the logged-in user in the session
            session.setAttribute("loggedInUser", user);
            return "redirect:/viewusers"; // Redirect to viewusers after login
        } else {
            m.addAttribute("message", "Invalid credentials. Please try again.");
            return "login"; // Return to login page on failure
        }
    }
}
