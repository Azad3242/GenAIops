# PetController Class

This class serves as a controller for handling requests related to pets in a pet clinic application.

## Methods

### getAllPets

```java
/**
 * Retrieves all pets belonging to a specific owner.
 * @param ownerId The ID of the owner whose pets are to be retrieved.
 * @return A list of pets belonging to the specified owner.
 */
@GetMapping("/owners/{ownerId}/pets")
public List<Pet> getAllPets(@PathVariable int ownerId) {
    // Method implementation
}
```

### getPetDetails

```java
/**
 * Retrieves details of a specific pet.
 * @param petId The ID of the pet whose details are to be retrieved.
 * @return Details of the specified pet.
 */
@GetMapping("/pets/{petId}")
public Pet getPetDetails(@PathVariable int petId) {
    // Method implementation
}
```

### addNewPet

```java
/**
 * Adds a new pet for a specific owner.
 * @param ownerId The ID of the owner to whom the new pet belongs.
 * @param pet The details of the new pet to be added.
 * @return The newly added pet.
 */
@PostMapping("/owners/{ownerId}/pets")
public Pet addNewPet(@PathVariable int ownerId, @RequestBody Pet pet) {
    // Method implementation
}
```

### updatePetDetails

```java
/**
 * Updates the details of a specific pet.
 * @param petId The ID of the pet whose details are to be updated.
 * @param updatedPet The new details of the pet.
 * @return The updated details of the pet.
 */
@PutMapping("/pets/{petId}")
public Pet updatePetDetails(@PathVariable int petId, @RequestBody Pet updatedPet) {
    // Method implementation
}
```

### deletePet

```java
/**
 * Deletes a specific pet.
 * @param petId The ID of the pet to be deleted.
 */
@DeleteMapping("/pets/{petId}")
public void deletePet(@PathVariable int petId) {
    // Method implementation
}
```

This documentation provides a clear overview of the `PetController` class and its methods for handling pet-related requests in a pet clinic application.