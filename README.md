# KRAttendance

Tired of having to deal with multiple excel spreadsheets and telegram polls for attendance-taking? Fret not, KRAttendance is here! Introducing the first ever NUS Halls CCA Attendance-Taking application!

![Welcome Page](https://user-images.githubusercontent.com/72136453/206855515-efc5cbf7-7a2a-4977-9de9-55b07ce3a330.png)

## Inspiration
I am a Year 3 Computer Science Major staying at Kent Ridge Hall. Having taken on leadership roles, I know the hassle that comes with managing attendance. Be it Telegram Polls or Excel Spreadsheets, it is always a mess when trying to properly keep track of attendance. Thus, I decided to come up with a one-stop-platform to consolidate all hall CCAs related attendance taking all on the same platform.

## What it does
As an **Admin**, you will be able to do the following:
- Create/Edit/Delete CCAs
- Appoint Leaders to CCAs
- Manage CCAs and Residents(Leaders) 

As a **Leader**, you will be able to do the following:
- Create/Edit/Delete Events for CCAs
- Add and Remove members from the CCA
- Update your Attendance for various Events
- View the CCA that you are in 

As a **Resident**, you will be able to do the following:
- Update your Attendance for various Events
- View the CCA that you are in

## How I built it
Built using Ruby on Rails, a full-stack framework. Scaffold generation. I began by first planning what I was going to build, after contemplating for awhile, I decided to build an attendance taking application catered for Hall CCAs. I then started to plan out my database, which took quite awhile as it was quite tricky managing the several associations and relationships. Nevertheless, the effort spent designing the database paid off as it served as the foundation for my technical development phase later on.

## Challenges I ran into
Honestly, there is only so much I can complete in one day. Time was definitely the biggest problem as it forced me to rush out only the essential, basic functionalities. Apart from that, when creating this Attendance-taking application, the hardest part was designing the structure of the database. Furthermore, some time was set aside to record the video and piece everything together for the submission, leaving me with even lesser time to code.

## Accomplishments that I am proud of
I'm glad that I managed to finish the skeleton of KRAttendance in just a mere one day. I also spent a bit of time to make the application look presentable, minimally...

## What I learned
I that planning is of utmost importance when it comes to these kind of one-day hackathons. Time is really tight and it is through proper initial planning that allowed for faster technical development progress behind.

## What's next for KRAttendance
For future developments, given that Heroku free package is no longer available, the first step would be to search for an alternative solution to host this rails application. I have researched a bit and it appears that it is a viable option to deploy on Digital Ocean, given that someone is willing to fork out 5buck a month... :D Apart from that, I plan to integrate the hall point system into KRAttendance as well, which is not impossible and can be easily implemented. Lastly, I will need to work on validations as well as the security of this application. Perhaps use LumiNUS API for authentication and registration purposes.
