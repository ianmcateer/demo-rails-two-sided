# README

###

1\. Summary

---------------

This app was designed as part of the CoderAcademy assignment to build a two-sided marketplace.

PROBLEM DEFINITION The sale of new and used musical instruments generates an estimated $23 billion in annual sales each year. Other two sided marketplaces like ebay are not specialised for musical equipment and charge users high fees. Furthermore, if users choose to pay through paypal, Paypal recieve a cut of the money. And Ebay owns Paypal. A two sided marketplace catered for muscians that provides no listing fees would mean more profit for sellers. Often times the process of buying and selling musical equipment online can be frustrating.

SOLUTION

The design is based on a two sided marketplace whereby musicians or anyone who wants to sell their musical items can advertise them on the site and any musician who wants to discover new items can come and purchase. The marketplace will have less fees than eBay which means more profits for sellers. The market is niche, catered towards musicians, ranging from all levels from beginner to proffesional and aims to provide a more personalised experience for users. Because it is niche it will work better for unique items.

2\. Installation
----------------

Configuration - you will not have an ENV file as this has been ignored through Git. In order to run the App you will need to create a .env file with your own gmail and stripe API keys and cloudinary keys.

1. Clone the repo then change into the directory.
2. Run `bundle install` in terminal.
3. Run `rails db:migrate` in terminal.
4. Create a `.env` file in the root of the directory, then add your own ENV variables

* CLOUDINARY\_API\_KEY=XXXX
* CLOUDINARY\_API\_SECRET=XXXX
* GMAIL\_USERNAME=XXXX
* GMAIL\_PASSWORD=XXXX
* PUBLISHABLE\_KEY=XXXX
* SECRET\_KEY=XXXX

3\. Requirements
----------------

1. Create your application using Ruby on Rails.
2. Demonstrate knowledge of Rails conventions.
3. Use postgresql database in development.
4. Use an API (e.g. Omniauth, Geocoding, Maps, etc).
5. Use appropriate gems.
6. Use environmental variables to protect API keys etc. (dotenv)
7. Implement a payment system for your product. (e.g. Stripe)
8. Your app must send transactional emails (eg. using Mailgun).
9. Your app will have some type of searching, sorting and/or filtering capability.
10. Your app will have some type of file uploading capability (eg. images).
11. Your app will have authentication (eg. Devise, must have full functionality in place).
12. Your app will have authorisation (users have restrictions on what they can see and edit).
13. Document your application with a README that includes,
  1. Link to your deployed application;
  2. Link to your GitHub repository;
  3. Explains how to setup, configure and use your application.

4\. User Stories
----------------

![Screen Shot 2018-05-10 at 3.23.34 pm.png](/app/assets/images/trello.jpg)


5\. WireFraming
---------------

Index Page

![Screen Shot 2018-05-10 at 11.13.43 am.png](/app/assets/images/index.jpg)

Show Page

![Screen Shot 2018-05-10 at 11.18.22 am.png](/app/assets/images/show.jpg)

Contact Page

![Screen Shot 2018-05-10 at 11.22.22 am.png](/app/assets/images/contact.jpg)

### Manage Listings Page

![Screen Shot 2018-05-10 at 1.46.32 pm.png](/app/assets/images/manage-listings.jpg)

Sales History Page
------------------

![Screen Shot 2018-05-10 at 1.55.07 pm.png](/app/assets/images/sales-history.jpg)



6\. WorkFlow Diagram
--------------------

![IMG\_1410.jpeg](/app/assets/images/workflow-1.jpg)

![IMG\_1411.jpeg](/app/assets/images/workflow-2.jpg)

![IMG\_1412.jpeg](/app/assets/images/workflow-3.jpg)



7\. Entity Relationship Diagram
-------------------------------

![](/app/assets/images/erd.jpg)

8\. List of Tools Used
----------------------

1. Github - Version control, user stories and to assign story points for project management.
2. Rails-ERD gem- ERD
3. postgresql - Database
4. Devise - authentication
5. Rolify - authorisation
6. Bootstrap-SASS - Styling
7. Webhosting - Heroku
8. GMAIL - emails
9. Stripe - payments
10. Balsamiq - wireframing
11. Cloudinary - image uploads
12. dotenv-rails - environmental variables
13. geocoder - longitude latitude geocoding
14. Google Maps - map locations
15. Peer code review

9\. Project Plan
----------------

![](/app/assets/images/project-plan.jpg)

10\. Bugs
---------

Have not yet linked purchases to sellers through stripe yet
