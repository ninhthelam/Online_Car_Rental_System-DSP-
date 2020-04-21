/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import Models.Credit;
import Models.CFeedback;
import Models.Reservation;
import Models.User;

/**
 *
 * @author ninhthelam
 */
public interface UserDAO {
    public void insertAccount(User user);
    public boolean checkAccountExist(String email);
    public boolean checkLogin(String email, String password);
    public User getUserDetailByID(int id);
    public void insertReservation(Reservation reservation);
    public void insertCredit( Credit credit);
    public void insertFeedback( CFeedback feedback);
    public void updateAccount(User user);
    public void updateAccount(Credit credit);
    public void updateAccount(CFeedback cfeedback);
}
