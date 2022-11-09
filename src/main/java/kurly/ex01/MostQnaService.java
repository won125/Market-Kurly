package kurly.ex01;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

public class MostQnaService {
	MostQnaDAO mostQnaDAO;
	public MostQnaService() {
	mostQnaDAO = new MostQnaDAO();//생성자에서 BoardDAO객체를 생성
	}
	
	public Map listMostQna(Map<String,Integer> pagingMap) {
		Map mostQnaMap=new HashMap();
		List<MostQnaVO> mostQnaList = mostQnaDAO.selectAllMostQna(pagingMap);
		int totMostQna = mostQnaDAO.selectToMostQna();
		mostQnaMap.put("mostQnaList", mostQnaList);
		mostQnaMap.put("totMostQna", totMostQna);
		//articleMap.put("totArticles", 150);
		return mostQnaMap;
	}
	
	public List<MostQnaVO> listMostQna(){
		List<MostQnaVO> mostQnaList = mostQnaDAO.selectAllMostQna();
		return mostQnaList;
	}
	
}
