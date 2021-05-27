# Michael Dart - T2A2 Assignment - Marketplace Project
## **Installation, Setup and Access**

1. Fork repository in Git Hub
2. Clone forked repository

*Once cloned to your local machine, open up the application and alter the below file and save*
<br>

3. Check Database creditentials in file ```\config\database.yml```
<br>

   During production, the developer's machine used certain creditentials including ```Port 5433``` for PostgreSQL
<br>
  Please check lines 23, 24 and 25 (snippet below) and update the credentials as needed.

    ```rb
    username: blanked out
    password: blanked out
    port: 5433
    ```
<br>

*In the command line follow these steps:*

4. Install any Gems by running: ```bundle install```
5. Check node dependencies: ```yarn install --check files``` 
6. Create the database: ```rails db:create```
7. Run the database migrations: ```rails db:migrate```

<br>

**Test Login Details**

**Test User 1** - ***with admin access***
<br>
Login: michael@test.com
<br>
Password: qwerty
<br>
<br>
**Test User 2** - ***general user***
<br>
Login: michael1@test.com
<br>
Password: qwerty
<br>
<br>

**Walkthrough Video**

A walk through video has been provided and is stored in the ```/docs``` folder. It is labled **Marketplace_walkthrough_video**
<br>
<br>

## **ADDTIONAL NOTES**
<br>

***Sign-up function*** during production this function was working to it's full abilities however, after a double check on 20 Mar, the function wasn't working. I didn't alter the code for the registrations form past the initial styling, after which it was working.

<br>

***Checkout*** the checkout button to go to Stripe may or may not work. You may have to refresh the page then click on it to be redirected to Stripe.

<br>
<br>

## **R7** - *Purpose of the Market Place*
<br>

This application has built to provide an easy way for aviation enthusiasts to sell and purchase model aircraft in one single secure marketplace.

## **R8** - *Why does this marketplace need to be built*
<br>

Aviation models can be rather rare and sort after for some of them whilst others are more common and available through many different sources. This marketplace aims to for the seller and buyers to transact in one single area.

## **R9** - *Deployment*
<br>
This application has been deployed using the third party service of Heroku.

You can find the deployed application [here]()

<!-- **Name of Deployment:** mdart86/MichaelDart_T2A2-2 -->

<br>

## **R10** - *GitHub Repository*
You can find the full repository [here](https://github.com/mdart86/MichaelDart_T2A2)
<br>

**Name of Repository:** mdart86/MichaelDart_T2A2

<br>

## **R11** - *Marketplace Description*

**Purpose**
To provide a secure, one-stop marketplace for aviation enthusiats to sell and purchase aviation models
<br>
<br>

**Functionality/Features**
<br>
Authentication *(with the help of Devise)* to provide a user access solution to protect data. This solution also has a timeoutable feature to limit the time of a user session and a logout feature to allow the user to "destroy" or end their session.
<br>
<br>

Authorisation *(with the help of Rolify)* to limit access to tasks based on the Users role.

The application also limits CRUD (Create, Read, Update and Destroy) functionalities to either the user with an admin role or the user who created the item for updating/destory items.
<br>
<br>

**Sitemap**

![image](https://user-images.githubusercontent.com/72178242/111865266-c3ac5580-89b1-11eb-997f-d0fbbeb13657.png)

<br>
<br>

**Target Audience**
<br>
This application appeals to any aviation enthusiasts that wants to sell and/or buy aircraft models in a safe area with the aims of it being a one-stop solution for all aircraft models
<br>
<br>

**Tech Stack**
  - [Ruby on Rails](https://rubyonrails.org/) - Main Application Framework to handle the Models, Views and Controllers
  - [PostgreSQL](https://www.postgresql.org/) - for the database
  - [HTML](https://html.spec.whatwg.org/) - (including Embedded Ruby - ERB) - for views
  - [CSS and SASS](https://www.w3.org/TR/CSS/#css) - for styling
  - [Bootstrap - for styling (a framework)](https://getbootstrap.com/) - for styling
  - [Heroku](https://www.heroku.com/) - for deployment
  - [Devise](https://github.com/heartcombo/devise) -  for authentication
  - [Rolify](https://github.com/RolifyCommunity/rolify) - for authorisation
  - [Cloudinary](https://github.com/cloudinary) - for active storage
  - [Stripe](https://github.com/stripe) - for payment services
<br>
<br>

## **R12** - *User Stories*

***User Story 1 - Sign-up***
<br>
As a new user,
<br>
When I visit the page, I want to have the option to create an account,
<br>
Then I can sell or purchase items
<br>
<br>

***User Story 2 - Sign-In/Forgot Your Password***
<br>
As a new user,
<br>
When I visit the page, I want to have the option to sign in,
<br>
Also I want the option to reset my password if I forget it.
<br>
<br>

***User Story 3 - Login***
<br>
As a registered user,
<br>
When I sign-in I want to see the main page,
<br>
Then, have the option to view my profile 
<br>
<br>

***User Story 4 - Browsing and Purchasing on Website***
<br>
As a registered user,
<br>
When I sign-in, I want the option to browse the items for sale
<br>
Then have the option to purchase an item
<br>
And be redirected back to my purchased items
<br>
<br>

## **R13** - *Wireframes*
<br>

***Mobile View***
<br>

![Wireframes - Mobile View - 1](https://user-images.githubusercontent.com/72178242/111856735-9beccb80-8978-11eb-96ec-5220d5898ba5.jpg)
![Wireframes - Mobile View - 2](https://user-images.githubusercontent.com/72178242/111856736-9ee7bc00-8978-11eb-8428-8e248549ddac.jpg)

<br>

***Tablet View***
<br>

![Wireframes - Tablet View - 1](https://user-images.githubusercontent.com/72178242/111856746-ab6c1480-8978-11eb-9e2c-c2fb7cc1b7d7.jpg)
![Wireframes - Tablet View - 2](https://user-images.githubusercontent.com/72178242/111856749-ad35d800-8978-11eb-9bcd-feed2fcb116a.jpg)

<br>

***Desktop View***
<br>

![Wireframes - Desktop View - 1](https://user-images.githubusercontent.com/72178242/111856756-b626a980-8978-11eb-9264-3316e98731ed.jpg)
![Wireframes - Desktop View - 2](https://user-images.githubusercontent.com/72178242/111856757-b757d680-8978-11eb-99b8-719e80166a91.jpg)
![Wireframes - Desktop View - 3](https://user-images.githubusercontent.com/72178242/111856758-b757d680-8978-11eb-9ce4-753d1e9b5c72.jpg)

<br>

## **R14** - *Entity Relationship Design (ERD)*
<br>

***Original Plan***
<br>

![Marketplace_ERD_Original](https://user-images.githubusercontent.com/72178242/111857158-5a115480-897b-11eb-81a2-b225c0da1556.jpg)

<br>

***Final Plan***
<br>

![image](https://user-images.githubusercontent.com/72178242/111862012-2ac00f00-899e-11eb-90de-5c3e60700151.png)

<br>

## **R15** - *High Level Compenents*

The application is built using the Rails Framework which follows a MVC structure. MVC stands for Models, Views and Controller.
<br>

In this application we have:
<br>

**Models**

User - for the Users - you can think of this as the main model as it has a relationship with most models (excluding address model, this is connected to the User_Profile model)

Role - for the roles that are assigned to users

User_Profile - for the user profile which also has a nested form, accepting nested attributes from the Address model

Address - for the address information of a user profile

Product - for the products information

Orders - for items ordered

<br>
Each model is responsible for talking to the database, which it extracts information from when a user (via the view) initiates an action handled by the controller.

<br>
<br>
<br>

**Views**
<br>
Users
The Users view is responsible for handling the authentication process (sign-in, sign-up, forgot your password). Through the authentication solution of Devise (and Rails magic), when a user submits an action it will ask the model to connect to the database, extracting and verifying their credentials or creating their creditentials (upon sign-up).

<br>
<br>

User Profile and Products

Both these areas have similar functions where they use the CRUD (create, read, update and destroy) functionalites to perform actions.
<br>
<br>

**Create**
<br>
In this area, the user can either create their profile or a product to sell. The create profile function is an action within the controller that passes the information the user has entered into the database. The model responsbile for capturing this information, checking it (along with any validations or relationships) and sending it to the database.

<br>
<br>

**Read**
<br>
This is where a user (or an authorised user, depending on the function) has the ability to see their user profile or product. When the action in the controller is initiated, the model will extract the information request and display it to the user in the view.

<br>
<br>

**Update**
<br>
This one is very similar to create, the main difference here is the user is updating existing that that exists within the database. The controllers and models perform actions in the same way.

<br>
<br>

**Destroy**
A destroy function, or better called delete allows the user to destroy an item that exists within the database. In this case, the users have the ability (depending on their authorisation) to delete a profile or product. When the user requests this via the view, the controller action method is initiated to ask the model to remove this item from the database. At this point the item is removed as long as it doesn't have any dependicies on other models

<br>
<br>

**Controllers**
<br>
When the user submits an actioned in the view (one of the CRUD actions for example) it will either send the action to the model (for creating, updating and destroy) to update the database or it will send the information (for reading and updating) to the view as the user is requesting it.

In this application, this happens in most areas of the application, through the User Profile area or the Sellers/Buying area.

<br>
<br>

**Partial**
<br>
A partial (or sometimes called Shared) is the parts of the application that are reused in multiple areas. 

A good example of this is Navigation bars or Forms. Nav bars rarely change accross multiple screens and there for are invoked into a view page from a partial file, this file can used in multiple views without having to reuse the code, making it easier for developers and limiting duplicating code.

<br>

The same can go for a form. A form can be similar for multiple purposes, the best example is for creating and updating, as the fields are the same. Rather than re-write code, a developer can envoke a form into a view, and with some logic, can customise it (for eg. prepopulate fields for editing) when required.

<br>
<br>

## **R16** - *Third Party Services*
<br>

- [PostgreSQL](https://www.postgresql.org/) - for the database
- [Heroku](https://www.heroku.com/) - for deployment
- [Devise](https://github.com/heartcombo/devise) -  for authentication
- [Rolify](https://github.com/RolifyCommunity/rolify) - for authorisation
- [Cloudinary](https://github.com/cloudinary) - for active storage
- [Stripe](https://github.com/stripe) - for payment services
- [Trello](https://trello.com/en) - for project management

<br>
<br>

## **R17** - *Models and Relationships*

**User Model**
<br>

The *user* model *has_one* relation to the *user_profile* model

The *user* model *has_many* relations to the *role* model

The *user* model *has_many* relations to the *products* model

The *user* model *has_many* relations to the *orders* model
<br>
<br>


**User Profile Model**
<br>

The *user_profile* model *belongs_to* the *user* model 

THe *user_profile* model *has_one* relation to the *Address* model
<br>
<br>

**Address Model**
<br>

The *address* model *belongs_to* the *user_profile* model 
<br>
<br>

**Role Model**
<br>

The *role* model *has_and_belongs_to_many* of the *user* model 
<br>
<br>

**Product Model**
<br>

The *product* model *belongs_to* the *user* model 

The *product* model *has_one_attached* ```picture``` - via active storage
<br>
<br>

**Order Model** - *to be implemented*
<br>

The *order* model *belongs_to* the *user* model 
<br>
<br>

## **R18** - *Database Relations*

**Users Table**

With Roles Table - *Many* (mandatory) to *Many* (Optional) relationship

With UserProfiles Table - *One* to *One* relationship

With Products Table - *One* to *Many (optional)* relationship

With Orders Table - *One* to *Many (optional)* relationship

<br>

**Primary Key** - User_ID

**Forgein Key/s** - User_ID and Email

<br>
<br>


**Roles Table**

With Users Table - *Many* (optional) to *Many* (Mandatory) relationship

<br>

**Primary Key** - User_ID

**Forgein Key** - User_ID

<br>
<br>


**User Profiles Table**

With Users Table - *One* to *One* relationship

With Addresses Table - *One* to *One* relationship

<br>

**Primary Key** - UserProfile_ID

**Forgein Key/s** - UserProfile_ID and Email

<br>
<br>

**Address Table**

With Users Table - *One* to *One* relationship

<br>

**Primary Key** - Address_ID

**Forgein Key/s** - UserProfile_ID

<br>
<br>

**Products Table**

With Users Table - *Many (optional)* to *One* relationship

With Orders Table - *Many (optional)* to *Many (optional)* relationship

<br>

**Primary Key** - Item_ID

**Forgein Key/s** - User_ID

<br>
<br>

**User Order Items**

With Users Table - *Many (optional)* to *One* relationship

With Products Table - *Many (optional)* to *Many (optional)* relationship

<br>

**Primary Key** - Order_ID

**Forgein Key/s** - Item_ID and User_ID

<br>
<br>

## **R19** - *Database Schema Design*

```rb
ActiveRecord::Schema.define(version: 2021_03_17_080651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # This table is was generated from the Create_Active_Storage_Tables.Active_Store migration which is used to store images with a cloud storage provider
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  # this table was generated from the migration, create_address
  create_table "addresses", force: :cascade do |t|
    t.string "street_number"
    t.string "street_name"
    t.string "suburb"
    t.string "state"
    t.string "postcode"
    t.bigint "user_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_profile_id"], name: "index_addresses_on_user_profile_id"
    # The t.index line references the UserProfile table which is the foreign key and helps associate the has_one relationship stated in thee user_profile model
  end


  # This is generated from the migration of create_orders
  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "quantity"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
    # The t.index line references the User table which is the foreign key to the User of which an order belongs to
  end

  # This table is genrated fromt he migration of create_productions
  create_table "products", force: :cascade do |t|
    t.string "name", limit: 30
    t.text "description"
    t.decimal "price", precision: 8, scale: 2
    t.string "condition", limit: 30
    t.string "scale", limit: 20
    t.string "aircraft_model", limit: 30
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end
  # The t.index line references the User table which is the foreign key to the User of which a product belongs to
  

  # This table was generated from the rolify_create_roles migration using a third party provider for authorisation, Rolify which is a gem in this application
  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end
  # The t.index lines here reference the User table of which the rolify sets within the User Model

  # This was created from the user_profiles migration
  create_table "user_profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "contact_number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end
  # The t.index line here references the User model of which a has one relationship is in place

  # This table was generated from the devise_create_users migration when the devise authenication solution was implemented
  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "user_profiles"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "users"
  add_foreign_key "user_profiles", "users"
end
```
<br>
<br>

## **R20** - *Project Management*

You can find the the way the project was tracked and managed via [here](https://trello.com/b/BF7F57Lx/marketplace-project)
<br>

**Name of Trello Board:** Marketplace Project
