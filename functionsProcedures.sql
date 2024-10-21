CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT count(*) FROM employees;
$$;
CREATE FUNCTION emp_delete()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE emp_id = 15;
$$;
SELECT emp_count();
CREATE FUNCTION emp_delete_by_id(p_emp_id INTEGER)
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE emp_id = p_emp_id;
$$;
SELECT emp_count();
SELECT emp_delete_by_id(8);
SELECT * from employees;
CREATE Procedure remove_emp()
LANGUAGE plpgsql
AS
$$
BEGIN
DELETE FROM employees WHERE emp_id = 16;
END
$$;
CALL remove_emp();
CREATE Procedure remove_emp_by_variable()
LANGUAGE plpgsql
AS
$$
DECLARE
test INT;
BEGIN
SELECT emp_id INTO test from employees WHERE emp_id = 15;
DELETE FROM employees WHERE emp_id = test;
END
$$;
CALL remove_emp_by_variable();
CREATE Procedure remove_emp_by_id(p_emp_id INT)
LANGUAGE plpgsql
AS
$$
DECLARE
test INT;
BEGIN
SELECT emp_id INTO test from employees WHERE emp_id = p_emp_id;
DELETE FROM employees WHERE emp_id = test;
RAISE NOTICE 'Employee removed successfully!';
END
$$;
DROP PROCEDURE remove_emp_by_id;
CALL remove_emp_by_id(14);
