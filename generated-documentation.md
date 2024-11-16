# PetController Class

This class serves as a controller for handling requests related to pets in a pet clinic application.

## Methods

### getAllPets

```java
/**
 * Retrieves a list of all pets belonging to an owner.
 *
 * @param ownerId The ID of the owner whose pets are to be retrieved
 * @return A list of pets belonging to the specified owner
 */
@GetMapping("/owners/{ownerId}/pets")
public List<Pet> getAllPets(@PathVariable int ownerId) {
    // Method implementation
}
```

### getPet

```java
/**
 * Retrieves a specific pet belonging to an owner.
 *
 * @param ownerId The ID of the owner to whom the pet belongs
 * @param petId The ID of the pet to be retrieved
 * @return The pet object with the specified ID
 */
@GetMapping("/owners/{ownerId}/pets/{petId}")
public Pet getPet(@PathVariable int ownerId, @PathVariable int petId) {
    // Method implementation
}
```

### addPet

```java
/**
 * Adds a new pet to an owner's list of pets.
 *
 * @param ownerId The ID of the owner to whom the pet will belong
 * @param pet The pet object to be added
 * @return The added pet object
 */
@PostMapping("/owners/{ownerId}/pets")
public Pet addPet(@PathVariable int ownerId, @RequestBody Pet pet) {
    // Method implementation
}
```

### updatePet

```java
/**
 * Updates an existing pet belonging to an owner.
 *
 * @param ownerId The ID of the owner to whom the pet belongs
 * @param petId The ID of the pet to be updated
 * @param pet The updated pet object
 * @return The updated pet object
 */
@PutMapping("/owners/{ownerId}/pets/{petId}")
public Pet updatePet(@PathVariable int ownerId, @PathVariable int petId, @RequestBody Pet pet) {
    // Method implementation
}
```

### deletePet

```java
/**
 * Deletes a pet belonging to an owner.
 *
 * @param ownerId The ID of the owner to whom the pet belongs
 * @param petId The ID of the pet to be deleted
 */
@DeleteMapping("/owners/{ownerId}/pets/{petId}")
public void deletePet(@PathVariable int ownerId, @PathVariable int petId) {
    // Method implementation
}
```