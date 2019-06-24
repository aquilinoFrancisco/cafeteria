package com.cafe.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cafe.data.Productos;

@Repository
public class ProductoDaoImpl implements ProductoDao {
	// SON FIJOS
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Productos> getAllProductos() {
		Session session = sessionFactory.openSession();
		List<Productos> list;
		try {

			list = session.createQuery("from Productos", Productos.class).getResultList();
		} catch (HibernateException e) {
			e.printStackTrace();
			throw e;
		}
		return list;
	}

	// SON FIJOS
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	// SON FIJOS
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@Transactional
	public void save(Productos producto) {
		try {
			Session session = sessionFactory.openSession();
			Transaction transact = session.beginTransaction();
			try {
				session.save(producto);
				transact.commit();
			} catch (HibernateException e) {
				transact.rollback();
				throw e;
			} finally {
				session.close();
			}
		} catch (RuntimeException re) {
			throw re;
		}
	}

	@Override
	public void update(Productos producto) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.openSession();
			Transaction transact = session.beginTransaction();
			try {
				session.merge(producto);
				transact.commit();
			} catch (HibernateException e) {
				transact.rollback();
				throw e;
			} finally {
				session.close();
			}
		} catch (RuntimeException re) {
			throw re;
		}
	}

	@Override
	public void delete(Productos producto) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.openSession();
			Transaction transact = session.beginTransaction();
			try {
				session.delete(producto);
				transact.commit();
			} catch (HibernateException e) {
				transact.rollback();
				throw e;
			} finally {
				session.close();
			}
		} catch (RuntimeException re) {
			throw re;
		}
	}

	@Override
	public Productos get(int n) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Productos unProducto;
		try {
			unProducto = (Productos) session.get(Productos.class, n);
		} catch (HibernateException e) {
			e.printStackTrace();
			throw e;
		}
		return unProducto;
	}

}
