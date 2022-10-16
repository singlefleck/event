1. Code Commit:

    • Incremental Code commits: Make sure about the incremental commit. No bulk commits.

    • Code Sharing: Post completion, share the code via GitHub.

    • Architecture: Share brief breakdown of your approach of coding this submission, like DB breakdown, API design planning.

    • API documentations: Share the list of all the API. If you use postman, then you can save them as postman collection and share the same.

 

2. README.md:

    This file should include all the information about running the project, including dependency installation steps, URL to access the application.

    

3. API Backend:

    A. Implement CRUD concepts on all the API endpoints. Have an API to deal with the below data sets: 

        • Event Description

        • Event Type

        • Event Date

        • Event Duration

        • Event Host

        • Event Location

        • RSVP Counts

        • RSVP Cancelled Counts

        • List of users interested to attend the event.

        • List of users who cancelled the event.

        • Adding user to the list of confirmed attendees.

        • Removing user from the list of confirmed attendees.

        • List my event calendar.

     B. Design a fixed API URL that will be consistent across your project.

        Ex: http://<SERVER_NAME|SERVER_ADDRESS>[:SERVER_PORT]/api/<USER_TYPE>/<MODULE_NAME/SUB_MODULE_NAME> 

        SERVER_NAME: localhost OR api.ems.com 

        SERVER_ADDRESS: 127.0.0.1 OR 192.168.0.100 

        SERVER_PORT: 4000 (Port number on which your backend is listening on) 

        USER_TYPE: admin OR v1(for non-admin users)

        MODULE_NAME: event 

        SUB_MODULE_NAME: list OR add or update. 

 

        API Example: 

        http://localhost/api/admin/event/list/  -> List all the events, it's an admin view.

        http://localhost/api/admin/event/add/   -> Add an event to the platform. This list should be visible to all users

        http://localhost/api/v1/event/list/     -> List all the events, it's a user view. The different user should have a different value.

        http://localhost/api/v1/event/add/      -> Add an event to my list.

4. DB Backend

    Use Postgres DB to store all the relevant information. Maintain timestamp information for all records. 

