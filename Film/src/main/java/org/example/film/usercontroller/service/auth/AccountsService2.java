//package org.example.film.usercontroller.service.auth;
//
//import org.example.film.configurations.securities.CustomUserDetails;
//import org.example.film.models.entities.Account;
//import org.example.film.repositories.IAccountRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.List;
//import java.util.Optional;
//
//@Service
//@Transactional
//public class AccountsService2 implements IAccountsService2 {
//    @Autowired
//    private IAccountRepository iAccountRepository;
//    @Autowired
//    private PasswordEncoder passwordEncoder;
//
//    //Do chua tao trang Dang Ki nen ta them CSDL thu cong
//    //Cho no chay 1 lan roi cmt lai khong tu dong no tao ra nhieu
////    @PostConstruct
////    public void insertAccount(){
////        Role role = new Role();
////        role.setName("ROLE_USER");
////        Collection<Role> roles = new ArrayList<>();
////        roles.add(role);
////
////        Account account = new Account();
////        account.setUserName("user");
////        account.setGender(false);
////        account.setLevel(1);
////        account.setEmail("vudu1501@gmail.com");
////        account.setPassword("$2a$12$zAUWiY6oJQjayUysRdMG5.9tKrvZ0i38sZygGk2QYEX1qf47lM7k2");
////        account.setActive(true);
////        account.setRoles(roles);
////
////        iAccountsRepository.save(account);
////    }
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        var accountByEmail = iAccountRepository.findByEmail(username);
//        if(accountByEmail.isPresent()){
//            return new CustomUserDetails(accountByEmail.get());
//        }
//        var accountById = iAccountRepository.findById(username);
//        if(accountById.isPresent()){
//            return new CustomUserDetails(accountById.get());
//        }
//        throw new UsernameNotFoundException("Account not found");
//    }
//
//    @Transactional
//    @Override
//    public UserDetails updatePassword(UserDetails user, String newPassword) {
//        var account = iAccountRepository.findByEmail(user.getUsername());
//        if(account.isEmpty()){
//            throw new UsernameNotFoundException("Account not found.");
//        }
//        account.get().setPassword(passwordEncoder.encode(newPassword));
//        iAccountRepository.save(account.get());
//        return new CustomUserDetails(account.get());
//    }
//
//    @Override
//    public List<Account> getListAccounts() {
//        return iAccountRepository.findAll();
//    }
//
//    @Override
//    public Optional<Account> getAccountById(String id) {
//        return iAccountRepository.findById(id);
//    }
//}
