--#Join string and number
--select 'My Number is ' +  convert(varchar, 4567)
--select 'My Number is ' +  cast(4567 as varchar)

--select 'My Salary is ' +  convert(varchar, 2345.6) --works, but not well
select 'My salary is ' +  format(2345.6, 'C') -- 'C' is for currency

select 'My salary is ' +  format(2345.6, 'C', 'de-DE')


select format(2345.6, 'C')
