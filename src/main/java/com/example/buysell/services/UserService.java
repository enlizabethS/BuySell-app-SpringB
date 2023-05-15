package com.example.buysell.services;

import com.example.buysell.enums.Role;
import com.example.buysell.models.User;
import com.example.buysell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user){
        String email = user.getEmail();
        if(userRepository.findByEmail(email) != null) return false;
        user.setActive(true);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.getRoles().add(Role.ROLE_ADMIN);
        log.info("Saving new User with email: {}",email);
        userRepository.save(user);
        return true;
    }
    public List<User> list(){
        return userRepository.findAll();
    }

    public void banUser(Long id) {
        User user =userRepository.findById(id).orElse(null);
        if(user != null){
            user.setActive(false);
            log.info("Ban user with id = {}; email: {}",user.getId(),user.getEmail());
        }
        userRepository.save(user);
    }
}
