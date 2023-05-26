package platform.controllers;

import java.time.LocalDateTime;
import java.util.*;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import platform.persistence.CodeResponse;


@Controller
public class FirstController {
    private Integer id = 0;

    HashMap<Integer, CodeResponse> codeHashMap = new HashMap<>();

    @PostMapping(value = "/api/code/new", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ResponseEntity<String> setCode(@RequestBody Map<String, String> requestBody) {
        id++;
        codeHashMap.put(id, new CodeResponse(requestBody.get("code"), LocalDateTime.now()));
        return ResponseEntity.ok("{ \"id\" : \"" + id + "\" } ");
    }


    @GetMapping("/code/{id}")
    public String getCodeHtml(Model model, @PathVariable("id") int id) {
        CodeResponse response1 = codeHashMap.get(id);
        model.addAttribute("codeSnippet", response1.getCurrentCode());
        model.addAttribute("loadDate", response1.getLoadDate());
        return "code2";
    }

    @GetMapping("/code/new")
    public String createCodeHtml() {
        return "create";
    }


    @GetMapping(value = "api/code/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public CodeResponse show(@PathVariable("id") int id) {
        return codeHashMap.get(id);
    }


    public CodeResponse[] arrayCode() {
        CodeResponse[] values = codeHashMap.values().toArray(new CodeResponse[0]);
        int arraySize = Math.min(values.length, 10);
        CodeResponse[] reversedValues = new CodeResponse[arraySize];
        for (int i = values.length - 1, j = 0; i >= Math.max(values.length - 10, 0); i--, j++) {
            reversedValues[j] = values[i];
        }
        return reversedValues;
    }


    @GetMapping("/code/latest")
    public String getCodeHtml3(Model model) {

        List<CodeResponse> responseList = new ArrayList<>(Arrays.asList(arrayCode()));
        model.addAttribute("code", responseList);
        return "latest";
    }


    @GetMapping(value = "api/code/latest", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public CodeResponse[] getCodeHtml4() {
        return arrayCode();
    }


}
