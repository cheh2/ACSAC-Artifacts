# ACSAC-Artifacts
Data artifacts for the ACSAC 2022 paper: From Hindsight to Foresight: Enhancing Design Artifacts for Business Logic Flaw Discovery


## Contents

These artifacts are used in the Results section (Section 4.3) of our paper and contain the (1) use case scenarios from Sylius, (2) generated misuse case scenarios using our approach, and (3) the results of running the generated misuse case scenarios on the latest version of Sylius (and the rolled-back version of Sylius where applicable).  

## Structure

Each folder in our submitted artifacts is labeled with the Issue ID that corresponds to the Table 1 column in the Results section. Inside each folder, there are .feature files (which are the use case scenarios and misuse case scenarios) and .txt files (which contain the results of running the use case scenarios and/or misuse case scenarios). 

The original use case scenario created by Sylius developers are named "Sylius_use_case.feature". The generated misuse case scenarios are named "Our_generated_misuse_case.feature". Where applicable, the original misuse case scenarios created by the Sylius developers are named "Sylius_misuse_case.feature". 
The results of running the collection of use case scenarios and misuse case scenarios on the latest Sylius version are named "Results_Latest_Sylius.txt" and the results on the 2016 Sylius version are named "Results_Old_Sylius.txt".
