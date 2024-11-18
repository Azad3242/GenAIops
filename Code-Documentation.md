# PetController.java

This file contains the `PetController` class, which is responsible for handling HTTP requests related to pets in a pet clinic application.

## Class `PetController`

### Constructors

- `PetController(PetRepository petRepository, OwnerRepository ownerRepository)`

    Constructor for the `PetController` class that initializes the `PetRepository` and `OwnerRepository`.

### Methods

- `initCreationForm(Model model, Owner owner)`

    This method initializes the creation form for a new pet and adds it to the model.

    ```java
    public String initCreationForm(Model model, Owner owner) {
        // Method implementation
    }
    ```

- `processCreationForm(@Valid Pet pet, BindingResult result, Model model, Owner owner)`

    Processes the form submission for creating a new pet, performs validation, and adds the pet to the owner.

    ```java
    public String processCreationForm(@Valid Pet pet, BindingResult result, Model model, Owner owner) {
        // Method implementation
    }
    ```

- `initUpdateForm(int petId, Model model)`

    Initializes the update form for an existing pet with the given `petId` and adds it to the model.

    ```java
    public String initUpdateForm(int petId, Model model) {
        // Method implementation
    }
    ```

- `processUpdateForm(@Valid Pet pet, BindingResult result, Owner owner, Model model)`

    Processes the form submission for updating an existing pet, performs validation, and updates the pet details.

    ```java
    public String processUpdateForm(@Valid Pet pet, BindingResult result, Owner owner, Model model) {
        // Method implementation
    }
    ```

- `findOwner(@PathVariable("ownerId") int ownerId)`

    Finds the owner with the specified `ownerId`.

    ```java
    public Owner findOwner(@PathVariable("ownerId") int ownerId) {
        // Method implementation
    }
    ```

- `findPet(@PathVariable("petId") int petId)`

    Finds the pet with the specified `petId`.

    ```java
    public Pet findPet(@PathVariable("petId") int petId) {
        // Method implementation
    }
    ```

- `setAllowedFields(WebDataBinder dataBinder)`

    Sets the allowed fields for data binding.

    ```java
    @InitBinder
    public void setAllowedFields(WebDataBinder dataBinder) {
        // Method implementation
    }
    ```

- `populatePetTypes()`

    Populates the available pet types.

    ```java
    @ModelAttribute("types")
    public Collection<PetType> populatePetTypes() {
        // Method implementation
    }
    ```

- `populateOwners()`

    Populates the available owners.

    ```java
    @ModelAttribute("owners")
    public Collection<Owner> populateOwners() {
        // Method implementation
    }
    ```

- `initBinder(WebDataBinder dataBinder)`

    Initializes the data binder for web requests.

    ```java
    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        // Method implementation
    }
    ```

This class provides functionality to manage pets in the pet clinic application, including creating, updating, and retrieving pet information.