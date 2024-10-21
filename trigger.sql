CREATE Table my_users (
    user_name VARCHAR(50),
    email VARCHAR(100)
);
INSERT INTO my_users VALUES
('Gandib', 'gandib@gmail.com'),
('Surjasen', 'surjasen@gmail.com');
SELECT * FROM my_users;
CREATE Table deleted_users_audit(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);
SELECT * FROM deleted_users_audit;
CREATE OR REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
RAISE NOTICE 'Deleted user audit log createrd';
RETURN OLD;
END
$$;
CREATE Trigger save_deleted_user_trigger
BEFORE DELETE
on my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();
DELETE FROM my_users WHERE user_name = 'Surjasen';
