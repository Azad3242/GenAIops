# PetController Class

The `PetController` class is responsible for handling HTTP requests related to pets in the Pet Clinic application.

## Methods

### getAllPets

This method retrieves a list of all pets belonging to a specific owner.

#### Parameters
- `ownerId` (int): The ID of the owner whose pets are to be retrieved.

#### Returns
- `List<Pet>`: A list of pets belonging to the specified owner.

```java
public List<Pet> getAllPets(int ownerId) {
    // Method implementation
}
```

### addNewPet

This method adds a new pet to the system for a specific owner.

#### Parameters
- `ownerId` (int): The ID of the owner to whom the new pet belongs.
- `pet` (Pet): The details of the new pet to be added.

#### Returns
- `Pet`: The newly added pet.

```java
public Pet addNewPet(int ownerId, Pet pet) {
    // Method implementation
}
```

### updatePetDetails

This method updates the details of an existing pet.

#### Parameters
- `petId` (int): The ID of the pet to be updated.
- `updatedPet` (Pet): The updated details of the pet.

#### Returns
- `Pet`: The updated pet.

```java
public Pet updatePetDetails(int petId, Pet updatedPet) {
    // Method implementation
}
```

### deletePet

This method deletes a pet from the system.

#### Parameters
- `petId` (int): The ID of the pet to be deleted.

#### Returns
- `void`

```java
public void deletePet(int petId) {
    // Method implementation
}
```