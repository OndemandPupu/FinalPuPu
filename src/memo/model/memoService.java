package memo.model;

import java.rmi.Remote;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class memoService {
  @Autowired
  
  SqlSessionFactory fac;
  public String memoExcute(HttpServletRequest req ,String id,  String memo){
	  String ip = req.getRemoteAddr();
	  HashMap map = new HashMap();
	  map.put("ip",ip);
	  map.put("writer", id);
	  map.put("memo", memo);
	  SqlSession sql = fac.openSession();
		sql.insert("memo.addOne", map);
		sql.close();
		return ip;
  }
	
}
