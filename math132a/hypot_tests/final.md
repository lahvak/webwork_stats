\ExamInstrBox{
    You can either do your work here on paper or online.  For each problem, if
    the work and the answer is online, write \textbf{``answer online''} in the
    area where you would write the answer.  If
    the answer is on paper but all or some of the work in online, write
    \textbf{``work online''} in the area where you would show work.

    If all your work and answers are online, write \textbf{``online''} on the
    first page of the exam.

    On R-studio, start a new project named ``Final'' and do all your online
    work there.  You can use one or more R notebooks in the project.

    Let me know if you have any questions.
}
\ExamNameLine
\newpage
1.  For each of the following studies, state the $H_0$ and $H_A$, using
    appropriate symbols. Decide the type of test to perform. What would
    be the appropriate *test statistic* to use in each of these tests?

    1.  Scientists were trying to determine whether modifying certain
        letter in the genetic sequence of mice lowers their immunity to
        certain virus. It is known that in non-modified population,
        $27\%$ of mice are immune. They collected a sample of 100
        modified mice, and counted the number of mice immune to the
        virus. There were $31$ of them.

    2.  Researchers were comparing five different treatments for a virus
        causing decrease in leaf size in pear threes. They selected a
        sample of 1000 infected trees, and applied each treatment to 200
        of them. For each group they measured the average leaf size two
        weeks after the application treatment. They wanted to see if
        some of these treatment worked better than other.

    3.  Scientists wanted to know whether proximity to *ribes nigrum*
        increases the chance of white pine trees being infected by
        blistering pine rust (cronartium ribicola). They selected 50
        healthy wine pine trees growing in a proximity of *ribes nigrum*
        plants, and 50 healthy white pine trees that had no ribes plants
        growing within 1 mile radius. They monitored the trees for 5
        years and counted how many of them developed symptoms of
        blistering rust infection.

    \newpage
2.  Answer the following questions:

    1.  What does it mean for data to be in a **tidy format**?

    2.  Give an example of each of the following type of variables:

        1.  Continuous numerical

        2.  Discrete numerical

        3.  Ordinal

        4.  Unordered categorical

    3.  What is the difference between *parameter* and *statistic*?

    4.  Describe the relationship between a population and a sample.

    5.  Describe the difference between an experiment and an
        observational study.

    \newpage
3.  Suppose a fellow biologist asks you to explain to them what a
    $p$-value means. Explain, in your own words, as well as you can,
    what $p$-value is, possibly using an example from biology.

4.  Give an example of *type II error*. Why is it sometimes called a
    *false negative*?

5.  Scientists studying goldenrod gall fly measured the diameters of 200
    galls found on goldenrod plants. The mean diameter was 27.3 mm, with
    standard deviation 7.1 mm. Use this data to find a 70% uncertainty
    interval estimating the mean diameter of goldenrod fly galls. Make
    sure you write your conclusion properly.

6.  What are the two ways to decrease the margin of error of an
    uncertainty interval?

7.  Explain, in your own words, what does the *confidence level* of an
    uncertainty (a.k.a. confidence) interval mean.

    **The remaining problems must be done online:**

8.  To one of the following two tests. Make sure you show all work, and
    that you write your conclusion in terms of the original study (if
    the study is about sharks, your conclusion should talk about
    sharks).

    1.  Researchers found 4 gene modifications that all caused an
        increase of milk production in female mice. They wanted to know
        if the mean milk production in mice modified by each of these 4
        ways differs. They obtained a random sample of 100 female mice,
        25 with each of the 4 modifications, and measured the amount of
        milk produced under carefully controlled conditions. The data
        set from this experiment is available at

                            http://abashed-playground.surge.sh/132B/final/mice.csv
                            

        Test the null hypothesis that there is no difference in mean
        amount of milk production among the 4 groups at 10% significance
        level. Your work should include a useful plot of the data.

    2.  Researchers studying fresh water mussels collected a sample of
        30 mussels of certain species. They recorded several variables,
        among other the weight of the mussel in grams and the depth in
        which the mussel was found in meters. The data set is available
        at

                            http://abashed-playground.surge.sh/132B/final/mussels.csv
                            

        Test whether there is a correlation between the variables
        `depth` and `weight`, at $5\%$ significance level.

9.  The data set at

                http://abashed-playground.surge.sh/132B/final/mussels.csv
                

    contains information about 30 freshwater mussels collected in small
    Michigan lakes. The variables are:

    age

    :   age of the mussel in years

    depth

    :   depth at which it was collected, in meters

    nitrogen

    :   the amount of dissolved nitrogen in the water from which the
        mussel was collected, in ppm

    oxygen

    :   the amount of dissolved oxygen in water from which it was
        collected, in grams per liter.

    weight

    :   weight of the mussel, in grams

    1.  For each of the variables age, depth, nitrogen and oxygen, find
        their correlation coefficient with weight. Which one of them has
        the highest correlation?

    2.  Consider the following linear models:

        -   $weight \sim age$

        -   $weight \sim age + oxygen$

        -   $weight \sim age + nitrogen$

        -   $weight \sim age + oxygen + nitrogen$

        -   $weight \sim age + oxygen + nitrogen + depth$

        Which of the models do you find the best, and why?

    3.  Using your model for $weight \sim age + oxygen + nitrogen$,
        predict the weight of 4 year old mussel that was found in a lake
        with $0.31$ ppm of nitrogen and $9.3$ grams per liter of oxygen.
