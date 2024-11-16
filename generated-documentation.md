# PetController Class

This class is a controller responsible for handling requests related to pets in a pet clinic application.

## Methods

### getAllPets

This method retrieves all pets belonging to a specific owner.

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

This method adds a new pet to the database for a specific owner.

#### Parameters
- `ownerId` (int): The ID of the owner to whom the new pet belongs.
- `pet` (Pet): The pet object to be added.

#### Returns
- `Pet`: The newly added pet object.

```java
public Pet addNewPet(int ownerId, Pet pet) {
    // Method implementation
}
```

### updatePetDetails

This method updates the details of an existing pet.

#### Parameters
- `petId` (int): The ID of the pet to be updated.
- `updatedPet` (Pet): The updated pet object.

#### Returns
- `Pet`: The updated pet object.

```java
public Pet updatePetDetails(int petId, Pet updatedPet) {
    // Method implementation
}
```

### deletePet

This method deletes a pet from the database.

#### Parameters
- `petId` (int): The ID of the pet to be deleted.

```java
public void deletePet(int petId) {
    // Method implementation
}
```