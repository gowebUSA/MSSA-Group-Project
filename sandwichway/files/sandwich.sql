Create Database Sandwich

CREATE TABLE "customer" (
"id"  VARCHAR  NOT NULL ,
"name" VARCHAR(60) ,
"address" VARCHAR(60) ,
"phone" VARCHAR(14) ,
PRIMARY KEY ("id")
);

CREATE TABLE "credit_card" (
"id"  VARCHAR ,
"name" VARCHAR(60) ,
"number" VARCHAR(20) ,
"expiration" DATE ,
PRIMARY KEY ("id"),
UNIQUE ("name", "number")
);

CREATE TABLE "customer_credit_card" (
"customer_id"  INTEGER ,
"credit_card_id" INTEGER
);

CREATE TABLE "customer_order" (
"id"  VARCHAR ,
"customer_id" INTEGER ,
"credit_card_id" INTEGER ,
"total_price" MONEY ,
PRIMARY KEY ("id")
);

CREATE TABLE "customer_order_preference" (
"customer_id"  INTEGER ,
"customer_order_id" INTEGER
);

CREATE TABLE "drinks" (
"name"  VARCHAR(20) ,
"price" MONEY ,
PRIMARY KEY ("name")
);

CREATE TABLE "Sandwish" (
"id"  VARCHAR ,
"bread" VARCHAR(20) ,
"topping_1" VARCHAR(20) ,
"topping_2" VARCHAR(20) ,
PRIMARY KEY ("id")
);

CREATE TABLE "customer_sandwish" (
"customer_order_id"  INTEGER ,
"pizza_id" INTEGER
);

CREATE TABLE "toppings" (
"name"  VARCHAR(20) ,
PRIMARY KEY ("name")
);

CREATE TABLE "customer_drinks" (
"customer_order_id"  VARCHAR ,
"drink" VARCHAR(20)
);

CREATE TABLE "bread" (
"name"  VARCHAR(20) ,
"price" MONEY ,
PRIMARY KEY ("name")
);


INSERT INTO "toppings" ( "name" ) VALUES ( 'cheese' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'sausage' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'ham' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'bacon' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'beef' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'chicken' );

INSERT INTO "toppings" ( "name" ) VALUES ( 'mushroom' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'olive' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'peppers' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'onions' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'pickles' );
INSERT INTO "toppings" ( "name" ) VALUES ( 'jalapenos' );

INSERT INTO "bread" ( "name", "price" ) VALUES ( 'Grain Wheat Bread', 12 );
INSERT INTO "bread" ( "name", "price" ) VALUES ( 'Malted Rye', 12 );
INSERT INTO "bread" ( "name", "price" ) VALUES ( 'White Bread', 12 );
INSERT INTO "bread" ( "name", "price" ) VALUES ( 'Italian Herb', 12 );

INSERT INTO "drinks" ( "name", "price" ) VALUES ( 'coke', 2 );
INSERT INTO "drinks" ( "name", "price" ) VALUES ( 'diet-coke', 2 );
INSERT INTO "drinks" ( "name", "price" ) VALUES ( 'red-balls', 4 );
INSERT INTO "drinks" ( "name", "price" ) VALUES ( 'liquid-Schwartz', 20 );
INSERT INTO "drinks" ( "name", "price" ) VALUES ( 'cad-water', 25 );

