package platform.persistence;

import java.time.LocalDateTime;

public class Code {
    private String code = "public static void main(String[] args) { SpringApplication.run(CodeSharingPlatform.class, args);}";

    private String currentCode;

    private final LocalDateTime noChangeTime = LocalDateTime.of(2020, 1, 1, 12, 0,3,525842323 );;

    public LocalDateTime getNoChangeTime() {
        return noChangeTime;
    }

    private LocalDateTime loadDate;

/*    public void setCode(String code) {
        this.code = code;
    }*/

    public String getCurrentCode() {
        return currentCode;
    }

    public void setCurrentCode(String currentCode) {
        this.currentCode = currentCode;
    }

    public LocalDateTime getLoadDate() {
        return loadDate;
    }

    public void setLoadDate(LocalDateTime loadDate) {
        this.loadDate = loadDate;
    }

    public String getCode() {
        return code;
    }

}
