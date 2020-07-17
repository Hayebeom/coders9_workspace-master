package v1.coders9.utils;

import java.util.Properties;

/**
 * 3. 효율적인 쿼리문 활용을 위한 Util 작성
 * @author HYB
 *
 */

public class QueryUtil {
	// query.properties에 정의된 내용을 key,value의 쌍으로 보관하는 객체
	private static Properties prop = new Properties();
	
	static {
		try {
			prop.load(Class.forName("v1.coders9.utils.QueryUtil").getResourceAsStream("query.properties"));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 지정된 이름의 쿼리문을 반환
	 * @param name 	query.properties에 정의된 SQL의 이름
	 * @return 		SQL 구문, 유효한 이름이 아닌 경우 null이 반환됨
	 */
	public static String getSQL(String name) {
		return prop.getProperty(name);
	}
	
	
}
