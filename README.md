# Automated Content Analysis

A book project by Dr. Chung-hong Chan
(\[@chainsawriot\](<https://github.com/chainsawriot>))

Make Automated Content Analysis uncool again\! No more hype\!

Coming soon\!

# Introduction

When I was a high-school student, biology was my favourite subject. My
bigger brother used the same textbook in a outline edition and thus I
didn’t need to buy it. Meanwhile my classmates were using the newer
edition, I enjoyed reading the old edition from my brother. That book
had over 1000 pages and was completely in black and white. Students and
teachers alike spotted me reading that book almost all the time at the
corner of the spectator stand.

# A Whole game

We are going to use an example to illustrate the whole process of a
typical automated content analysis scenario. In this example, we start
with a simple research question or hypothesis. Let’s say I want to
reproduce a very famous analysis of Donald Trump’s tweets. This example
is very well-known in the data science scene, probably because one of
the authors of the tidytext package used this example to demonstrate the
power of his package (and made him on the television). The research
question is very simple: are tweets from Donald Trump’s twitter account
tweeted using an iPhone less angry than those tweeted using an Android
phone?

There are many elements to unpack in the above paragraph. The utmost
important issue is that, all automated content analysis project should
have hypotheses to test or research questions to answer. If a project
without hypotheses or research questions, it can hardly be called
automated content analysis (see Chapter 2 for longer discussion). Then
we can think of the context we are interested to analyze (Donald Trump
and his Twitter), operationalization of variables (what is angry?), data
collection plan and data analysis strategy.

In this book, however, we are not going to focus on 1) how to form
hypotheses or research questions and 2) how to collect your (text) data.
The reason for excluding the former is that, it needs to be supported by
communication theories. As a book that is intented as an research
methods book, it is an off-shoot. For the latter, the exclusion of it is
due to the fact that there are good papers and textbooks available. The
book chapter by Liang & Zhu (2017) is probably a good start. Simon
Munzert et al (2015) ’s Automated Data collection is an indepth manual.

In the companion website of this book, you can find the tweets from
Donald Trump’s tweet account before he assumes duty as the president of
the United States. The data looks like this:

``` r
require(tidyverse)
```

    ## Loading required package: tidyverse

    ## ── Attaching packages ────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 3.2.1     ✔ purrr   0.3.3
    ## ✔ tibble  2.1.3     ✔ dplyr   0.8.3
    ## ✔ tidyr   0.8.3     ✔ stringr 1.4.0
    ## ✔ readr   1.3.1     ✔ forcats 0.4.0

    ## ── Conflicts ───────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
require(quanteda)
```

    ## Loading required package: quanteda

    ## Package version: 1.5.2

    ## Parallel computing: 2 of 4 threads used.

    ## See https://quanteda.io for tutorials and examples.

    ## 
    ## Attaching package: 'quanteda'

    ## The following object is masked from 'package:utils':
    ## 
    ##     View

``` r
require(rio)
```

    ## Loading required package: rio

    ## 
    ## Attaching package: 'rio'

    ## The following object is masked from 'package:quanteda':
    ## 
    ##     convert

``` r
require(lubridate)
```

    ## Loading required package: lubridate

    ## 
    ## Attaching package: 'lubridate'

    ## The following object is masked from 'package:base':
    ## 
    ##     date

``` r
trump_tweets <- import('./data/trump.json') %>% as_tibble
trump_tweets
```

    ## # A tibble: 17,936 x 7
    ##    source  text   created_at retweet_count favorite_count is_retweet id_str
    ##    <chr>   <chr>  <chr>              <int>          <int> <lgl>      <chr> 
    ##  1 Twitte… Heads… Mon Dec 3…         20519          74566 FALSE      10798…
    ##  2 Twitte… ....S… Mon Dec 3…         17027          63013 FALSE      10798…
    ##  3 Twitte… It’s … Mon Dec 3…         29355         125931 FALSE      10797…
    ##  4 Twitte… I’m i… Mon Dec 3…         30742         131151 FALSE      10797…
    ##  5 Twitte… I’m i… Mon Dec 3…          1123           4217 FALSE      10797…
    ##  6 Twitte… I am … Mon Dec 3…         25252         111582 FALSE      10797…
    ##  7 Twitte… I cam… Mon Dec 3…         21960          90883 FALSE      10797…
    ##  8 Twitte… .....… Mon Dec 3…         15081          72353 FALSE      10797…
    ##  9 Twitte… ...I … Mon Dec 3…         22000         100819 FALSE      10797…
    ## 10 Twitte… If an… Mon Dec 3…         17379          79095 FALSE      10797…
    ## # … with 17,926 more rows

# What is automated content analysis?

## What is Content analysis

As a super express summary of Krippendorff and Neuendorf. But don’t do
it like Leetaru\!

## What get automated?

What the current literature says about ACA.

## Best practice

  - Validation

  - Contrasting Confirmatory / exploratory

  - Methodological transparency

# Creating gold standard & validation

  - avocate a workflow of making gold standard first\!

# Typical automated content analytic methods

## dictionary-based method

  - how it works
  - off-the-shelf
  - creating domain specific one

### validation

  - suggestions

## topic-model

### validation

  - daniel maier / Chang

# Advance topics

## bag-of-embeddings

## semantic network

## machine learning

## multimodal analysis

## crosslingual analysis
