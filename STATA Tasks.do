*
*
* 1. Adding two opening commands 

clear all
set more off

* 2. importing dataset file "working_with_data.dta" from appropriate directory
*
use "/home/l/Downloads/working_with_data.dta", clear 

* 3. variable emp_code doas not have any duplicate value thus uniquely identify all workers (or respondents)
duplicates report emp_code 

* 4. there are 7 missing values in date variable
count if missing(date)

* 5. According to the sample: 93 out 239 workers found heat to be a problem, 12 out of 239 found noise to be a problem, and 22 out of 239 found smell to be a problem.

summarize noise
display r(sum) 

summarize heat
display r(sum) 

summarize smell
display r(sum) 
* 5. a) The most common problem faced by workers is heat. 
* 5. b) The least common problem was noise. 

* 6. converting a c_1 which is a string variable to a numeric variable. and i renamed c_1 to sc_1 
gen sc_1 = real(c_1)

* 7. a) generating a new variable "tenure" 
gen tenure = 2022 - sc_1 

* 7. b & c) the value of mean is equal to 7.0586 and the value of median is 6
summarize tenure, detail

* 7. d) To sort all observations in descending order by tenure 
gen negtenure = -tenure
sort negtenure



* 8 to generate a pie chart
graph pie, over(b_2)


* 9. a) To create a 6 new dummy variable, according to the mapping given in the question
gen super_behav_d_3_a=d_3_a
replace super_behav_d_3_a = 1 if super_behav_d_3_a == 1 
replace super_behav_d_3_a = 1 if super_behav_d_3_a == 2
replace super_behav_d_3_a = 0 if super_behav_d_3_a == 3
replace super_behav_d_3_a = . if super_behav_d_3_a == 4


gen super_behav_d_3_b=d_3_b
replace super_behav_d_3_b = 1 if super_behav_d_3_b == 1 
replace super_behav_d_3_b = 1 if super_behav_d_3_b == 2
replace super_behav_d_3_b = 0 if super_behav_d_3_b == 3
replace super_behav_d_3_b = . if super_behav_d_3_b == 4

gen super_behav_d_3_c=d_3_c
replace super_behav_d_3_c = 1 if super_behav_d_3_c == 1 
replace super_behav_d_3_c = 1 if super_behav_d_3_c == 2
replace super_behav_d_3_c = 0 if super_behav_d_3_c == 3
replace super_behav_d_3_c = . if super_behav_d_3_c == 4

gen super_behav_d_3_d=d_3_d
replace super_behav_d_3_d = 1 if super_behav_d_3_d == 1 
replace super_behav_d_3_d = 1 if super_behav_d_3_d == 2
replace super_behav_d_3_d = 0 if super_behav_d_3_d == 3
replace super_behav_d_3_d = . if super_behav_d_3_d == 4

gen super_behav_d_3_f=d_3_f
replace super_behav_d_3_f = 1 if super_behav_d_3_f == 1 
replace super_behav_d_3_f = 1 if super_behav_d_3_f == 2
replace super_behav_d_3_f = 0 if super_behav_d_3_f == 3
replace super_behav_d_3_f = . if super_behav_d_3_f == 4

* 9. b) To create 4 new dummy variable according to the mapping in the question
gen super_behav_d_3_g = d_3_g
replace super_behav_d_3_g = 0 if super_behav_d_3_g == 1
replace super_behav_d_3_g = 0 if super_behav_d_3_g == 2
replace super_behav_d_3_g = 1 if super_behav_d_3_g == 3
replace super_behav_d_3_g = . if super_behav_d_3_g == 4

gen super_behav_d_3_h = d_3_h
replace super_behav_d_3_h = 0 if super_behav_d_3_h == 1
replace super_behav_d_3_h = 0 if super_behav_d_3_h == 2
replace super_behav_d_3_h = 1 if super_behav_d_3_h == 3
replace super_behav_d_3_h = . if super_behav_d_3_h == 4

gen super_behav_d_3_i = d_3_i
replace super_behav_d_3_i = 0 if super_behav_d_3_i == 1
replace super_behav_d_3_i = 0 if super_behav_d_3_i == 2
replace super_behav_d_3_i = 1 if super_behav_d_3_i == 3
replace super_behav_d_3_i = . if super_behav_d_3_i == 4

gen super_behav_d_3_j = d_3_j
replace super_behav_d_3_j = 0 if super_behav_d_3_j == 1
replace super_behav_d_3_j = 0 if super_behav_d_3_j == 2
replace super_behav_d_3_j = 1 if super_behav_d_3_j == 3
replace super_behav_d_3_j = . if super_behav_d_3_j == 4



* 9. c) To generate a new variable "employee_super_avg_behav"
egen employee_super_avg_behav = rmean(super_behav_d_3_a-super_behav_d_3_j)


* 11) Mani will give them both a warning because as one can see by plotting graphs 
*     that the Survey Response options Yes (always and sometimes both) is more prominent 
*     than No and Dont know in varible d_6_a than in variable d_6_c and variable d_6_b

graph pie, over(d_6_a)
graph pie, over(d_6_b)
graph pie, over(d_6_c)

* 11. (a) No because question d_6_b only captures the case of Mani supervising Roopa and Site, 
*         While question d_3_h incorporate case from many supervisors 

* 11. (b) 
* generating graph for d_3_h and saving as "name_d3h.png" file
graph pie, over(d_3_h)
*graph export name_d3h.png

* generating graph for d_6_b and saving as "name_d6b.png" file
graph pie, over(d_6_b)
*graph export name_d6b.png

* 11. (c) Variable d_3_h should be prefered to capture the worker’s attitude 
*         because it gives the observervation in a genenal manner not specific to one supervisor and two workers as in d_6_b



* 12. a) The null hypothesis is that there is no relationship between the factory environment being too hot during summers and workers not liking their supervisor. 
*           The alternative hypothesis is that there is a relationship between the factory environment being too hot during summers and workers not liking their supervisor.


* 12. b) This would be a one-sided test beacuse in our null hypeth there is no relation bw workers finding factory env to be hot "and not liking" there superwisers. 
*           So the there is a directioality already assumed in th perception of workers towards their supervisors. 
*           If we just said that there is no relation etween workers finding the environment too hot in the summers and their like or dislike of their supervisors, 
*           then we would have a two tail test. So when we reject our null as stated in the prevous part, 
*           we say that the fact hat there is no relation between workers findng envirnment too hot and "not lking their supervisors" is not true. 


* 12. c) Null: Employees disliking their supervisor is not impacted by them finding factory environment to be too hot in the summer
*           Alternate: Employees disliking their supervisor is impacted by them finding factory environment to be too hot in the summer
ttest heat=employee_super_avg_behav

* 12. d) We can a p value of 0 which is less than the p value at 5% significance level

* 12. e) The independent variable heat is not significant as the p value turns out to be 0.5 which is higher than 0.05
regress employee_super_avg_behav heat 

