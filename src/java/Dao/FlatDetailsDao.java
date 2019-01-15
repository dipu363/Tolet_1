/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Entity.Flatdetails;
import Util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author HP
 */
public class FlatDetailsDao {
    
    public List<Flatdetails> getAllflat(){
        SessionFactory sf= HibernateUtil.getSessionFactory();
        Session se = sf.openSession();
        se.beginTransaction();
        Query q = se.createQuery("from Flatdetails");
        List <Flatdetails> flatquery= q.list();
        se.getTransaction().commit();
        se.close();
    
    return flatquery;
    
    }

    public Flatdetails addFlat(Flatdetails flat) {

        flat.setName(flat.getName());
          flat.setName(flat.getName());
        flat.setLocation(flat.getLocation());
        flat.setAddress(flat.getAddress());
        flat.setContact(flat.getContact());
        flat.setFloorNo(flat.getFloorNo());
        flat.setFlatSize(flat.getFlatSize());
        flat.setBadRoom(flat.getBadRoom());
        flat.setBathroom(flat.getBathroom());
        flat.setDrowingroom(flat.getDrowingroom());
        flat.setDiningroom(flat.getDiningroom());
        flat.setBalcony(flat.getBalcony());
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session se = sf.openSession();
        se.beginTransaction();
        se.save(flat);
        se.getTransaction().commit();
        se.close();

        return flat;
    }
        public Flatdetails updatFlat(Flatdetails flat) {
         if (flat.getId() <= 0) {
            return null;
        }

        flat.setName(flat.getName());
        flat.setLocation(flat.getLocation());
        flat.setAddress(flat.getAddress());
        flat.setContact(flat.getContact());
        flat.setFloorNo(flat.getFloorNo());
        flat.setFlatSize(flat.getFlatSize());
        flat.setBadRoom(flat.getBadRoom());
        flat.setBathroom(flat.getBathroom());
        flat.setDrowingroom(flat.getDrowingroom());
        flat.setDiningroom(flat.getDiningroom());
        flat.setBalcony(flat.getBalcony());
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session se = sf.openSession();
        se.beginTransaction();
        se.save(flat);
        se.getTransaction().commit();
        se.close();

        return flat;
    }
         public void deleteFlat(String name) {
        
        SessionFactory sf=HibernateUtil.getSessionFactory();
        Session s=sf.openSession();
        s.beginTransaction();
        Query q=s.createQuery("delete from Flatdetails where name=?");
        q.setParameter(0,name);
        q.executeUpdate();
        s.getTransaction().commit();
        s.close();
        
    } 

}
