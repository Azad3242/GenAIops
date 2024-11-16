# PetController Class

The `PetController` class is responsible for handling HTTP requests related to pets in the PetClinic application.

## Methods

### `initCreationForm(Model model)`

This method initializes the creation form for a new pet.

- **Parameters:**
  - `model`: The model object to be populated with data.

- **Returns:** None

```java
public String initCreationForm(Model model) {
    // Method implementation
}
```

### `processCreationForm(@Valid Pet pet, BindingResult result, Model model)`

This method processes the form submission for creating a new pet.

- **Parameters:**
  - `pet`: The pet object to be validated.
  - `result`: The binding result of the validation.
  - `model`: The model object to be populated with data.

- **Returns:** A string representing the view name.

```java
public String processCreationForm(@Valid Pet pet, BindingResult result, Model model) {
    // Method implementation
}
```

### `initUpdateForm(@PathVariable("petId") int petId, Model model)`

This method initializes the update form for an existing pet.

- **Parameters:**
  - `petId`: The ID of the pet to be updated.
  - `model`: The model object to be populated with data.

- **Returns:** A string representing the view name.

```java
public String initUpdateForm(@PathVariable("petId") int petId, Model model) {
    // Method implementation
}
```

### `processUpdateForm(@Valid Pet pet, BindingResult result, Owner owner, Model model)`

This method processes the form submission for updating an existing pet.

- **Parameters:**
  - `pet`: The pet object to be validated and updated.
  - `result`: The binding result of the validation.
  - `owner`: The owner object to which the pet belongs.
  - `model`: The model object to be populated with data.

- **Returns:** A string representing the view name.

```java
public String processUpdateForm(@Valid Pet pet, BindingResult result, Owner owner, Model model) {
    // Method implementation
}
```