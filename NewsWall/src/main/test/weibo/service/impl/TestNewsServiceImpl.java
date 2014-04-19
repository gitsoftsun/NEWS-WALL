package weibo.service.impl;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import weibo4j.model.Status;
import weibo4j.model.WeiboException;
import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

public class TestNewsServiceImpl {

	private NewsServiceImpl newsServiceImpl;

	@Before
	public void before() {
		newsServiceImpl = new NewsServiceImpl();
	}

	@Test
	public void testHeadline() {
		Assert.assertNotNull(newsServiceImpl.obtainHeadLine());
	}

	@Test
	public void testSports() {
		JSONArray jsons = newsServiceImpl.obtainCurrentSports();
		if (jsons.equals(null)) {
			try {
				throw new Exception();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		for (int i = 0; i < jsons.length(); i++) {
			JSONObject json = null;
			JSONObject newjson = null;
			Status status = null;
			try {
				json = (JSONObject) jsons.get(i);
				newjson = (JSONObject) json.get("status");
				status = new Status(newjson);
				System.out.println(status.getText().toString()+", "+status.getCreatedAt());
			} catch (JSONException e) {
				e.printStackTrace();
			} catch (WeiboException e) {
				e.printStackTrace();
			}
//			System.out.println("json : " + json.toString());
			
		}
	}

}
