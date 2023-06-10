package platform.persistence;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jdk.jfr.DataAmount;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


@Entity
@Table(name = "snippets")
@JsonIgnoreProperties(value = {"id"})
public class CodeResponse {
    @Column(name = "code", columnDefinition = "VARCHAR(4096)")
    private String currentCode;
    @Column(name = "date")
    private LocalDateTime loadDate;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    private Long id;

    public CodeResponse() {

    }

    public String getCurrentCode() {
        return currentCode;
    }

    public void setCurrentCode(String currentCode) {
        this.currentCode = currentCode;
    }

    public void setLoadDate(LocalDateTime loadDate) {
        this.loadDate = loadDate;
    }

    public String getLoadDate() {
        return loadDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSSS"));
    }

    public CodeResponse(String currentCode, LocalDateTime loadDate) {
        this.currentCode = currentCode;
        this.loadDate = loadDate;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
