USE
SIDEDISH;
DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS DISH;
DROP TABLE IF EXISTS PRICES;
DROP TABLE IF EXISTS BADGES;
DROP TABLE IF EXISTS THUMB_IMAGES;
DROP TABLE IF EXISTS DETAIL_IMAGES;


CREATE TABLE CATEGORY
(
    ID            bigint(20) auto_increment primary key,
    CATEGORY_TYPE varchar(100)
);

CREATE TABLE DISH
(
    ID            bigint(20) auto_increment primary key,
    NAME          varchar(50),
    DESCRIPTION   varchar(100),
    STOCK         bigint(20),
    POINT         int,
    DELIVERY_INFO varchar(100),
    CATEGORY      bigint(20) references CATEGORY (id),
    TOP_IMAGE     varchar(100)
);

CREATE TABLE PRICE
(
    ID    bigint(20) auto_increment primary key,
    VALUE int,
    DISH  bigint(20) references DISH (id),
    DISH_KEY int
);

CREATE TABLE BADGE
(
    ID    bigint(20) auto_increment primary key,
    VALUE varchar(100),
    DISH  bigint(20) references DISH (id),
    DISH_KEY int
);

CREATE TABLE THUMB_IMAGE
(
    ID          bigint(20) auto_increment primary key,
    VALUE varchar(100),
    DISH        bigint(20) references DISH (id),
    DISH_KEY int
);

CREATE TABLE DETAIL_IMAGE
(
    ID          bigint(20) auto_increment primary key,
    VALUE varchar(100),
    DISH        bigint(20) references DISH (id),
    DISH_KEY int
);

insert into category (category_type) values ("main");
insert into category (category_type) values ("soup");
insert into category (category_type) values ("sidedish");

insert into price (value, dish, dish_key) values (5000, 1, 1);
insert into price (value, dish, dish_key) values (4500, 1, 1);

insert into badge (value, dish, dish_key) values ("이벤트특가", 1, 1);

insert into THUMB_IMAGE (value, dish, dish_key) values ("썸네일1", 1, 1);
insert into THUMB_IMAGE (value, dish, dish_key) values ("썸네일2", 1, 1);

insert into DETAIL_IMAGE (value, dish, dish_key) values ("상세설명1", 1, 1);
insert into DETAIL_IMAGE (value, dish, dish_key) values ("상세설명2", 1, 1);

insert into dish (name, description, stock, point, delivery_info, category, top_image)
values ("규동", "맛있는 규동", 10, 10, "월,화,수", 1, "top이미지");
