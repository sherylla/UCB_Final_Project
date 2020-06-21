-- Add wine type column with default 0 for red wine
ALTER TABLE "Red_Wine_Quality"
  ADD COLUMN "wine type" int NOT NULL DEFAULT 0;

-- Add wine type column with default 1 for white wine 
ALTER TABLE "White_Wine_Quality"
  ADD COLUMN "wine type" int NOT NULL DEFAULT 1;
  
ALTER TABLE "Red_Wine_Quality" ADD CONSTRAINT "fk_Wine_Quality_wine_type" FOREIGN KEY("wine type")
REFERENCES "Wine_Type" ("wine type");

ALTER TABLE "White_Wine_Quality" ADD CONSTRAINT "fk_Wine_Quality_wine_type" FOREIGN KEY("wine type")
REFERENCES "Wine_Type" ("wine type");
