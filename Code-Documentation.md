# PetController Class

This class is a controller that handles requests related to pets in the Pet Clinic application.

## Methods

### `showPetList()`

This method handles GET requests to display a list of pets for a specific owner.

- **HTTP Method:** GET
- **Request Mapping:** `/owners/{ownerId}/pets`
- **Returns:** A `ModelAndView` object containing the view name `pets/petList`

### `initCreationForm()`

This method handles GET requests to display a form for adding a new pet to an owner.

- **HTTP Method:** GET
- **Request Mapping:** `/owners/{ownerId}/pets/new`
- **Returns:** A `ModelAndView` object containing the view name `pets/createOrUpdatePetForm`

### `processCreationForm()`

This method handles POST requests to process the form submission for adding a new pet to an owner.

- **HTTP Method:** POST
- **Request Mapping:** `/owners/{ownerId}/pets/new`
- **Parameters:**
  - `@Valid`: Indicates that the `Pet` object should be validated
  - `BindingResult`: Holds the results of the validation and binding
- **Returns:** A `String` representing the view name to redirect to

### `initUpdateForm()`

This method handles GET requests to display a form for updating an existing pet.

- **HTTP Method:** GET
- **Request Mapping:** `/owners/{ownerId}/pets/{petId}/edit`
- **Parameters:**
  - `@PathVariable("petId") int petId`: The ID of the pet to be updated
- **Returns:** A `ModelAndView` object containing the view name `pets/createOrUpdatePetForm`

### `processUpdateForm()`

This method handles POST requests to process the form submission for updating an existing pet.

- **HTTP Method:** POST
- **Request Mapping:** `/owners/{ownerId}/pets/{petId}/edit`
- **Parameters:**
  - `@Valid`: Indicates that the `Pet` object should be validated
  - `BindingResult`: Holds the results of the validation and binding
- **Returns:** A `String` representing the view name to redirect to

### `showPet()`

This method handles GET requests to display details of a specific pet.

- **HTTP Method:** GET
- **Request Mapping:** `/owners/{ownerId}/pets/{petId}`
- **Parameters:**
  - `@PathVariable("petId") int petId`: The ID of the pet to display
- **Returns:** A `ModelAndView` object containing the view name `pets/petDetails`

### `populatePetTypes()`

This method populates the model with a list of pet types for use in forms.

- **Returns:** A `Collection<String>` containing the pet types

### `findOwner()`

This method finds the owner with the given ID.

- **Parameters:**
  - `@PathVariable("ownerId") int ownerId`: The ID of the owner to find
- **Returns:** An `Owner` object representing the owner with the given ID

### `initBinder()`

This method customizes data binding for web data.

- **Parameters:**
  - `WebDataBinder dataBinder`: The data binder to customize

## Dependencies

- `Pet`: Represents a pet in the Pet Clinic application
- `Owner`: Represents an owner in the Pet Clinic application
- `ModelAndView`: Represents a model and view object in Spring Framework
- `BindingResult`: Holds the results of the validation and binding
- `Collection<String>`: Represents a collection of strings

## Usage

This class is used to handle requests related to pets in the Pet Clinic application.