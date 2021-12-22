use final_casestudy

select Customer_monthly_edit.CUSTOMER_HK, count(Conversations_edit.CONVERSATION_HK) 
from Customer_monthly_edit left join Conversations_edit on Customer_monthly_edit.CUSTOMER_HK = Conversations_edit.CUSTOMER_HK 
where  Customer_monthly_edit.CUSTOMER_HK = Conversations_edit.CUSTOMER_HK
having count(Conversations_edit.CONVERSATION_HK) > 20 


select count(*) from Conversations_edit
select count(distinct(CUSTOMER_HK)) from Conversations_edit 


select count(*) as totalconversation, count(distinct(CUSTOMER_HK)) as totalcustomers, (count(*)/count(distinct(CUSTOMER_HK))) as averagepercustomer from Conversations_edit 


select count(Conversations_edit.CONVERSATION_HK) as conversationpercustomer, Conversations_edit.CUSTOMER_HK 
from Conversations_edit
group by Conversations_edit.CUSTOMER_HK 
order by count(Conversations_edit.CONVERSATION_HK) desc


select count(CUSTOMER_HK) from Conversations_edit where CUSTOMER_HK = '238fe4ef9aa063a4ffe2424a20ead5ab9d269cf43ac328271caab3df9adf51ed'

