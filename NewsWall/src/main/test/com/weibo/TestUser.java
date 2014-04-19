package com.weibo;

import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;

import weibo4j.Search;
import weibo4j.Suggestion;
import weibo4j.Tags;
import weibo4j.Timeline;
import weibo4j.Trend;
import weibo4j.Users;
import weibo4j.model.Status;
import weibo4j.model.StatusWapper;
import weibo4j.model.Trends;
import weibo4j.model.User;
import weibo4j.model.WeiboException;

public class TestUser {
	private String access_token ="2.00qiER_C5sYHsC341512d4b7JQCjMC";
	Logger log = Logger.getLogger(TestUser.class);
	@Test
	public void getUserId() throws WeiboException{
		String screenName = "Tinkpt卍innerpeace胡渣渣一枚";
		Users users = new Users();
		users.client.setToken(access_token);
		User person = users.showUserByScreenName(screenName);
		log.info("person.toString() :"+person.toString());
	}
	@Test
	public void showStatus() throws WeiboException{
		String screenName = "Tinkpt卍innerpeace胡渣渣一枚";
		Users users = new Users();
		users.client.setToken(access_token);
		User person = users.showUserByScreenName(screenName);
		Timeline timeline = new Timeline();
		timeline.client.setToken(access_token);
		StatusWapper statusWapper =timeline.getUserTimelineByUid(person.getId());
		log.info(statusWapper.getTotalNumber());
		for(Status status:statusWapper.getStatuses()){
			log.info(status.toString());
		}
	}
	@Test
	public void showHot() throws WeiboException{
		Timeline timeline = new Timeline();
		timeline.client.setToken(access_token);
		StatusWapper sw = timeline.getFriendsTimeline();
		log.info(sw.getStatuses().toString());
	}
	@Test
	public void testSearch() throws WeiboException{
		Search search = new Search();
		search.client.setToken(access_token);
		Suggestion suggestion = new Suggestion();
		suggestion.client.setToken(access_token);
		
		log.info(suggestion.suggestionsUsersHot("sports"));
	}
	@Test
	public void testTrend() throws WeiboException{
		Trend trend = new Trend();
		trend.client.setToken(access_token);
//		log.info(trend.getTrendsDaily());
//		log.info(trend.getTrendsHourly());
		trend.getTrendsHourly(0);
		for(weibo4j.model.Trends t : trend.getTrendsHourly(0)){
			log.info(t.toString());
		}
	}
	@Test
	public void tetsTag() throws WeiboException{
		Tags tags = new Tags();
		tags.client.setToken(access_token);
		log.info(tags.getTagsSuggestions());
		
	}
}
