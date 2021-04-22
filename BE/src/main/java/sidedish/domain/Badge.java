package sidedish.domain;

import org.springframework.data.annotation.Id;

public class Badge {

    @Id
    private Long id;

    private String value;

    public Badge(Long id, String value) {
        this.id = id;
        this.value = value;
    }

    public Long getId() {
        return id;
    }

    public String getValue() {
        return value;
    }
}
