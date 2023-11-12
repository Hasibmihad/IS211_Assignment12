
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT
);


CREATE TABLE Quizzes (
    quiz_id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject TEXT,
    num_questions INT,
    quiz_date DATE
);


CREATE TABLE Results (
    result_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INT,
    quiz_id INT,
    score INT CHECK (score >= 0 AND score <= 100),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (quiz_id) REFERENCES Quizzes(quiz_id)
);
