declare @firtname as nvarchar(20)
declare @middlename as nvarchar(20)
declare @lastname as nvarchar(20)

set @firtname = 'John'
set @middlename = 'Walker'
set @lastname = 'Smith'

--select @firtname + ' ' + @middlename + ' '+ @lastname + ' ' as Fullname

--if one of the variable is null, the fullname is null. to correct we use iif

select @firtname + iif(@middlename is null, '', ' ' + @middlename) + ' ' + @lastname  as Fullname

select @firtname + case when @middlename is null then ''else ' ' + @middlename end + ' ' + @lastname  as Fullname

select @firtname + coalesce( @middlename, '') + ' ' + @lastname  as Fullname

select concat(@firtname,' ' + @middlename, ' ', @lastname)  as Fullname