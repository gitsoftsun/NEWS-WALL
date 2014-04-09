package weibo.service;

import java.util.List;

import weibo4j.model.Status;
import weibo4j.org.json.JSONArray;

public interface NewsService {
	public final static String ACCESS_TOKEN="2.00qiER_C5sYHsC341512d4b7JQCjMC";  
	/**
	 * 时政
	 * @return JSON
	 */
	public JSONArray obtainCurrentPolities();
	/**
	 * 体育
	 * @return JSON
	 */
	public JSONArray obtainCurrentSports();
	/**
	 * 热门微博
	 * @return JSON
	 */
	public List<Status> obtainHeadLine();
}
