# PetController Class

This class is a controller that handles HTTP requests related to pets in a pet clinic application.

## Methods

### getAllPets

This method retrieves all pets for a specific owner.

#### Parameters
- `ownerId` (int): The ID of the owner whose pets are to be retrieved.

#### Returns
- `List<Pet>`: A list of pets belonging to the specified owner.

```java
@GetMapping("/owners/{ownerId}/pets")
public List<Pet> getAllPets(@PathVariable int ownerId) {
    // Method implementation
}
```

### addPet

This method adds a new pet for a specific owner.

#### Parameters
- `ownerId` (int): The ID of the owner to whom the pet belongs.
- `pet` (Pet): The pet object to be added.

#### Returns
- `Pet`: The newly added pet object.

```java
@PostMapping("/owners/{ownerId}/pets")
public Pet addPet(@PathVariable int ownerId, @RequestBody Pet pet) {
    // Method implementation
}
```

### updatePet

This method updates an existing pet for a specific owner.

#### Parameters
- `ownerId` (int): The ID of the owner to whom the pet belongs.
- `petId` (int): The ID of the pet to be updated.
- `pet` (Pet): The updated pet object.

#### Returns
- `Pet`: The updated pet object.

```java
@PutMapping("/owners/{ownerId}/pets/{petId}")
public Pet updatePet(@PathVariable int ownerId, @PathVariable int petId, @RequestBody Pet pet) {
    // Method implementation
}
```

### deletePet

This method deletes a pet for a specific owner.

#### Parameters
- `ownerId` (int): The ID of the owner to whom the pet belongs.
- `petId` (int): The ID of the pet to be deleted.

#### Returns
- `String`: A message indicating the success of the deletion operation.

```java
@DeleteMapping("/owners/{ownerId}/pets/{petId}")
public String deletePet(@PathVariable int ownerId, @PathVariable int petId) {
    // Method implementation
}
```