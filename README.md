# Note Regarding Collaboration

For this project, I collaborated with Fekadu Habteyohannes.  We frequently met with each other and discussed code and strategy, and utilized each other's code for different aspects of the project.  We are providing links to two separate github repositories containing two separate jupyter notebooks, but the code in the notebooks is nearly identical.  Here is a link to Fekadu's repo: https://github.com/fkdk500/Crowdfunding_ETL

# Goal
- For this project, we were providing with crowdfunding data and tasked with building an ETL (Extract, Transform, Load) pipeline using Python and Pandas methods to extract and transform the data. 
- After transformation, the data was exported into .csv files with which an ERD (Entity Relationship Diagram) was created and SQL table schema were crafted.
- Finally, the .csv file data was uploaded into the SQL tables via Postgres.  

# Method
- Jupyter Notebook - Extract and Transform
  - First, the crowdfunding data was converted into a Pandas DataFrame and added to      lists,    and category and subcategory IDs were then assigned to each value.  The values and the    IDs were then generated into new DataFrames and exported as .csv files (category.csv       and subcategory.csv respectively).
  - A campaign DataFrame was then generated from the data, the datatypes of each column      corrected (e.g. string to float, integer to datetime, etc.), and the remaining data        cleaned (unneeded columns removed, columns renamed and reordered).  The clean DataFrame    was then exported as a .csv file (campaign.csv)
  - A contacts DataFrame was then generated from the provided contact information data.      The data from the dictionary was extracted and placed into a DataFrame, the name column    broken up into first_name and last_name columns, and the resulting DataFrame exported      into a .csv (contacts.csv).
- Postgres/SQL - Load
  - From the .csv files, an ERD was generated to demonstrate the relationship between the   data and identify the primary and foreign keys between the tables:
  
  ![image](https://user-images.githubusercontent.com/120341249/227397984-0e839e60-db05-4928-9472-99fd98a09652.png)

- Using this ERD, table schema were created to store the transformed data stored in the contacts.csv, category.csv, subcategory.csv, and campaign.csv files.  The .csv files were then imported into the corresponding tables in the crowdfunding database: 

![image](https://user-images.githubusercontent.com/120341249/227399261-4f27b1d3-d9f1-4a73-ae60-9187b6253e15.png)

![image](https://user-images.githubusercontent.com/120341249/227399302-420d7ef9-8fa4-49d0-a66c-118a6bdad719.png)

![image](https://user-images.githubusercontent.com/120341249/227399332-e701c6d1-9574-4904-af9e-2670a20293ea.png)

![image](https://user-images.githubusercontent.com/120341249/227399369-9c2e2b55-7787-4c1a-9e76-8cf8ce280155.png)

- Queries were then run to confirm the data was imported properly, and sample queries were created to ensure all data was present (all screenshots have been uploaded to the /Screenshots folder in this repository): 

![image](https://user-images.githubusercontent.com/120341249/227399587-98a39b28-b025-4c24-9d86-4217d67b282e.png)

# Summary and Results
- The data was successfully extracted from the provided data files using Pandas
- It was then transformed and cleaned using Pandas and Python dictionary methods to ensure the data was understandable and could be queried
- It was successfully exported into cleaned data files (all uploaded to /Resources folder in this repository)
- The data was then successfully loaded into a Postgres/SQL database and queried to confirm it was properly imported
