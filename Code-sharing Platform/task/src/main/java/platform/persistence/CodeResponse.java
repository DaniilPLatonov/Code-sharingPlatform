package platform.persistence;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.time.LocalDateTime;

public class CodeResponse {
    @JsonProperty("code")
    private String currentCode;
    @JsonProperty("date")
    private LocalDateTime loadDate;


    public CodeResponse(String currentCode, LocalDateTime loadDate) {
        this.currentCode = currentCode;
        this.loadDate = loadDate;
    }

/*    @Override
    public String toString() {
        return "\"code\": \"" + currentCode + "\",\n" +
                "\"date\": \"" + loadDate + "\"";
    }*/
}
