
#Plumber API----

## plumber ----
if (require("plumber")) {
  require("plumber")
} else {
  install.packages("plumber", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

# Create a REST API using Plumber ----
# REST API stands for Representational State Transfer Application Programming
# Interface. It is an architectural style and a set of guidelines for building
# web services that provide interoperability between different systems on the
# internet. RESTful APIs are widely used for creating and consuming web
# services.

## Principles of REST API ----

### 1. Stateless ----
# The server does not store any client state between requests. Each request from
# the client contains all the necessary information for the server to understand
# and process the request.

### 2. Client-Server Architecture ----
# The client and server are separate entities that communicate over the
# Internet. The client sends requests to the server, and the server processes
# those requests and sends back responses.

### 3. Uniform Interface ----
# REST APIs use a uniform and consistent set of interfaces and protocols. The
# most common interfaces are based on the HTTP protocol, such as GET (retrieve
# a resource), POST (create a new resource), PUT (update a resource), DELETE
# (remove a resource), etc.

### 4. Resource-Oriented ----
# REST APIs are based on the concept of resources, which are identified by
# unique URIs (Uniform Resource Identifiers). Clients interact with these
#  resources by sending requests to their corresponding URIs.

### 5. Representation of Resources ----
# Resources in a REST API can be represented in various formats, such as JSON
# (JavaScript Object Notation), XML (eXtensible Markup Language), YAML (YAML
# Ain't Markup Language) or plain text. The server sends the representation of
# a resource in the response to the client.


# REST APIs are widely used for building web services that can be consumed by
# various client applications, such as web browsers, mobile apps, or other
# servers. They provide a scalable and flexible approach to designing APIs that
# can evolve over time. Developers can use RESTful principles to create APIs
# that are easy to understand, use, and integrate into different systems.

# When working with a REST API, clients typically send HTTP requests to
# specific endpoints (URLs) provided by the server, and the server responds
# with the requested data or performs the requested actions. The communication
# between client and server is based on the HTTP protocol, making REST APIs
# widely supported and accessible across different platforms and programming
# languages.

# In summary, a REST API is a set of rules and conventions for building web
# services that follow the principles of REST. It provides a standardized and
# scalable way for systems to communicate and exchange data over the internet.

# This requires the "plumber" package that was installed and loaded earlier in
# STEP 1. The commenting below makes R recognize the code as the definition of
# an API, i.e., #* comments.

loaded_irrigation_model_lda <- readRDS("./models/IrrigationScheduling_caret_model_lda.rds")

#* @apiTitle Irrigation Scheduling  Model API

#* @apiDescription Used to predict whether the soil is very wet,very dry,dry or wet.

#* @param arg_id
#* @param arg_temperature 
#* @param arg_pressure 
#* @param arg_altitude 
#* @param arg_soilmiosture
#* @param arg_note 
#* @param arg_status 


#* @get /irrigation

  # Create a REST API using Plumber ----
# REST API stands for Representational State Transfer Application Programming
# Interface. It is an architectural style and a set of guidelines for building
# web services that provide interoperability between different systems on the
# internet. RESTful APIs are widely used for creating and consuming web
# services.

## Principles of REST API ----

### 1. Stateless ----
# The server does not store any client state between requests. Each request from
# the client contains all the necessary information for the server to understand
# and process the request.

### 2. Client-Server Architecture ----
# The client and server are separate entities that communicate over the
# Internet. The client sends requests to the server, and the server processes
# those requests and sends back responses.

### 3. Uniform Interface ----
# REST APIs use a uniform and consistent set of interfaces and protocols. The
# most common interfaces are based on the HTTP protocol, such as GET (retrieve
# a resource), POST (create a new resource), PUT (update a resource), DELETE
# (remove a resource), etc.

### 4. Resource-Oriented ----
# REST APIs are based on the concept of resources, which are identified by
# unique URIs (Uniform Resource Identifiers). Clients interact with these
#  resources by sending requests to their corresponding URIs.

### 5. Representation of Resources ----
# Resources in a REST API can be represented in various formats, such as JSON
# (JavaScript Object Notation), XML (eXtensible Markup Language), YAML (YAML
# Ain't Markup Language) or plain text. The server sends the representation of
# a resource in the response to the client.


# REST APIs are widely used for building web services that can be consumed by
# various client applications, such as web browsers, mobile apps, or other
# servers. They provide a scalable and flexible approach to designing APIs that
# can evolve over time. Developers can use RESTful principles to create APIs
# that are easy to understand, use, and integrate into different systems.

# When working with a REST API, clients typically send HTTP requests to
# specific endpoints (URLs) provided by the server, and the server responds
# with the requested data or performs the requested actions. The communication
# between client and server is based on the HTTP protocol, making REST APIs
# widely supported and accessible across different platforms and programming
# languages.

# In summary, a REST API is a set of rules and conventions for building web
# services that follow the principles of REST. It provides a standardized and
# scalable way for systems to communicate and exchange data over the internet.

# This requires the "plumber" package that was installed and loaded earlier in
# STEP 1. The commenting below makes R recognize the code as the definition of
# an API, i.e., #* comments.


predict_irrigation <-
  function(arg_id, arg_temperature, arg_pressure, arg_altitude, arg_soilmiosture,
           arg_note, arg_status) {
    # Create a data frame using the arguments
    to_be_predicted <-
      data.frame(id = as.numeric(arg_id),
                 temperature = as.numeric(arg_temperature),
                 pressure = as.numeric(arg_pressure),
                 altitude = as.numeric(arg_altitude),
                 soilmiosture = as.numeric(arg_soilmiosture),
                 note = as.numeric(arg_note),
                 status = as.numeric(arg_status))
    
    # Make a prediction based on the data frame
    predict(loaded_irrigation_model_lda, to_be_predicted)
  }

predict_diabetes <-
  function(arg_pregnant, arg_glucose, arg_pressure, arg_triceps, arg_insulin,
           arg_mass, arg_pedigree, arg_age) {
    # Create a data frame using the arguments
    to_be_predicted <-
      data.frame(pregnant = as.numeric(arg_pregnant),
                 glucose = as.numeric(arg_glucose),
                 pressure = as.numeric(arg_pressure),
                 triceps = as.numeric(arg_triceps),
                 insulin = as.numeric(arg_insulin),
                 mass = as.numeric(arg_mass),
                 pedigree = as.numeric(arg_pedigree),
                 age = as.numeric(arg_age))
    # Make a prediction based on the data frame
    predict(loaded_diabetes_model_lda, to_be_predicted)
  }
