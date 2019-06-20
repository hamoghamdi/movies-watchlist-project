# ![GA Logo](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) 

# Movies Watchlist Project

## Description
The second student project of the Web Development Immersive course offered through Misk Academy in partnership with General Assembly.

This project provide users the ability to explore a movies list and add them to their watchlist, as watched, plan to watch and favorite.

## Technologies Used
- Ruby on rails
- bootstap 
- Devise

## Planning
### **Version 1**
**User Requirements**
- User must be able to log in
- User must be able to sign up
- User must be able to sign out
- User must be able to change their password
- User must be able to cancel their account
- User must be able to log in

**Project Objectives**
- User must be able to view list of movies
- User must be able to add, view, edit and delete a movie
- User must be able to update and delete records from their watchlist

### **Version 2**
**Project Objectives Altered**
- User must be able to view list of movies
- User must be able to add a movie to their watchlist
- User must be able to update and delete records from their watchlist

**Resources and associations**

`Users` -|--< `User_Movies` >--|- `Movies`

<table style="display:inline">
  <th colspan="2" style="text-align:center">Users</th>
  <th colspan="2" style="text-align:center">
  User_movies
  </th>
  <th colspan="2" style="text-align:center">
  Movies
  </th>
  <tr>
    <td>id</td>
    <td>primary key</td>
    <td>id</td>
    <td>primary key</td>
    <td>id</td>
    <td>primary key</td>
  </tr>
  <tr>
    <td>email</td>
    <td>string</td>
    <td>status</td>
    <td>string</td>
    <td>title</td>
    <td>string</td>
  </tr>
  <tr>
    <td>password</td>
    <td>string</td>
    <th>user_id</th>
    <th>foreign key</th>
    <td>director</td>
    <td>string</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <th>movie_id</th>
    <th>foreign key</th>
    <td>description</td>
    <td>text</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <th></th>
    <th></th>
    <td>year</td>
    <td>integer</td>
  </tr>
</table>


## Development process
- Database design
- Wireframes
- psudocode
- using rails query interface to fill in movies table 
- Heroku for deployment

**Added Feature**
- An open source code that views a random video/text movie quote

## Resources
- [Random Movie Quotes](https://codepen.io/mca62511/pen/wMZzZg)

## Heroku Demo
- [My Movies Watchlist](https://mysterious-journey-89838.herokuapp.com/)