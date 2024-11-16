# PetController Class

This class is a controller for handling requests related to pets in a pet clinic application.

## Attributes

- `petService`: An instance of the `PetService` class used for interacting with pet data.

## Methods

### `setPetService(PetService petService)`

Sets the `petService` attribute of the class.

- **Parameters**
  - `petService`: An instance of the `PetService` class.

- **Return Type**
  - `void`

### `initCreationForm(ModelMap model)`

Initializes the creation form for adding a new pet.

- **Parameters**
  - `model`: An instance of `ModelMap` used to pass data to the view.

- **Return Type**
  - `String`

### `processCreationForm(@Valid Pet pet, BindingResult result, ModelMap model)`

Processes the form submission for adding a new pet.

- **Parameters**
  - `pet`: A `Pet` object to be added.
  - `result`: An instance of `BindingResult` for validation.
  - `model`: An instance of `ModelMap` used to pass data to the view.

- **Return Type**
  - `String`

### `initUpdateForm(@PathVariable("petId") int petId, ModelMap model)`

Initializes the update form for editing an existing pet.

- **Parameters**
  - `petId`: The ID of the pet to be updated.
  - `model`: An instance of `ModelMap` used to pass data to the view.

- **Return Type**
  - `String`

### `processUpdateForm(@Valid Pet pet, BindingResult result, Owner owner, ModelMap model)`

Processes the form submission for updating an existing pet.

- **Parameters**
  - `pet`: A `Pet` object to be updated.
  - `result`: An instance of `BindingResult` for validation.
  - `owner`: The owner of the pet.
  - `model`: An instance of `ModelMap` used to pass data to the view.

- **Return Type**
  - `String`

### `findOwner(@PathVariable("ownerId") int ownerId)`

Finds the owner of a pet based on the owner's ID.

- **Parameters**
  - `ownerId`: The ID of the owner.

- **Return Type**
  - `Owner`

### `populatePetTypes()`

Populates the list of available pet types.

- **Return Type**
  - `Collection<PetType>`

### `findPetTypes()`

Finds all available pet types.

- **Return Type**
  - `Collection<PetType>`

### `findPet(@PathVariable("petId") int petId)`

Finds a pet based on the pet's ID.

- **Parameters**
  - `petId`: The ID of the pet.

- **Return Type**
  - `Pet`