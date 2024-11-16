# PetController Class

This class is responsible for handling HTTP requests related to pets in the Pet Clinic application.

## Methods

### getAllPets

```java
/**
* Retrieves a list of all pets for a specific owner.
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
* @param ownerId The ID of the owner who owns the pet.
* @param petId The ID of the pet to retrieve details for.
* @return Details of the specified pet.
*/
@GetMapping("/owners/{ownerId}/pets/{petId}")
public Pet getPetDetails(@PathVariable int ownerId, @PathVariable int petId) {
    // Method implementation
}
```

### addNewPet

```java
/**
* Adds a new pet for a specific owner.
* @param ownerId The ID of the owner to whom the pet belongs.
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
* @param ownerId The ID of the owner who owns the pet.
* @param petId The ID of the pet to update.
* @param updatedPet The updated details of the pet.
* @return The updated pet details.
*/
@PutMapping("/owners/{ownerId}/pets/{petId}")
public Pet updatePetDetails(@PathVariable int ownerId, @PathVariable int petId, @RequestBody Pet updatedPet) {
    // Method implementation
}
```

### deletePet

```java
/**
* Deletes a specific pet.
* @param ownerId The ID of the owner who owns the pet.
* @param petId The ID of the pet to delete.
*/
@DeleteMapping("/owners/{ownerId}/pets/{petId}")
public void deletePet(@PathVariable int ownerId, @PathVariable int petId) {
    // Method implementation
}
```