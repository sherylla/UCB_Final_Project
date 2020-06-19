-- join tables
SELECT "fixed acidity","volatile acidity","citric acid","residual sugar","chlorides","free sulfur dioxide","total sulfur_dioxide	
","total sulfur_dioxide","density","pH","sulphates","alcohol","quality","wine type" INTO "Joined_Tables"
FROM "Red_Wine_Quality"
FULL OUTER JOIN "White_Wine_Quality"
ON "Red_Wine_Quality"."wine type"="White_Wine_Quality"."wine type"
