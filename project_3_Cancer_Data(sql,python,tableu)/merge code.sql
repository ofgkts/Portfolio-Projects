SELECT all_cancer.Rank,all_cancer.Cancer,all_cancer.Newcasesin2020,all_cancer."%ofallcancers",
female.Newcasesin2020 AS FEMALE_CASE,female."%ofallcancers" AS Female_Percentege 
,male.Newcasesin2020 AS Male_Case ,male."%ofallcancers"AS Male_Percentege  
FROM all_cancer
LEFT JOIN female ON all_cancer.Cancer=female.Cancer
LEFT JOIN male ON all_cancer.Cancer=male.Cancer;