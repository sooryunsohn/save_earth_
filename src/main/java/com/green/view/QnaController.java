package com.green.view;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.biz.dto.MemberVO;
import com.green.biz.dto.QnaVO;
import com.green.biz.qna.QnaService;

@Controller
public class QnaController {

	@Autowired
	QnaService qnaService;
	
	/*
	 * 회원id를 조건으로 모든 Q&A 조회
	 */
	@GetMapping(value="/qna_list")
	public String qnaList(HttpSession session, Model model, QnaVO vo) {
		
		// 회원 로그인 확인
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if(loginUser == null) {
			return "member/login"; // jsp
		} else { 
			
			/*
			String[] qkindList = {"", "상품", "배송", "환불", "기타"}; // 카테고리 배열
			int index = Integer.parseInt(vo.getQkind());
			model.addAttribute("kind", qkindList[index]);
			*/
			
			List<QnaVO> qnaList = qnaService.listQna(loginUser.getId()); // id로 qna목록 가져오기
			model.addAttribute("qnaList", qnaList); // qnaList.jsp의 ${qnaList}
			
			return "qna/qnaList"; // jsp			
		}
	}	
	
	/*
	 * Q&A 폼 불러오기
	 * qna 등록 페이지 표시
	 * 
	 */
	@RequestMapping(value="/qna_write_form")
	public String qnaWriteView(HttpSession session, Model model) {
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if (loginUser == null) {
			return "member/login"; // jsp
		} else {
			
			String[] qkindList = {"상품문의", "배송문의", "환불문의", "기타문의"}; // 카테고리 배열
			
			model.addAttribute("qkindList", qkindList); // 카테고리 저장	 qnaWrite.jsp의 {qkindList}
			
			return "qna/qnaWrite"; // jsp
		}
	}

	/*
	 * Q&A 폼-> 작성완료 (버튼:글등록 클릭시 // 내용저장 및 Q&A리스트로 이동)
	 */
	@PostMapping(value="/qna_write")
	public String qnaWrite(QnaVO vo, HttpSession session) {
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if (loginUser == null) {
			return "member/login"; // jsp
		
		// 사용자id 정보를 QnaVO 객체에 저장	
		// qnaService 객체에서 insertQna(qnaVO, id)를 호출하여 게시글을 저장
		} else {
			vo.setId(loginUser.getId());
				
			qnaService.insertQna(vo);
			
			return "redirect:qna_list"; // 게시글 목록화면(/qna_list) 이동
		}
	}


	/*
	 * qnaList.jsp에서 상세보기
	 * 제목클릭 시 qna내용 상세보기 페이지 
	 */
	@GetMapping(value="/qna_view")
	public String qnaView(QnaVO vo, Model model, HttpSession session) {
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "member/login"; // jsp
			
			// 사용자id 정보를 QnaVO 객체에 저장	
			// qnaService 객체에서 insertQna(qnaVO, id)를 호출하여 게시글을 저장
			} else {
				vo.setId(loginUser.getId());	

		String[] qkindList = {"", "상품", "배송", "환불", "기타"}; // 카테고리 배열

		QnaVO qna = qnaService.getQna(vo);
		
		model.addAttribute("qnaVO", qna);
			
		// 카테고리
		int index = Integer.parseInt(qna.getQkind());
		model.addAttribute("qkind", qkindList[index]);
		
		return "qna/qnaView"; // jsp	
	   }
	}
	/*
	 * qna 수정화면 폼 출력
	 * 화면에서 클릭한 qseq를 vo로 가져와서 조회
	 * qnaView.jsp에서 버튼 틀릭시 qna udpate으로 전달
	 * qna_update_form
	 */
	@PostMapping(value="/qna_update_form")
	public String qnaUpdateform(QnaVO vo, Model model, HttpSession session) {
		
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "member/login"; // jsp	
			
			} else {
				vo.setId(loginUser.getId());
									
				// if (vo.getContent()==null) { // 답변이 달려있지 않을경우
				
				String[] qkindList = {"상품문의", "배송문의", "환불문의", "기타문의"}; // 카테고리 배열		
				
				QnaVO qna = qnaService.getQna(vo); // qseq로 qna가져오기
				
				model.addAttribute("qnaVO", qna);
				model.addAttribute("qkindList", qkindList); // 카테고리 저장	 

					
				return "qna/qnaUpdate"; // 수정으로 전달, qnaUpdate.jsp
					
		}		
	}
	
	/*
	 * qna 수정화면에서 내용 update진행
	 * qna_update 수행
	 */
	@PostMapping(value="/qna_update")
	public String updateQnabyQseq(QnaVO vo, Model model, HttpSession session) {
		
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "member/login"; // jsp	
			
			} else {
				vo.setId(loginUser.getId());
			
				/*
				if(Integer.parseInt(vo.getRep()) == 2) {
					return "qna/qna_list";
				} else {
				*/	

					qnaService.updateQnabyQseq(vo);
					
					return "redirect:qna_list"; //jsp	
				}
		}	
	}