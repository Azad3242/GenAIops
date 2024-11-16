# PetController Class

This class is a controller responsible for handling requests related to pets in the Pet Clinic application.

## Methods

### getAllPets

This method retrieves all pets for a specific owner.

#### Parameters
- `ownerId` - The ID of the owner whose pets are to be retrieved.

#### Returns
- A list of pets belonging to the specified owner.

```java
@GetMapping("/owners/{ownerId}/pets")
public List<Pet> getAllPets(@PathVariable int ownerId) {
    // Method implementation
}
```

### addPet

This method adds a new pet to the specified owner.

#### Parameters
- `ownerId` - The ID of the owner to whom the pet belongs.
- `pet` - The pet object to be added.

#### Returns
- The added pet object.

```java
@PostMapping("/owners/{ownerId}/pets")
public Pet addPet(@PathVariable int ownerId, @RequestBody Pet pet) {
    // Method implementation
}
```

### updatePet

This method updates an existing pet for the specified owner.

#### Parameters
- `ownerId` - The ID of the owner to whom the pet belongs.
- `petId` - The ID of the pet to be updated.
- `updatedPet` - The updated pet object.

#### Returns
- The updated pet object.

```java
@PutMapping("/owners/{ownerId}/pets/{petId}")
public Pet updatePet(@PathVariable int ownerId, @PathVariable int petId, @RequestBody Pet updatedPet) {
    // Method implementation
}
```

### deletePet

This method deletes a pet for the specified owner.

#### Parameters
- `ownerId` - The ID of the owner to whom the pet belongs.
- `petId` - The ID of the pet to be deleted.

```java
@DeleteMapping("/owners/{ownerId}/pets/{petId}")
public void deletePet(@PathVariable int ownerId, @PathVariable int petId) {
    // Method implementation
}
```