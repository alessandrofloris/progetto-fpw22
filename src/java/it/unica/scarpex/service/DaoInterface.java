package it.unica.scarpex.service;

import java.util.List;

public interface DaoInterface <T> {
    
    List<T> findAll();
    T findById(String id);
    List<T> findByName();
    <T> boolean insert(T el);
    <T> boolean update(T el);
    <T> boolean delete(T el);
    
}
