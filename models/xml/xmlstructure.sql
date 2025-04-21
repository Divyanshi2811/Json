SELECT
XMLGET(s.value, 'Id'):"$"::int as "ID",
XMLGET(s.value, 'Name'):"$"::string as "Name",
XMLGET(s.value, 'Email'):"$"::string as "Email",
XMLGET(s.value, 'Age'):"$"::int as "Age",
XMLGET(s.value, 'City'):"$"::string as "City"
FROM MYDB.AZURE.XML,
LATERAL FLATTEN(TO_ARRAY(MYDB.AZURE.XML._DATA:"$")) s