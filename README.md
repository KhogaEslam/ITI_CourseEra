# ITI_CourseEra

Ruby on Rails project created as an ITI Ruby on Rails Course Project
(Ruby version 2.3.3p222 - Rails version 5.1.1 - used Rails gem version  4.1.8)

## Steps to run Project
1- download it first for sure :\

2- extract it !

3- cd into MOOC folder

4- run> bundle install

5- run> rake db:migrate

6- run> rake db:seed

7- login as admin with email: **admin@mooc.local** & password: **P@ssw0rd**

8- have fun!

### Used Gems [all available in Gemfile]
- activeadmin
- devise
- cancancan
- draper
- rolify

- bootstrap-sass
- carrierwave
- mini_magick

- ckeditor

- acts_as_votable
- acts_as_commentable

- rspec [installed but not used :'( ]

Trying some activeadmin templates
- active_admin_flat_skin
- font-awesome-sass
- formadmin
- active_skin

- kaminari



##### Screenshots

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/home1.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/courses1.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/courses2.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/courses2_1.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/lectures1_1.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/lectures1_2.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/lecture1_1.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/lecture1_2.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/lecture1_3.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/login.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/signup.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/admin1.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/admin2.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/admin3.png)

![alt tag](https://github.com/KhogaEslam/ITI_CourseEra/blob/master/screenshots/admin4.png)

## Final Project
### Massive Open Online Courses (MOOC)
You are required to design and implement a MOOC website similar to Coursera.

MOOC is simply described as a website where a user can create a course with multiple lectures; and other users can view this course and its lectures.

#### Required Scenarios:
 As a user, I can register with these attributes: name, email, password, date of birth, gender, profile picture. (7 points)

 As a user, I can login using email and password. (7 points)

 As a user, I can create a course with these attributes: title (7 points)

 As a user, I can create a lecture that belongs to a course. Lecture will have these attributes:
content and attachment (uploaded file). (7 points)

 As a user, I can comment on a lecture. (7 points)

 As a user, I can like a lecture. (7 points)

 As an admin, I can CRUD user, course and lecture models. (7 points)

 Write at least two test case for model and two for controller other than the default generated
tests. (7 points)

 Following ruby/rails naming conventions and code readability (4 points)

 As a user, I can flag a lecture as spam. (6 points)

 As a user, I can edit and view the content of the lecture as rich text. (4 points)

#### Extra Scenarios (optional):
 As a user, I can act as an instructor or a regular user. User can create a course or lecture,
only if he acts as an instructor. (6 points)

 Enhanced designed (4 points)

##### Gems to help:
- devise
- carrierwave
- acts_as_votable
- activeadmin
- cancan
- ckeditor_rails

##### Technologies used:
Ruby on Rails is the only minimal requirement

# ToDo
- **[Urgent]** Enable Commenting for Logged In users ONLY
- **[Urgent]** Display Add New Course Button to logged in instructor :O
- **[Urgent]** Display Add New Lecture Button to logged in instructor :'(
- **[Urgent]** Ability class needs some fixes.
- Enhance design (I'm a very bad designer :D )
- Add more details to Course and Lecture models (ex: Lecture's Title :\ ) !
- Create some test cases (Use rspec)
- Add some Seeds !
- Use Video thumbnailer with video Courses
- Provide search feature
- Solve carrierwave mounter_uploaders issue, or use or even implement other way to upload multi files (Attachments)
