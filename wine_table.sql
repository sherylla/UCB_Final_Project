-- Create Tables

-- Create Wine Type Table
CREATE TABLE "Wine_Type" (
    "wine type" int   NOT NULL,
    "wine name" varchar   NOT NULL,
    CONSTRAINT "pk_Wine_Type" PRIMARY KEY (
        "wine type"
     )
);


CREATE TABLE "Red_Wine_Quality" (
    "fixed_acidity" float   NOT NULL,
    "volatile_acidity" float   NOT NULL,
    "citric_acid" float   NOT NULL,
    "residual_sugar" float   NOT NULL,
    "chlorides" float   NOT NULL,
    "free_sulfur_dioxide" float   NOT NULL,
    "total_sulfur_dioxide" float   NOT NULL,
    "density" float   NOT NULL,
    "pH" float   NOT NULL,
    "sulphates" float   NOT NULL,
    "alcohol" float   NOT NULL,
  "quality" int   NOT NULL
);
CREATE TABLE "White_Wine_Quality" (
    "fixed_acidity" float   NOT NULL,
    "volatile_acidity" float   NOT NULL,
    "citric_acid" float   NOT NULL,
    "residual_sugar" float   NOT NULL,
    "chlorides" float   NOT NULL,
    "free_sulfur_dioxide" float   NOT NULL,
    "total_sulfur_dioxide" float   NOT NULL,
    "density" float   NOT NULL,
    "pH" float   NOT NULL,
    "sulphates" float   NOT NULL,
    "alcohol" float   NOT NULL,
  "quality" int   NOT NULL
);
