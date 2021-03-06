
How many calories do you burn in a day?
========================================================

Birthe Marie Strand

March 29 2016

Introduction
========================================================
The assignment in Developing Data Products has to parts; First, create a Shiny application and deploy it on R studio's servers. Second,  use Slidify or R studio Presenter to prepare a reproducible pitch presentation about your application.

- The app developed for the first part of the assignment is available at shinyapps.io https://birthestrand.shinyapps.io/FinalApp/

- The source code ui.R and server.R files can be found at git.hub 

How many calories do you burn in a day?
========================================================
How many calories you burn during a day is dependent on many factors. This app will help you determine how many calories you burn during a day where your **activity level is close to zero**. 

Everything you do besides siting and laying down will make your calorie consumption per day increase above this estimated figure. 

The app takes into consideration your basic physics and all you need to do is **plot in your weight, height and age**. In return you get how many calories you burn on a day were you are resting. 

What is the basis for the calculation
=========================================================

The basis for this calculation is the Basal metabolic rate (BMR). 

```r
prediction <- function(weight,height,age) 
              {655 + (w*9)+ (h*1.8)- (a*4.7)}
```
Basal Metabolic Rate is the amount of energy expressed in calories that a person needs to keep the body functioning at rest. 

Your basal metabolic rate accounts for about 60 to 75% of the calories you burn every day. 

What happens if you increase your activity level above BMR
=========================================================
Your calorie consumption will exceed the BMR rate when you start moving around.  Depending on how much you increase your activity level you can multiply the predicted value with the following coefficients; 

- Light exercise (walking an hour)        = Predicted value x 1.375
- Moderate exercise (running for an hour) = Predicted value x 1.55
- High intensity exercise                 = Predicted value x 1.725
 
 
