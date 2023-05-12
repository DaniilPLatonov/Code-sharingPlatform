package platform.persistence;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class CodeResponse {
    @JsonProperty("code")
    private String currentCode;
    @JsonProperty("date")
    private LocalDateTime loadDate;

    public String getCurrentCode() {
        return currentCode;
    }


    public String getLoadDate() {
        return loadDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSSS"));
    }

    public CodeResponse(String currentCode, LocalDateTime loadDate) {
        this.currentCode = currentCode;
        this.loadDate = loadDate;
    }
}
