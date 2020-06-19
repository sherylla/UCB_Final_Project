-- join tables
SELECT "fixed acidity","volatile acidity", "citric acid", "residual sugar", "chlorides", "free sulfur dioxide","total sulfur_dioxide","density","pH","sulphates","alcohol","quality","wine type" INTO "Joined_Tables" FROM
  ( SELECT * FROM "Red_Wine_Quality" ) as table1
NATURAL FULL OUTER JOIN
  ( SELECT * FROM "White_Wine_Quality" ) as table2
