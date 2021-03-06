# *"Life is too short to drink bad wine."*
### *-Anonymous*
          
      
 
 For our final project, we are going to analyze two datasets are related to red and white variants of the Portuguese "Vinho Verde" wine.
 
 Vinho Verde is a region in northern Portugal. It is comprised of nine sub-regions bordered by the atlantic ocean, mountain ranges, and a river, which kept the region fairly wet and rainy. Vinho Verde is associated for producing wines that has a *light fizz*. 
 
 We sourced our dataset from the [UCI Machine Learning repository](https://archive.ics.uci.edu/ml/datasets/wine+quality).
 
 
 ## Description of the dataset
 The inputs in the datasets were results from physicochemical tests to characterize the properties of the wine, and the output is based on the ratings from human wine testers.
 
 ### Sample Attributes of Vinho Verde Red wines
 ![Sample Attributes of Red Wine](Images/red_wine.png)
 
 
 ### Samples Attributes of Vinho Verde White wines
 ![Sample Attributed of White Wine](Images/white_wine.png)
 
 
 ## Questions we hope to answer with the data
 
 1. Classify whether the wine is high or low quality
 2. Which physicochemical characteristic contributes to the high or low quality rating of the wine?
 
 ## Database
 [ERD](https://github.com/sherylla/UCB_Final_Project/blob/master/DB/Database_ERD.png)
 
  - table join:
    select wt.wine_name, wq.wine_code, wq.quality, wq.fixed_acidity, wq.volatile_acidity, wq.citric_acid, wq.residual_sugar, wq.chlorides, wq.free_sulfur_dioxide, wq.total_sulfur_dioxide, wq.density, wq.ph, wq.sulphates, wq.alcohol from "Wine_Quality" wq, "Wine_Type" wt where wq.wine_code = wt.wine_code 
 
 
 ## Google Drive Slides:
 [UCB Final Project - Vinho Verde Wine](https://docs.google.com/presentation/d/1LI5SR6nxpghlIBBGXeISKfqNZb6SrDOhDTZI4r5Sb9U/edit#slide=id.p)
 
 ## Dashboard Link:
 https://sherylla.github.io/UCB_Final_Project/
 
 
### Sources:

UCI Machine Learning Repository

### Citations:

P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis.
Modeling wine preferences by data mining from physicochemical properties. In Decision Support Systems, Elsevier, 47(4):547-553, 2009


--------------------------------------------------------------------------------------------------------------
### Team protocols:
- Each team member will create their own individual branches
- Communication will be facilitated using our private slack channel
