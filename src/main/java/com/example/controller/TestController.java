package com.example.controller;

//import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.BoardVO;
import com.example.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
//@RequestMapping("/ww/*")
@AllArgsConstructor
public class TestController {
	
	
	@GetMapping("/main") // ww에 대한 목록 조회
    public String listmain() {
        // 여기에 ww 관련 작업 수행
        return "main"; // 해당 뷰 이름 반환 (여기서는 ww라는 뷰 이름을 반환하도록 가정)
    }
    
    @GetMapping("/AES_data") // AES_APT에 대한 목록 조회
    public String listAES_APT() {
        // 여기에 AES_APT 관련 작업 수행
        return "AES_data"; // 해당 뷰 이름 반환 (여기서는 AES_APT라는 뷰 이름을 반환하도록 가정)
    }
    
    @GetMapping("/AES_SCH") // AES_APT에 대한 목록 조회
    public String listAES_SCH() {
        // 여기에 AES_APT 관련 작업 수행
        return "AES_SCH"; // 해당 뷰 이름 반환 (여기서는 AES_APT라는 뷰 이름을 반환하도록 가정)
    }
    
    @GetMapping("/Outlier") // AES_APT에 대한 목록 조회
    public String listOutlier() {
        // 여기에 AES_APT 관련 작업 수행
        return "Outlier"; // 해당 뷰 이름 반환 (여기서는 AES_APT라는 뷰 이름을 반환하도록 가정)
    }
    
    @GetMapping("/Sale_price") // AES_APT에 대한 목록 조회
    public String listSale_price() {
        // 여기에 AES_APT 관련 작업 수행
        return "Sale_price"; // 해당 뷰 이름 반환 (여기서는 AES_APT라는 뷰 이름을 반환하도록 가정)
    }
	
}
