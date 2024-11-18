# PetController Class

This class is a controller responsible for handling requests related to pets in a pet clinic application.

## Methods

### getAllPets

```java
/**
 * Retrieves all pets for a specific owner.
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
 * @param ownerId The ID of the owner for whom the pet is being added.
 * @param pet The details of the new pet to be added.
 * @return The added pet.
 */
@PostMapping("/owners/{ownerId}/pets")
public Pet addNewPet(@PathVariable int ownerId, @RequestBody Pet pet) {
    // Method implementation
}
```

### updatePetDetails

```java
/**
 * Updates details of a specific pet.
 * @param petId The ID of the pet whose details are to be updated.
 * @param updatedPet The new details for the pet.
 * @return The updated pet details.
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