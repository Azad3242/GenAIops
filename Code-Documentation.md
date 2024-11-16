# PetController Class

This class is a controller that handles requests related to pets in the Pet Clinic application.

## Methods

### `showPetList()`

This method handles GET requests to display a list of pets for a specific owner.

- **Parameters:** None
- **Returns:** A `String` representing the view name for displaying the list of pets.

### `initCreationForm()`

This method handles GET requests to display a form for adding a new pet.

- **Parameters:** `Model model` - the model to be used for the view
- **Returns:** A `String` representing the view name for the pet creation form.

### `processCreationForm()`

This method handles POST requests to add a new pet to the database.

- **Parameters:**
  - `Pet pet` - the pet object to be added
  - `BindingResult result` - the result of the binding process
- **Returns:** A `String` representing the view name for the pet details page.

### `initUpdateForm()`

This method handles GET requests to display a form for updating an existing pet.

- **Parameters:**
  - `int petId` - the ID of the pet to be updated
  - `Model model` - the model to be used for the view
- **Returns:** A `String` representing the view name for the pet update form.

### `processUpdateForm()`

This method handles POST requests to update an existing pet in the database.

- **Parameters:**
  - `Pet pet` - the updated pet object
  - `BindingResult result` - the result of the binding process
  - `int ownerId` - the ID of the owner of the pet
- **Returns:** A `String` representing the view name for the pet details page after the update.

### `showPet()`

This method handles GET requests to display the details of a specific pet.

- **Parameters:**
  - `int petId` - the ID of the pet to be displayed
  - `Model model` - the model to be used for the view
- **Returns:** A `String` representing the view name for displaying the pet details.

### `processFindForm()`

This method handles POST requests to find pets by their name or type.

- **Parameters:**
  - `Pet pet` - the pet object containing search criteria
  - `BindingResult result` - the result of the binding process
  - `Model model` - the model to be used for the view
- **Returns:** A `String` representing the view name for displaying the search results.

### `populatePetTypes()`

This method populates the model with a list of pet types for selection in forms.

- **Parameters:**
  - `Model model` - the model to be populated with pet types
- **Returns:** None