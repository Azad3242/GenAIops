# PetController Class

This class serves as a controller for handling HTTP requests related to pets in a pet clinic application.

## Attributes
- `petService`: A service for managing pet-related operations.

## Constructor
- `PetController(PetService petService)`: Initializes the `petService` attribute with the provided `PetService` object.

## Methods

### getAllPets
```java
@GetMapping("/pets")
public List<Pet> getAllPets() {
    // Method implementation
}
```

- **Description**: Retrieves a list of all pets.
- **HTTP Method**: GET
- **Endpoint**: `/pets`
- **Returns**: List of `Pet` objects.

### getPetById
```java
@GetMapping("/pets/{petId}")
public Pet getPetById(@PathVariable int petId) {
    // Method implementation
}
```

- **Description**: Retrieves a pet by its ID.
- **HTTP Method**: GET
- **Endpoint**: `/pets/{petId}`
- **Parameters**:
  - `petId` (int): ID of the pet to retrieve.
- **Returns**: `Pet` object corresponding to the provided ID.

### addPet
```java
@PostMapping("/pets")
public ResponseEntity<Void> addPet(@RequestBody Pet pet) {
    // Method implementation
}
```

- **Description**: Adds a new pet to the system.
- **HTTP Method**: POST
- **Endpoint**: `/pets`
- **Parameters**:
  - `pet` (Pet): Pet object to be added.
- **Returns**: `ResponseEntity` with a status code indicating the result.

### updatePet
```java
@PutMapping("/pets/{petId}")
public ResponseEntity<Void> updatePet(@PathVariable int petId, @RequestBody Pet pet) {
    // Method implementation
}
```

- **Description**: Updates an existing pet with the provided ID.
- **HTTP Method**: PUT
- **Endpoint**: `/pets/{petId}`
- **Parameters**:
  - `petId` (int): ID of the pet to update.
  - `pet` (Pet): Updated pet object.
- **Returns**: `ResponseEntity` with a status code indicating the result.

### deletePet
```java
@DeleteMapping("/pets/{petId}")
public ResponseEntity<Void> deletePet(@PathVariable int petId) {
    // Method implementation
}
```

- **Description**: Deletes a pet by its ID.
- **HTTP Method**: DELETE
- **Endpoint**: `/pets/{petId}`
- **Parameters**:
  - `petId` (int): ID of the pet to delete.
- **Returns**: `ResponseEntity` with a status code indicating the result.