#1. What is the gender distr ibution of respondents from India?
select Gender from analytics.`cj 1`; 
#2. What percentage of respondents from India are interested in education abroad and sponsorship?
select`Higher education aspiration`from analytics.`cj 1`where `Higher education aspiration`='yes' and 'need sponser';
#3. What are the 6 top influences on career aspirations for respondents in India?
SELECT `career aspirations`, COUNT(*) AS count_influence
FROM  analytics.`cj 1`
WHERE `Your Current Country.`= 'India'
GROUP BY`career aspirations`
ORDER BY `career aspirations` DESC
LIMIT 6;

#4. How do career aspiration influences vary by gender in India?
SELECT gender, `career aspirations`, COUNT(*) AS count_influence
FROM  analytics.`cj 1`
WHERE`Your Current Country.` = 'India'
GROUP BY gender, `career aspirations`
ORDER BY gender, count_influence DESC;

#5. What percentage of respondents are willing to work for a company for at least 3 years?


    
  select (COUNT(CASE WHEN `3 year tenurity` = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_willing_to_work_3_years
FROM  analytics.`cj 1`;

#6. How many respondents prefer to work for socially impactful companies?
SELECT COUNT(*) AS respondents_preferring_social_impact
FROM analytics.`cj 1`
WHERE `work in no social impact mission`
 = 'Yes';
 
# 7. How does the preference for socially impactful companies vary by gender?
SELECT gender, 
       COUNT(CASE WHEN `work in no social impact mission` = 'Yes' THEN 1 END) AS prefers_social_impact,
       COUNT(*) AS total_respondents,
       (COUNT(CASE WHEN `work in no social impact mission`= 'Yes' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_preferring_social_impact
FROM analytics.`cj 1`
GROUP BY gender;

#8. What is the distribution of minimum expected salary in the first three years among respondents?
SELECT `First 3 years in hand expected monthly salary`, COUNT(*) AS salary_count
FROM analytics.`cj 1`
GROUP BY `First 3 years in hand expected monthly salary`
ORDER BY salary_count DESC;

#9. What is the expected minimum monthly salary in hand?
select min(`Minimum in hand expected salary as freasher`) 
from analytics.`cj 1`;

#10. What percentage of respondents prefer remote working?
SELECT 
    (COUNT(CASE WHEN `Mode of work`= 'Fully Remote' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_remote_work
FROM analytics.`cj 1`;

#11. What is the preferred number of daily work hours?
SELECT `hours willing to work every day`, COUNT(*) AS count_preference
FROM analytics.`cj 1`
GROUP BY `hours willing to work every day`
ORDER BY count_preference DESC;

#12. What are the common work frustrations among respondents?
SELECT `frustrate you at work ?`, COUNT(*) AS count_frustration
FROM analytics.`cj 1`
GROUP BY `frustrate you at work ?`
ORDER BY count_frustration DESC;

#13. How does the need for work-life balance interventions vary by gender?
SELECT gender, 
       COUNT(CASE WHEN `need full week break for work life balance` = 'Yes' THEN 1 END) AS needs_intervention,
       COUNT(*) AS total_respondents,
       (COUNT(CASE WHEN `need full week break for work life balance` = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_needing_intervention
FROM analytics.`cj 1`
GROUP BY gender;

#14. How many respondents are willing to work under an abusive manager?
SELECT COUNT(*) AS willing_to_work_under_abusive_manager
FROM analytics.`cj 1`
WHERE `Abusive manager`= 'Yes';

#15. What is the distribution of minimum expected salary after five years?
SELECT `After 5 years in hand expected monthly salary`, COUNT(*) AS count_distribution
FROM analytics.`cj 1`
GROUP BY `After 5 years in hand expected monthly salary`
ORDER BY count_distribution DESC;

#16. What are the remote working preferences by gender?
SELECT gender, 
	`Mode of work`, 
       COUNT(*) AS count_preference
FROM analytics.`cj 1`
GROUP BY gender,`Mode of work`
ORDER BY gender, count_preference DESC;

#17. What are the top work frustrations for each gender?
SELECT gender, 
       `frustrate you at work ?`, 
       COUNT(*) AS count_frustration
FROM analytics.`cj 1`
GROUP BY gender, `frustrate you at work ?`
ORDER BY gender, count_frustration DESC;

#18. What factors boost work happiness and productivity for respondents?
SELECT `Happy and productive at work`, 
       COUNT(*) AS count_factor
FROM analytics.`cj 1`
GROUP BY `Happy and productive at work`
ORDER BY count_factor DESC;

#19. What percentage of respondents need sponsorship for education abroad?
SELECT 
    (COUNT(CASE WHEN `Higher education aspiration` = 'needs sponsorship' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_needing_sponsorship
FROM analytics.`cj 1`;

















