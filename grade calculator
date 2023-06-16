exam_one = int(input("Input exam grade one: "))
exam_two = int(input("Input exam grade two: "))
exam_three = int(input("Input exam grade three: "))

grades = [exam_one, exam_two, exam_three] # add missing commas between elements
sum_grades = 0 # avoid using sum as variable name as it is a built-in function
for grade in grades:
  sum_grades += grade # use the shorthand notation

avg = sum_grades / len(grades)

if avg >= 90:
    letter_grade = "A"
elif avg >= 80 and avg < 90: # add missing colon and fix comparison operator
    letter_grade = "B"
elif avg >= 70 and avg < 80: # fix the range and typo
    letter_grade = "C"
elif avg >= 60 and avg < 70: # fix the range
    letter_grade = "D"
else: # fix syntax error
    letter_grade = "F"

for grade in grades:
    print("Exam: " + str(grade))

print("Average: " + str(avg))
print("Grade: " + letter_grade)

if letter_grade == "F": # fix typo and use == instead of is
    print("Student is failing.")
else:
    print("Student is passing.") # add parentheses to print statements

