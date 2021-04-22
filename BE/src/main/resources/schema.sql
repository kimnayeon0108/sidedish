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
