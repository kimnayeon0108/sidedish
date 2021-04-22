package sidedish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;

import java.util.Collections;
import java.util.List;

public class Dish {

    @Id
    private Long id;

    private String name;
    private String topImage;
    private String description;

    @MappedCollection(idColumn = "DISH", keyColumn = "DISH_KEY")
    private List<Price> prices;

    @MappedCollection(idColumn = "DISH", keyColumn = "DISH_KEY")
    private List<Badge> badges;

    private Long stock;
    private Integer point;
    private String deliveryInfo;

    @MappedCollection(idColumn = "DISH", keyColumn = "DISH_KEY")
    private List<ThumbImage> thumbImages;

    @MappedCollection(idColumn = "DISH", keyColumn = "DISH_KEY")
    private List<DetailImage> detailImages;

    public Dish(Long id, String name, String topImage, String description, List<Price> prices, List<Badge> badges,
                Long stock, Integer point, String deliveryInfo, List<ThumbImage> thumbImages, List<DetailImage> detailImages) {
        this.id = id;
        this.name = name;
        this.topImage = topImage;
        this.description = description;
        this.prices = prices;
        this.badges = badges;
        this.stock = stock;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.thumbImages = thumbImages;
        this.detailImages = detailImages;
    }

    private Integer createPoint(List<Integer> prices) {
        return Collections.min(prices) / 100;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getTopImage() {
        return topImage;
    }

    public String getDescription() {
        return description;
    }

    public List<Price> getPrices() {
        return prices;
    }

    public List<Badge> getBadges() {
        return badges;
    }

    public Long getStock() {
        return stock;
    }

    public Integer getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public List<ThumbImage> getThumbImages() {
        return thumbImages;
    }

    public List<DetailImage> getDetailImages() {
        return detailImages;
    }
}
