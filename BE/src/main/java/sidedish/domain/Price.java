package sidedish.domain;

import org.springframework.data.annotation.Id;

public class Price {

    @Id
    private Long id;

    private int value;

    public Price(Long id, int value) {
        this.id = id;
        this.value = value;
    }

    public Long getId() {
        return id;
    }

    public int getValue() {
        return value;
    }
}
