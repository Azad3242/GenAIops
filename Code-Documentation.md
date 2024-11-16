# PetController Class

This class represents a controller for handling requests related to pets in a pet clinic application.

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

### getPetDetails

This method retrieves details of a specific pet.

#### Parameters
- `petId` (int): The ID of the pet whose details are to be retrieved.

#### Returns
- `Pet`: The pet object containing details of the specified pet.

```java
public Pet getPetDetails(int petId) {
    // Method implementation
}
```

### addNewPet

This method adds a new pet for a specific owner.

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