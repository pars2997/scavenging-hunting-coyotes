This repository contains the necessary R code and data to reproduce the results of Parsons et al. (in review) Scavenging vs hunting affect behavioral traits of an opportunistic carnivore. 
This project exposed captive coyotes to two different foraging treatments and monitored coyote behavior over one year. 
The control treatment (scavenging) was scatterfeeding coyotes 6 days per week (standard protocol for the facility) and the experimental treatment (hunting) was to scatterfeed the coyotes 3 days per week and feed them using a mobile prey model the other three days. From November 2019 through November 2020 we observed coyote behavior and presenting a suite of behavioral tests. Observations included documenting behavioral budgets during both feeding and nonfeeding times, novel object tests, multi-access puzzle box tests, and conspecific response tests.

There is a single code file for this analysis: coyotemarkdownTMB_withpairs.Rmd

This code uses data from 9 different datafiles, each described in turn below. 


All Months Car Summary.csv
Each month, we conducted four 15-minute focal observations during feeding times with the prey model. This file contains the amount of time (seconds) that coyotes spent in each behavior during these observations. The behaviors are aggression, eating, foraging, locomotion, neutral social behavior, play, resting, standing, interacting with the prey model, investigating the prey model, other, out of sight, scent marking, and stereotyping. Each row is one observation for an individual coyote and also contains the date and month of the observation.

AllMonthsNoCar.csv
Each month, we conducted four 15-minute focal observations during non-feeding times and four observations during feeding times without the prey model. This file contains the amount of time (seconds) that coyotes spent in each behavior during these observations. The behaviors are aggression, eating, foraging, locomotion, neutral social behavior, play, resting, scent marking, standing, carrying pup (CP), nursing, other, out of sight, aggression towards pups, playing with pups, and stereotyping. Each row is one observation for an individual coyote and also contains the date and month and whether it was a feeding or nonfeeding observation.

AllMonthsConspecific.csv
Every three months, we presented the coyotes with a dummy coyote to test their response to a unknown conspecifc. This file contains the amount of time (seconds) that coyotes spent within 5m and 1m of the dummy, and behaving aggressively, playfully, or touching the dummy. Each row also contains the date of the observation, the pair each individual belong too, the subject, the total observation length, and the month of the observation. 

AllMonthsConspecifcLatency.csv
Every three months, we presented the coyotes with a dummy coyote to test their response to a unknown conspecifc. This file contains the latency, in seconds) for coyotes to approach within 5m and 1m of the dummy, and behave aggressively, playfully, or touch the dummy. Each row also the pair each individual belong too, the subject, and the month of the observation. If coyotes did not display a behavior during the observation, the latency is fixed at 3600 seconds, the length of the observation.

AllMonthsNovel.csv
Every three months, we presented the coyotes with a novel object to test their boldness. This file contains the amount of time (seconds) that coyotes spent within 5m, 1m, and touching the object. Each row also contains the date of the observation, the subject, the total observation length, and the month of the observation. 

AllMonthsNovelLatency.csv
Every three months, we presented the coyotes with a novel object to test their boldness. This file contains the latency (in seconds) for coyotes to approach within 5m, 1m, and touch the object. Each row also contains the subject and the month of the observation. 

AllMonthsPuzzle.csv
Every three months, we presented the coyotes with a multi-access puzzle box for 10 days to test their innovation. This file contains the amount of time (seconds) that coyotes spent within 5m, 1m, interacting with and touching the puzzle box. Each row also contains the total length of the observation, the pair, subject, day of the trial, and month. The solve column in this dataset does not contain meaningful data.

AllMonthsPuzzleLatency.csv
Every three months, we presented the coyotes with a multi-access puzzle box for 10 days to test their innovation. This file contains the latency (in seconds) for coyotes to approach within 5m, 1m, interact with, touch, and solve, the puzzle box. Each row also contains the pair, subject, and month of the observation.

AllMonthsScentMark.csv
Each month, we conducted four 15-minute focal observations during non-feeding times and four observations during feeding times without the prey model. This file contains the number of times each coyote was observed scent marking during these observations. It also includes the subject, whether it was a feeding or non-feeding observation, and the month of the observation.

