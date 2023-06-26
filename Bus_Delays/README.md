# New York Bus Breakdown Delays Analysis 

## Project OvervieW
The Bus Breakdown and Delay system collects information from school bus vendors operating out in the field in real time.My main goal for this project is make a good analysis and build a prediction model on it 

## Installation and Setup
What i use on this project is google colab and tableu 

## Python Packages Used
+ pandas for cleaning,exploring  and analysis
+ missingno for creating matrix for a missing values 
+ re for cleaning and making data more clean 
+ matplotlib.pyplot for visualiztion 
+ scipy stats for detecting outliers and outliers
+ from sklearn.preprocessing import LabelEncoder, OneHotEncoder
+ from category_encoders import TargetEncoder for encoding 
+ from sklearn.model_selection import train_test_split to split data for model 
+ Machine Learnig Models(
 + from sklearn.linear_model import LinearRegression

 + import xgboost as xgb
 + from sklearn.linear_model import LinearRegression
 + from sklearn.tree import DecisionTreeRegressor
 + from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor
+ from xgboost import XGBRegressor
+ from sklearn.svm import SVR)

+ from sklearn.metrics import mean_absolute_error, r2_score
for evaluate model 
+ GridSearchCV for hyper parameter tuning 
+ pycaret for all this model training, selection,comparing 

## Data
I got the data from kaggle i put a folder  raw and cleaned version of  data 
## Explanation 
I start with basic exploring columns null values types of data  and crate a matrix wtih missingno for miss data.then i realize incident number is completely null and drop it after there is columns to change datetime year,minute.after this basic cleaning i explore the target columns structre and it was a whole mess miss typos very dirty writed logs i started cleaning with lowering and separete  them two part this two part is contains h and else without h after this minute_df ther eis time intervals in one column and best option for them in my opinion is split if it has"  -" or "/" append new created  column else append same data   and just keep numbers,h, m.then i drop m for keeping just minutes,it is time to clean hour ones these are tougher than minute because it has more things then just minutes i split just like minute but sometimes it has hour and minute like this "1h15m i split them by h or m crate new column and append to it if it has m else i append 0 .after this i multiply hours with 60 and add with minutes when it is clean both minute and hours and they are in minute type i add time intervals divide 2 when it is clean i merged separeted data.when it is clean i passed detecting outliers i did it with zscore i print and look it looks like misstypo while the data is large i decide i drop it.time for detecting correlations i use anova for it because my target data is continuous  and other columns is categorical best option for it i looked  detected F-Statistic and p value chose the correlated columns.After
encode the columns with right encoders with it for model.it is time for fun part i did a train_test_split, make a different machine learning models on it and evaluate them aaaand results are bad mae is high r2_score is too low for building a model on it i tried hyper parameter tuning on it and it didnt make a difference much then i tried pycaret which is outomated ml Package for python and the results is so close to mine 

## Conclusion
In my opinion the data is not good for a building model on it.i think it needs more parameters for it like how is the traffic, how is the weather etc. but it is good data for exploring ,visualizing and making dashboard on it which is here 
[dashboard](https://public.tableau.com/app/profile/omer.goktas/viz/Bus_Delays/Dashboard1#1) i will also add a pdf of dashboard
if you have any feedbacks do please contact with me 

## And lastly 
I put every article i read before starting that part on colab  releated part of project i would recommend to read them  