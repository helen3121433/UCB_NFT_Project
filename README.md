# UCB_NFT_Project

## Team Members
1. Pablo Azcona 
2. Xiaochen Zhang
3. Stella Chen
4. Ben Liu

## Background
NFT(non-fungible token)
An NFT is a digital sset that represents real world object like art, music, in-game items and videos. All of these are broght and sold online, freqently with cryptocurrency. 
The most expensive NFT ever was sold on December 2, 2021, for a total cost of 
$91.8M. NFT is a fast-growing market and we propose to explore market trends 
and user behavior on NFT prices & demand in the coming Web 3.0. 

## Motivation 
Cryptocurrency has become a household name and is an evolving technology 
that will only become more prevalent in digital finance. There is a need to explore
the infrastructure of this technology and assess & predict various aspects of the 
blockchain ecosystem.

## Questions to answer
1. What types of NFTs are popular on the Solana platform ?
2. How is the value of NFT’s measured and predicted using exploratory data 
analysis of market data?

## Tools/Modules to use
 :small_orange_diamond:PostgreSQL
 :small_orange_diamond:R
 :small_orange_diamond:Jupyter Lab (Pandas/Matplotlib/NumPy/SciPy)
 :small_orange_diamond:scikit-learn
 :small_orange_diamond:Pandas
 :small_orange_diamond:Tableau
 :small_orange_diamond:Google Slides

## Data sets to use
Dataset were pull from Kaggle, and Github that were uploaded by Ali Nabipour. It represents the most popular Solana-based collections lited in Magiceden market. From March 2022 - Mid-April 2022.
Datasets included: 
1. collections.csv file that contains gerneral information about collections.
2. Collection directory that contains data of NFTs that are listed in market place.
- https://www.kaggle.com/datasets/eyenpi/solana-nft-collections
- https://github.com/eyenpi/solana-nft-collections/tree/f7ca6ea6ffe11c309c01583a3e79302b6b681793

## Plans on data cleaning 
1. Drop columns that will not be used.
2. Add a columns with version(v1,v2,v3,v4)
3. Only keep collections that appears all 4 collections
4. Merge/Join collection basic information and NFT sold by each collections.
5. Sort by/group by collection name.
6. Collect # of NFT were sold for each collections

## Steps for Loading Dataset into Amazon RDS Using pgAdmin
1. Create Amazon RDS database
2. Create connection to Amazon database using pgAdmin
3. Write SQL query in pgAdmin to create NFT database tables
4. Import NFT data files into pgAdmin

## Machine Learning Model

### Data Processing
To prepare the data model, we used one hot encoding to convert categorial attributes into a format that will improve the predictive capabilities of machine learning algorithms

### Modeling
We chose scikit-learn as the framework for our machine learning model development. To select the most applicable model, we tested our data sets with multiple models including linear regression, Huber regression and lasso regression. Our objective is to determine the best model for predicting prices.
