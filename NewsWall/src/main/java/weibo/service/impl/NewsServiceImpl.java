package weibo.service.impl;

import java.util.List;

import org.apache.log4j.Logger;

import weibo.service.NewsService;
import weibo4j.Suggestion;
import weibo4j.Timeline;
import weibo4j.model.Status;
import weibo4j.model.StatusWapper;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONArray;

public class NewsServiceImpl implements NewsService {
	Logger log = Logger.getLogger(NewsServiceImpl.class);
	public JSONArray obtainCurrentPolities() {
		
		Suggestion suggestion = new Suggestion();
		suggestion.client.setToken(ACCESS_TOKEN);
		JSONArray jsons = null;
		try {
			jsons = suggestion.suggestionsUsersHot("govern");
		} catch (WeiboException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsons;
	}

	public JSONArray obtainCurrentSports() {
		Suggestion suggestion = new Suggestion();
		suggestion.client.setToken(ACCESS_TOKEN);
		JSONArray jsons = null;
		try {
			jsons = suggestion.suggestionsUsersHot("sports");
		} catch (WeiboException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsons;
	}

	public List<Status> obtainHeadLine() {
		Timeline timeline = new Timeline();
		timeline.client.setToken(ACCESS_TOKEN);
		StatusWapper statusWapper = null;
		StringBuffer sb = new StringBuffer();
		try {
			statusWapper = timeline.getPublicTimeline();
			List<Status> statusList = statusWapper.getStatuses();
//			sb.append("[");
//			for(int i =0; i<statusList.size(); i++){
//				Status status = statusList.get(i);
//				JSONObject json = new JSONObject(status, false);
//				sb.append(json);
////				sb.append("\\n");
//				if(i != (statusList.size()-1)){
//					sb.append(",");
//				}
//			}
//			sb.append("]");
//			log.info("the number of news:"+statusWapper.getTotalNumber());
//			log.info(statusWapper.getStatuses().toString());
//			log.info(sb.toString());
		} catch (WeiboException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return statusWapper.getStatuses();
	}

}
