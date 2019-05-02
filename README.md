If you have got a question and answer document in word format like 

1.	Question 1?
Answer 1.
2.	Question 2?
Answer 2.
3.	Question 3?
Answer 3.

First use some HTML editor to convert the word document into HTML like below

<ol start="1">
<li><strong>Question 1?</li>
</ol>
Answer 2.
<ol start="2">
<li><strong>Question 1?</li>
</ol>
Answer 3.
<ol start="3">
<li><strong>Question 3?</li>
</ol>
Answer 3.

Please do not remove Copyright information from the script.

If you have any requirement to convert word document into SQL script, please contact us at chinmoy at satyasys dot com.

Now create a FAQs table in your database like

CREATE TABLE FAQs(
    id int NOT NULL AUTO_INCREMENT,
    Question varchar(1024) NOT NULL,
    Answer varchar(4096) NOT NULL,
    PRIMARY KEY (id)
);
Run the script like

./word2sql.sh faqs pattern table
 As example
./word2sql.sh "FAQs.htm" "<ol start=" "FAQs"

© SatyaSys Tech Private Limited 
Do not remove copyright information from this file
If you find this script useful, please feel free to 
to contact us via our website https://www.satyasys.com for any IT services.
We are working on Android, Java Spring boot, Blockchain, Web Designing, 
Graphic Designing, Security Testing, Machine Learning, Data Analytics,
IT Training, IT Support, etc.
