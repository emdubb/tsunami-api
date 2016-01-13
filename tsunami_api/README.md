# Southern California Tsunami Evacuation Resource API

_**[OVERVIEW](#overview)**_ | 
_**[GETTING STARTED](#start)**_ | 
_**[ENDPOINT REFERENCE](#endpoint)**_ | 
_**[AUTHORIZATION](#auth)**_ | 
_**[DATA MODEL](#model)**_

<a name="overview"></a>
## Overview

This API provides access to materials for emergency planning for tsunami evacuation
in Southern California.

### Technologies Used

* Ruby/Rails
* jBuilder
* jwt
* [PostgreSQL](http://www.postgresql.org/docs/)

<a name="start"></a>
## Getting Started

Run `bundle install`
Serve in terminal with `rails s`

<a name="endpoint"></a>
## Endpoint Reference

Rails Route | HTTP Verb  | Endpoint                                | Access    
:----------:|:----------:|-----------------------------------------|:---------------:
**INDEX**   | `GET`      | `/`                                     | 
**INDEX**   | `GET`      | `/api/users`                            | token required
**CREATE**  | `POST`     | [`/api/users`](#createUser)             | 
**SHOW**    | `GET`      | `/api/users/:id`                        | token required
**UPDATE**  | `PATCH/PUT`| [`/api/users/:id`](#postUser)           | token required
**DESTROY** | `DELETE`   | `/api/users/:id`                        | token required
**INDEX**   | `GET`      | [`/api/users/:id/pins`](#getPins)       | token required
**CREATE**  | `POST`     | [`/api/users/:id/pins`](#createPins)    | token required
**UPDATE**  | `PATCH/PUT`| [`/api/users/:id/pins/:id`](#updatePins)| token required
**DESTROY** | `DELETE`   | `/api/users/:id/pins/:id`               | token required
**INDEX**   | `GET`      | `/api/maps/`                            | 
**CREATE**  | `POST`     | `/api/maps`                             | token required
**SHOW**    | `GET`      | `/api/maps/:id`                         | 
**UPDATE**  | `PATCH/PUT`| `/api/maps/:id`                         | token required
**DESTROY** | `DELETE`   | `/api/maps/:id`                         | token required
**INDEX**   | `GET`      | `/api/cities/`                          | 
**CREATE**  | `POST`     | `/api/cities`                           | token required
**SHOW**    | `GET`      | `/api/cities/:id`                       | 
**UPDATE**  | `PATCH/PUT`| `/api/cities/:id`                       | token required
**DESTROY** | `DELETE`   | `/api/cities/:id`                       | token required
**CREATE**  | `POST`     | `/api/token`                            | email/password required
**SHOW**    | `GET`      | `/api/me`                               | token required


<a name="createUser"></a>
### Create User

**Endpoint**

```POST http://localhost:3000/api/users```

**Request Parameters**

Request Body    | Value
----------------|----------------------
fname           | *Optional.* 
lname           | *Optional.* 
email           | *Required.* 
password        | *Required.* 

**Response Format**

On success, the HTTP status code in the response header is 200 OK and the response body contains a an access token in JSON format. On error, the header status code is an error code and the response body contains a rails error message.

**Example**

```POST http://localhost:3000/api/users```

Request Body

```
{
  "user": { "fname": "John",
            "lname": "Smith",
            "email": "example@email.com",
            "password": "abc123"
          }
}
```

Response

```
{
  "token": "eyJ0eXAiO.eyJlbWFpbCI6CI6MTQ1NTI0MzEwMn0.Q_n317YoeAToPecXZlqaQ"
}
```

<a name="postUser"></a>
### Update User 

**Endpoint**

```PATCH http://localhost:3000/api/users/:id```

**Request Parameters**

Query argument | Value
---------------|------------------------------
`map_id`       | *Optional.* An integer referencing a map id
`add`          | *Optional.* A boolean. Provide this parameter along with a map id to assign a map to the user
`remove`       | *Optional.* A boolean. Provide this parameter along with a map id to remove a map to the user
`default`      | *Optional.* A boolean. Provide this parameter along with a map id change a users default map and corresponding information

To update attrubutes of the user send JSON in the body of the request.

**Response Format**

On success, the HTTP status code in the response header is 200 OK and the response body contains a a success message, the user id, and added/removed map id JSON format. On error, the header status code is an error code and the response body contains a rails error message.

**Example**

```PATCH http://localhost:3000/api/users/4?map_id=1&add=true```

Response

```
{
  "message": "Map added to user",
  "map": 1,
  "user": 4
}
```
<a name="getPins"></a>
### Get Pins

**Endpoint**

```GET http://localhost:3000/api/users/:id```


**Request Parameters**

Query argument | Value
---------------|------------------------------
`map_id`       | *Required.* An integer referencing a map id

**Response Format**

On success, the HTTP status code in the response header is 200 OK and the response body contains all the users pins for the queried map. On error, the header status code is a 404 record not found error.

**Example**

```GET http://localhost:3000/api/users/55/pins?map_id=66```

```
[
  {
    "id": 60,
    "name": "School",
    "address": "456 Grand St",
    "phone": "9172429522",
    "coordinates": null,
    "created_at": "2015-12-17T05:11:26.288Z",
    "updated_at": "2015-12-17T05:11:26.288Z",
    "css_location": null,
    "user_id": 55,
    "map_id": 66
  },
  {
    "id": 61,
    "name": "Nanny",
    "address": "456 Grand St",
    "phone": "9172429522",
    "coordinates": null,
    "created_at": "2015-12-17T05:16:09.058Z",
    "updated_at": "2015-12-17T05:16:09.058Z",
    "css_location": null,
    "user_id": 55,
    "map_id": 66
  }
]
```

<a name="createPins"></a>
### Create Pins

**Endpoint**

```POST http://localhost:3000/api/users/:id/pins```

**Request Parameters**

Query argument | Value
---------------|------------------------------
`map_id`       | *Required.* An integer referencing a map id

**Response Format**

On success, the HTTP status code in the response header is 200 OK and the response body contains a success message and the pin id in JSON format. On error, the header status code is a 404 record not found error.

**Example**

```POST http://localhost:3000/api/users/55/pins?map_id=66```

```
{ 
    "pin": {
      "name": "School",
      "address": "456 Grand St",
      "phone": "9172429522"
    }
}
```

<a name="updatePins"></a>
###Update Pins

Only the name, address, phone, CSS_location, and location may be updated. If the `map_id` or the `user_id` is sent in the request the header status code is a 500 server error.

<a name="auth"></a>
###Authorization

<a name="model"></a>
###Data Models

*User*

Key                   | Value Type       | Description 
----------------------|------------------|----------------------------------
`fname`               | String
`lname`               | String
`email`               | String
`password`            | String
`default_map`         | Integer
`emer_hospital`       | Text
`emer_meeting_area`   | Text
`emer_name1`          | String
`emer_phone1`         | String
`emer_name2`          | String
`emer_phone2`         | String
`emer_name3`          | String
`emer_phone3`         | String

*Map*

Key                   | Value Type       | Description 
----------------------|------------------|----------------------------------
`city_id`             | Integer
`name`                | String
`zone`                | String
`type`                | String
`map_url`             | String
`flood_area_title`    | String
`flood_area_url`      | String
`naval_area_title`    | String
`naval_area_url`      | String
`evac_route_title`    | String
`evac_route_url`      | String
`closure_title`       | String
`closure_url`         | String
`railway_title`       | String
`railway_url`         | String
`biketrail_title`     | String
`biketrail_url`       | String 
`beach_access_title`  | String
`beach_access_url`    | String
`refuge_title`        | String
`refuge_locations`    | String
`refuge_url`          | String
`evacuation_titl`     | String
`evacuation_locations`| String
`evacuation_url`      | String
`landmark_title`      | String
`landmark_url`        | String
`hospital_title`      | String
`hospital_locations`  | String
`hospital_url`        | String

*Pin*

Key                   | Value Type       | Description 
----------------------|------------------|----------------------------------
`name`                | String
`address`             | String
`phone`               | String
`coordinates`         | String

*City*

Key                   | Value Type       | Description 
----------------------|------------------|----------------------------------
`name`                | String
`county`              | String
`twitter`             | String
`email`               | String
`website1`            | String
`website2`            | String
`website3`            | String
`mobile_app`          | String
`facebook`            | String
`station`             | String


---
© 2015 EM DUBB
