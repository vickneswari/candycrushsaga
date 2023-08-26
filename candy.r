---
title: "R Notebook"
output: html_notebook
---
```{r}
# Loading in packages

library(readr)
library(dplyr)
library(ggplot2)
```

2. The data set

The dataset we will use contains one week of data from a sample of players who played Candy Crush back in 2014. The data is also from a single episode, that is, a set of 15 levels. It has the following columns:

    player_id: a unique player id
    dt: the date
    level: the level number within the episode, from 1 to 15.
    num_attempts: number of level attempts for the player on that level and date.
    num_success: number of level attempts that resulted in a success/win for the player on that level and date.

The granularity of the dataset is player, date, and level. That is, there is a row for every player, day, and level recording the total number of attempts and how many of those resulted in a win.

Now, let's load in the dataset and take a look at the first couple of rows. 

```{r}
# Reading in the data
data <- read_csv("datasets/candy_crush.csv")

# Printing out the first six rows
head(data)