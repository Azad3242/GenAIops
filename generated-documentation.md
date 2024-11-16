# PetController Class

This class is a controller for handling HTTP requests related to pets in a pet clinic application.

## Methods

### getAllPets

This method handles the HTTP GET request to retrieve all pets belonging to an owner.

#### Parameters
- **ownerId** (int): The ID of the owner whose pets are to be retrieved.

#### Returns
- A list of `Pet` objects belonging to the specified owner.

```java
@GetMapping("/owners/{ownerId}/pets")
public List<Pet> getAllPets(@PathVariable int ownerId) {
    // Method implementation
}
```

### addPet

This method handles the HTTP POST request to add a new pet for an owner.

#### Parameters
- **ownerId** (int): The ID of the owner for whom the pet is being added.
- **pet** (`Pet`): The details of the pet being added.

#### Returns
- The newly added `Pet` object.

```java
@PostMapping("/owners/{ownerId}/pets")
public Pet addPet(@PathVariable int ownerId, @RequestBody Pet pet) {
    // Method implementation
}
```

### updatePet

This method handles the HTTP PUT request to update an existing pet's details.

#### Parameters
- **ownerId** (int): The ID of the owner to whom the pet belongs.
- **petId** (int): The ID of the pet to be updated.
- **updatedPet** (`Pet`): The updated details of the pet.

#### Returns
- The updated `Pet` object.

```java
@PutMapping("/owners/{ownerId}/pets/{petId}")
public Pet updatePet(@PathVariable int ownerId, @PathVariable int petId, @RequestBody Pet updatedPet) {
    // Method implementation
}
```

### deletePet

This method handles the HTTP DELETE request to remove a pet from an owner's list of pets.

#### Parameters
- **ownerId** (int): The ID of the owner from whom the pet is to be deleted.
- **petId** (int): The ID of the pet to be deleted.

```java
@DeleteMapping("/owners/{ownerId}/pets/{petId}")
public void deletePet(@PathVariable int ownerId, @PathVariable int petId) {
    // Method implementation
}
```