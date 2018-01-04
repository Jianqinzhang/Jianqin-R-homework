# Complete all of the items below
# Use comments where you're having trouble or questions

# 1. Read your data set into R
read.table("treatment.csv", header=TRUE)
my.df <- read.csv("treatment.csv", header=TRUE)
my.df


# 2. Peek at the top few rows
head(my.df)

# 3. Peek at the top few rows for only a few columns
head(my.df[1:5,1:3])
head(my.df[,1:3])


# 4. How many rows does your data have?
nrow(my.df)

# 5. Get a summary for every column
summary(my.df) #these works now. I think it is the wrong command in 1.
#I should use read.csv

# 6. Get a summary for one column
summary(my.df$age)


# 7. Are any of the columns giving you unexpected values?



# 8. Select a few key columns, make a vector of the column names
colnames(my.df)# this is a vector
Key.columns <- colnames(my.df)[c(3,4,8,9)]#before column names, there should be c.
#if you ask r to take somethings as a unit, then you use c to make it a unit.


# 9. Create a new data.frame with just that subset of columns
my.new <- my.df[,Key.columns]
my.new

# 10. Create a new data.frame that is just the first 10 rows
#     and the last 10 rows of the data from the previous step

#my.df[1:10,"educ"]
#my.df[1:10,"re78"]



# 11. Create a new data.frame that is a random sample of half of the rows.
# HINT: ?sample
?sample
a <- c(my.df,1:1338)
sample(a)

# 12. Find a comparison in your data that is interesting to make
#     (comparing two sets of numbers)
#     - run a t.test for that comparison
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
#     - run the t.test with BOTH the formula and "vector"
#       formats, if possible
#     - if one is NOT possible, say why you can't do it
re75 <- my.df[1:2375,"re75"]
re78 <- my.df[1:2375,"re78"]
t.test(re75,re78)


# 13. Repeat #12 for TWO more comparisons
#     - ALTERNATIVELY, if correlations are more interesting,
#       do those instead of t-tests (and try both Spearman and
#       Pearson correlations)
#     - Tip: it's okay if the comparisons are kind of nonsensical, this is 
#       just a programming exercise

# 14. Save all results from #12 and #13 in an .RData file
my.results <- t.test(re75, re78)
save(my.results, file="t-test results.RData")

# 15. Email me your version of this script, PLUS the .RData
#     file from #14
#     - ALTERNATIVELY, push your version of this script and your .RData results
#       to a repo on GitHub, and send me the link


