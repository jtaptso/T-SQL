select [name]
from sys.all_columns

--1, 2. Add letter A to the end of each name
select CONCAT([name], 'A')
from sys.all_columns

--3. Remove the first character from name
select top(10) RIGHT([name], len([name]) -1)
from sys.all_columns

select top(10) SUBSTRING([name], 2, len([name]) - 1)
from sys.all_columns

--4. Remove the last character from name
select top(10) left([name], len([name]) -1)
from sys.all_columns

select top(10) SUBSTRING([name], 1, len([name]) - 1)
from sys.all_columns

select top(10) [name]
from sys.all_columns