package kurly.ex02;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HelpService {
	HelpDAO helpDAO;
	public HelpService() {
	helpDAO = new HelpDAO();//생성자에서 BoardDAO객체를 생성
	}
	
	public Map listHelp(Map<String,Integer> pagingMap) {
		Map helpMap=new HashMap();
		List<HelpVO> helpList = helpDAO.selectAllArticles(pagingMap);
		int totHelp = helpDAO.selectToHelp();
		System.out.println(totHelp);
		helpMap.put("helpList", helpList);
		helpMap.put("totHelp", totHelp);
		//articleMap.put("totArticles", 150);
		return helpMap;
	}
	
	public int addHelp(HelpVO help) {
		return helpDAO.insertNewArticle(help);
	}
	
	public HelpVO viewHelp(int helpnum) {
			HelpVO help =null;
			help = helpDAO.selectHelp(helpnum);
			return help;
	}
	public void modHelp(HelpVO help) {
		helpDAO.updateHelp(help);
	}
	
	public List<Integer> removeHelp(int helpnum){ 
	List<Integer>helpnumList = helpDAO.selectRemoveHelp(helpnum);
	helpDAO.deleteHelpnum(helpnum);
	return helpnumList; 
	}
	

}
