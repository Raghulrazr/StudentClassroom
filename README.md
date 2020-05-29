# StudentClassroom
> Build a complete in-app notification system from scratch for a sample classroom website.
The users of this website will be students.

## Table of contents
* [General info](#general-info)
* [Setup](#setup)
* [Code Details](#code-details)
* [Contact](#contact)

## General info
Notifications are triggered when the following happen :
1) A New course is available for a subset of students
2) A class wide notification is triggered by the staff
3) When a friend of a student completes a course
4) A remainder notification when one of enrolled courses is about to start
For the purpose of this project the website will contain a student login.
After login it will contain a student profile page alone with his basic and academic details.
There will be a separate notification menu -- top right corner of the page
The notification system should be scalable for 100000 students.
This will be similar to the notification system available in facebook.
There will be a bell icon which when clicked will show a drop down list of unread notifications.
We should be able to maintain the entire history of notifications for a particular student.
We should maintain metadata at each notification level with read ,unread, clicked, read but not
clicked notification trackers.
Design the Database/Storage and API to meet the requirements of the notification system
mentioned about and integrate with the website FrontEnd.
The notification triggers can be separate apis which can be manually fired.


## Setup
http://localhost/Student_result_management/

## Code Details
index.html - index page of web page.
studentLoginAction - username and password is verified, also new registration is inserted into the database.
studentLogin.html - Enter you username and password of student to login.
StudentProfile.jsp - Acadamic details of student displayed here.
message.jsp - Any notification trigered by the Admin is display.
adminLogin.html - Admin can Login using username and password.
adminProfile.jsp - Admin can view Registered student details, and also can make new registraton for students.
registeredStudent.jsp - Registered student list displayed here.
register1.jsp - registration form which get students details.
adminLoginAction.jsp - username and password is verified, also new message to triger can be inserted.
sendnotifi.html - can type messages and send to student notification tab. 
errorAdminLogin.html - shows incorrect password or username to admin.
errorStudentLogin.html - shows incorrect password or username to student.
StudentDAOImpl - insert student data to database.
AdminDAOImpl - insert messages to data base.

## Contact
Your Name - raghulsenthil6@gmail.com

Project Link: [https://github.com/Raghulrazr/StudentClassroom.git](https://github.com/Raghulrazr/StudentClassroom.git)
