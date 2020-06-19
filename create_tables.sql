-- Create Wine Type Table
CREATE TABLE "Wine_Type" (
    "wine type" int   NOT NULL,
    "wine name" varchar   NOT NULL,
    CONSTRAINT "pk_Wine_Type" PRIMARY KEY (
        "wine type"
     )
);

-- Create Red Wine Table
CREATE TABLE "Red_Wine_Quality" (
    "fixed acidity" float NOT NULL,
    "volatile acidity" float NOT NULL,
    "citric acid" float NOT NULL,
    "residual sugar" float NOT NULL,
    "chlorides" float NOT NULL,
    "free sulfur dioxide" float NOT NULL,
    "total sulfur_dioxide" float NOT NULL,
    "density" float NOT NULL,
    "pH" float NOT NULL,
    "sulphates" float NOT NULL,
    "alcohol" float NOT NULL,
  "quality" int NOT NULL
);

-- Create White wine table
CREATE TABLE "White_Wine_Quality" (
    "fixed acidity" float   NOT NULL,
    "volatile acidity" float   NOT NULL,
    "citric acid" float   NOT NULL,
    "residual sugar" float   NOT NULL,
    "chlorides" float   NOT NULL,
    "free sulfur dioxide" float   NOT NULL,
    "total sulfur_dioxide" float   NOT NULL,
    "density" float   NOT NULL,
    "pH" float   NOT NULL,
    "sulphates" float   NOT NULL,
    "alcohol" float   NOT NULL,
  "quality" int   NOT NULL
);
