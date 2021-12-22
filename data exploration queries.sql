
--Tabular view of the data present in db 

select * from Conversations_edit

select * from customer_monthly_edit


--Checking whether the Conversation table holds unique value under 'CUSTOMER_HK' attribute

select COUNT(CONVERSATION_HK) FROM Conversations_edit

select count(DISTINCT(CONVERSATION_HK)) FROM Conversations_edit 


--Checking whether the Conversation table holds unique value under 'CUSTOMER_HK' attribute

select count(DISTINCT(CUSTOMER_HK)) FROM customer_monthly_edit

select COUNT(CUSTOMER_HK) FROM customer_monthly_edit


--Checking the count of 'CONVERSATION_HK' that are duplicate in the Conversation table

select CONVERSATION_HK, count(CONVERSATION_HK) as cnt from Conversations_edit group by CONVERSATION_HK having count(CONVERSATION_HK) > 1


--Checking whether the Customer_Monthly sheet holds unique value under 'CUSTOMER_HK' attribute##

select count(DISTINCT(CUSTOMER_HK)) FROM customer_monthly_edit

select COUNT(CUSTOMER_HK) FROM customer_monthly_edit

--Checking the count of 'CUSTOMER_HK' that are duplicate in the Customer_Monthly table

select CONVERSATION_HK, count(CONVERSATION_HK) as cnt from Conversations_edit group by CONVERSATION_HK having count(CONVERSATION_HK) > 1

--Finding a particular customer key that has duplicate values in Customer_Monthly table

select * from [Customers Monthly] where CUSTOMER_HK = '6a934916393c48a86c4f0945b65ce8d89841f6484706d359cf3730edf4bd9abf' order by (DAY_DT) asc



