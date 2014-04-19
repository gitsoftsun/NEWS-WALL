package com.weibo;

import weibo4j.Account;
import weibo4j.Timeline;
import weibo4j.Users;
import weibo4j.model.Status;
import weibo4j.model.StatusWapper;
import weibo4j.model.User;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

public class TestShow {
	public static void main(String[] args) throws WeiboException, JSONException, JSONException {
		String access_token ="2.00qiER_C5sYHsC341512d4b7JQCjMC";
		String id = "1885926927";
		Account account = new Account();
		
		Timeline tm = new Timeline();
		tm.client.setToken(access_token);
		account.client.setToken(access_token);
		System.out.println("account.getUid : "+account.getUid());
		JSONObject jObject = account.getUid();
		System.out.println("jObject.getString ="+jObject.getString("uid"));
		String myId = jObject.getString("uid");
		System.out.println("my id : "+myId);
		Users users = new Users();
		users.client.setToken(access_token);
		User user = users.showUserByScreenName("木子斋");
		System.out.println("li id : "+user.getId());
		try {
//			Status status = tm.showStatus(myId);
			StatusWapper sWapper = tm.getUserTimelineByUid(user.getId());
			for(Status status: sWapper.getStatuses()){
				System.out.println(status.getId());
			}

		} catch (WeiboException e) {
			e.printStackTrace();
		}
	}
}
