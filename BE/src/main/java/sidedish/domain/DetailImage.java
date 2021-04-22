package sidedish.domain;

import org.springframework.data.annotation.Id;

public class DetailImage {

    @Id
    private Long id;

    private String value;

    public DetailImage(Long id, String value) {
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
