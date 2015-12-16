# Southern California Tsunami Evacuation Resource API

## Overview

This API provides access to materials for emergency planning for tsunami evacuation
in Southern California.

## Technologies Used

* Ruby/Rails
* [PostgreSQL](http://www.postgresql.org/docs/)

## Getting Started

Run `bundle install`

## Endpoint Reference

Rails Route | HTTP Verb | Endpoint                      | Access    
:----------:|:---------:|-------------------------------|:---------------:
**INDEX**   | `GET`     | `/`                           | 
**INDEX**   | `GET`     | `/api/users`                  | token required
**CREATE**  | `POST`    | `/api/users`                  | 
**SHOW**    | `GET`     | `/api/users/:id`              | token required
**UPDATE**  | `PATCH`   | [`/api/users/:id`](#postUser) | token required
**UPDATE**  | `PUT`     | `/api/users/:id`              | token required
**DESTROY** | `DELETE`  | `/api/users/:id`              | token required
**INDEX**   | `GET`     | `/api/maps/`                  | 
**CREATE**  | `POST`    | `/api/maps`                   | token required
**SHOW**    | `GET`     | `/api/maps/:id`               | 
**UPDATE**  | `PATCH`   | `/api/maps/:id`               | token required
**UPDATE**  | `PUT`     | `/api/maps/:id`               | token required
**DESTROY** | `DELETE`  | `/api/maps/:id`               | token required
**CREATE**  | `POST`    | `/api/token`                  | 
**SHOW**    | `GET`     | `/api/me`                     | token required

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

**Response Format**

On success, the HTTP status code in the response header is 200 OK and the response body contains a a success message, the user id, and added/removed map id JSON format. On error, the header status code is an error code and the response body contains a rails error message.

**Example**

```PATCH http://localhost:3000/api/users/4?map_id=1&add=true```
```
{
  "message": "Map added to user",
  "map": 1,
  "user": 4
}
```

### Error Codes

Code      | Title                | Reasons for Error
----------|----------------------|----------------------------------
`400`     | Bad Request          | Not sending JSON as the body; malformed JSON (parse errors).
`401`     | Unauthorized         | Failed to send authorization credentials (token); malformed credentials.
`403`     | Forbidden		   	 | Authentication credentials were given, but failed to authorize for this resources.
`404`     | Not Found            |	Route does not exist; used in place of a `403 Forbidden` for many routes so that unique ids are not "leaked".
`422`     | Unprocessable Entity | Sending invalid fields or failing validation on those fields.

###Data Models

*Users*

Key       | Value Type       | Description 
----------|------------------|----------------------------------


---
© 2015 EM DUBB
