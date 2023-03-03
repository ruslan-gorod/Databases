import random
import psycopg2
from psycopg2 import sql

# Connect to the database
conn = psycopg2.connect(
    host="localhost",
    database="CDP",
    user="postgres",
    password="1"
)

# Create a cursor
cur = conn.cursor()

# Generate 100,000 students
for i in range(1, 100001):
    # Generate random student data
    name = "Student{}".format(i)
    surname = "Last{}".format(i)
    date_of_birth = "2000-01-01"
    phone_number = str(random.randint(1000000000, 9999999999))
    primary_skill = random.choice(['Math', 'Science', 'History', 'English'])
    created_datetime = "NOW()"
    updated_datetime = "NOW()"

    # Insert the student data into the database
    cur.execute(sql.SQL("INSERT INTO students (name, surname, date_of_birth, phone_number, primary_skill, created_datetime, updated_datetime) VALUES ({}, {}, {}, {}, {}, {}, {})").format(
        sql.Literal(name),
        sql.Literal(surname),
        sql.Literal(date_of_birth),
        sql.Literal(phone_number),
        sql.Literal(primary_skill),
        sql.SQL(created_datetime),
        sql.SQL(updated_datetime)
    ))

# Generate 100 subjects
for i in range(1, 101):
    # Generate random subject data
    subject_name = "Subject{}".format(i)
    tutor = "Tutor{}".format(i)

    # Insert the subject data into the database
    cur.execute(sql.SQL("INSERT INTO subjects (subject_name, tutor) VALUES ({}, {})").format(
        sql.Literal(subject_name),
        sql.Literal(tutor)
    ))

# Generate 100,000 exam results
for i in range(1, 100001):
    # Generate random exam result data
    student_id = random.randint(1, 100000)
    subject_id = random.randint(1, 100)
    mark = random.randint(0, 100)

    # Insert the exam result data into the database
    cur.execute(sql.SQL("INSERT INTO exam_results (student_id, subject_id, mark) VALUES ({}, {}, {})").format(
        sql.Literal(student_id),
        sql.Literal(subject_id),
        sql.Literal(mark)
    ))

# Commit the changes
conn.commit()

# Close the cursor and connection
cur.close()
conn.close()
