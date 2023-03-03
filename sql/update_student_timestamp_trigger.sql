CREATE OR REPLACE FUNCTION update_student_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_datetime = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_student_timestamp_trigger
BEFORE UPDATE ON students
FOR EACH ROW
EXECUTE FUNCTION update_student_timestamp();

DROP FUNCTION UPDATE_STUDENT_TIMESTAMP() CASCADE;