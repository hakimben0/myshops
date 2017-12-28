# myshops

Description :

This is an app that lists shops nearby, using a list of 300 different shops and based on the user's geolocalization.

The app has two types of users : 
- Admin : handles the shops management 
- Customer : views/likes/dislikes a list of nearby shops

The app is divided to two main parts :
- Backend : for admin only, used for shops and users administration.
- Frontend : for customers only, used for displaying/liking/disliking nearby shops.

Requirements : 

This app requires the following tools :
- PHP 5.6 (or newer)
- MySQL 5.7
- Apache Server 2.4

To use the geolocalization, the GeoIP extension should be added to the php.ini file.

Usage :

- Import the database from the shops.sql file.
- Copy the project to the www directory.
- Access the frontend with : .../www/myshops/frontend/web
- Access the backend with : .../www/myshops/backend/web

Admin account : 
- Username : hakim
- Password : 123456

Other details : 

- For roles and access management, the yii2-mdmsoft extension has been added to the app.
- For geolocalization, the yii2-geoip extension has been added to the app.



              
