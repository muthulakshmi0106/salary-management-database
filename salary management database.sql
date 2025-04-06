CREATE DEFINER=`root`@`localhost` PROCEDURE `get_salary_info`()
BEGIN
select*from salary;
END