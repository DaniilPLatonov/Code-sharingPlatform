package platform.businessPlayer.controllers;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import platform.persistence.Code;
import platform.persistence.CodeResponse;


@Controller
public class FirstController {


    private Code code = new Code();

    private  Integer id = 0;

    HashMap <Integer, Code> codeHashMap = new HashMap<>();

    CodeResponse response;

    @GetMapping(value = "/api/code", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ResponseEntity<CodeResponse> getCode() {

        if (code.getCurrentCode() == null || code.getLoadDate() == null) {
            response = new CodeResponse(code.getCode(), code.getNoChangeTime());
        } else {
            response = new CodeResponse(code.getCurrentCode(), code.getLoadDate());
        }
        return new ResponseEntity<>(response, HttpStatus.OK);
    }


    @PostMapping(value = "/api/code/new", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ResponseEntity<String> setCode(@RequestBody Map<String, String> requestBody) {
        String newCode = requestBody.get("code");
        code.setCurrentCode(newCode);
        code.setLoadDate(LocalDateTime.now());
        response = new CodeResponse(code.getCurrentCode(), code.getLoadDate());
        return ResponseEntity.ok("{}");
    }


    @GetMapping("/code")
    public String getCodeHtml(Model model) {
        if (code.getCurrentCode() == null || code.getLoadDate() == null) {
            model.addAttribute("codeSnippet", code.getCode());
            model.addAttribute("loadDate", code.getNoChangeTime());
        } else {
            model.addAttribute("codeSnippet", code.getCurrentCode());
            model.addAttribute("loadDate", code.getLoadDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSSS")));
        }
        return "code2";
    }


    @GetMapping("/code/new")
    public String createCodeHtml() {
        return "create";
    }


    @GetMapping(value =  "api/code/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String show(@PathVariable("id") int id, Model model) {

    }
}
