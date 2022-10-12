# asp.net-and-c-project


 the following web application is for the registration of students in third year Computer Science;
The course code should be composed of 5 characters and is obligatory;  
The nb of credits of a course is obligatory and should be between 3 and 6;
The Add button allows to add the course code given by the user in the Modules list; Note: only the course
code (e.g. I3301) should be inserted in the list of modules List of Modules (without the nb of credits).
The Clear button allows to empty the textbox code and to initialize the credit nb to zero;
The Register button allows to  
 Insert the selected code of module from the list of modules (except the row “‐‐Code‐‐“)  in the list
Registered Courses (in the section Summary).  
 and to add the nb of credits of this module to the total nb of credits;
The Delete button allows to delete the selected course (except the row “‐‐  Code  ‐‐  “) from the list
Registered Courses (in the section Summary) and to update the total nb of credits;
The Delete All button allows to empty the list Registered Courses of the section Summary (except the row
“ ‐‐ Code‐‐ “)  and to reset (to zero) the total nb of credits;
The 2 buttons UP and Down allow respectively to move the selected course (of the list Registered Courses)
to the previous / next row. The 1st row (“ –Code‐‐“) should not be moved.
Remark :  
The total nb of credits should not exceed 36 credits.
The same course can only be added once to the list of Modules.  
Registration for the same course is not allowed (a student can’t be registered for the same course twice);
this means that a course code can’t be added several times in the list Registered Courses in the section
Summary;
2
The row “ –Code—“ is added manually when the 2 listboxes List of Modules and Registered Courses are
created.
You should find a way to relate the value of the credits number concerning each module to the module
appearing in the list of modules.
