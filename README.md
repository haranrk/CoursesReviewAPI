# CoursesReviewAPI
The  API version for the courses review app of IIT Madras

Review:
=======
curl -H "Content-Type:application/json; charset=utf-8" -d '{"name":"Bio-tech","label":1}' http://localhost:3000/depts


review GET    /reviews/:id(.:format) reviews#show
        PATCH  /reviews/:id(.:format) reviews#update
        PUT    /reviews/:id(.:format) reviews#update
        DELETE /reviews/:id(.:format) reviews#destroy


Filter:
=======
courses?prof=Ramakrishnan%S  
 - returns courses with profs whose name has "Ramakrishnan"
courses?prof=Ramakrishnan%S&&dept_id=1  

Search:
=======
courses?search="Ar"
 -returns all courses whose names, profs or course numbers, start with 'Ar'