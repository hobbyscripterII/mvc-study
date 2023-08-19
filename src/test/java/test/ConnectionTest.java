package test;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class ConnectionTest {
	@Inject private DataSource dataSource;
	@Inject private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void connectionTest() throws Exception {
		try(Connection c = dataSource.getConnection()) {
			log.info("dataSource = {}", c);
		} catch(Exception e ) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void mybatisTest() throws Exception {
		try(SqlSession sqlSession = sqlSessionFactory.openSession()) {
			log.info("sqlSession = {}", sqlSession);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}