CREATE TABLE "Wine_Type" (
    "wine_code" int   NOT NULL,
    "wine_name" character varying   NOT NULL,
    CONSTRAINT "pk_Wine_Type" PRIMARY KEY (
        "wine_code"
     )
);


CREATE TABLE "Wine_Quality" (
    "wine_code" int   NOT NULL,
    "quality" int   NOT NULL,
    "fixed_acidity" numeric   NOT NULL,
    "volatile_acidity" numeric   NOT NULL,
    "citric_acid" numeric   NOT NULL,
    "residual_sugar" numeric   NOT NULL,
    "chlorides" numeric   NOT NULL,
    "free_sulfur_dioxide" numeric   NOT NULL,
    "total_sulfur_dioxide" numeric   NOT NULL,
    "density" numeric   NOT NULL,
    "ph" numeric   NOT NULL,
    "sulphates" numeric   NOT NULL,
    "alcohol" numeric   NOT NULL
);


ALTER TABLE "Wine_Quality" ADD CONSTRAINT "fk_Wine_Quality_wine_type" FOREIGN KEY("wine_code")
REFERENCES "Wine_Type" ("wine_code");