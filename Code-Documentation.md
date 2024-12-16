# PetController Class

This class serves as a controller for handling requests related to pets in a pet clinic application.

## Methods

### getAllPets

```java
/**
* Retrieves a list of all pets belonging to an owner.
* @param ownerId The ID of the owner whose pets are to be retrieved.
* @return A list of pets owned by the specified owner.
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
* Adds a new pet to the system for a specific owner.
* @param ownerId The ID of the owner to whom the pet belongs.
* @param pet The pet object to be added.
* @return The added pet object.
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
* @param petId The ID of the pet to be updated.
* @param updatedPet The updated pet object.
* @return The updated pet object.
*/
@PutMapping("/pets/{petId}")
public Pet updatePetDetails(@PathVariable int petId, @RequestBody Pet updatedPet) {
    // Method implementation
}
```

### deletePet

```java
/**
* Deletes a specific pet from the system.
* @param petId The ID of the pet to be deleted.
*/
@DeleteMapping("/pets/{petId}")
public void deletePet(@PathVariable int petId) {
    // Method implementation
}
```

## Dependencies

- `org.springframework.samples.petclinic.owner.Pet`
- `org.springframework.web.bind.annotation.*`
- `org.springframework.web.bind.annotation.PathVariable`
- `org.springframework.web.bind.annotation.RequestBody`
- `org.springframework.web.bind.annotation.GetMapping`
- `org.springframework.web.bind.annotation.PostMapping`
- `org.springframework.web.bind.annotation.PutMapping`
- `org.springframework.web.bind.annotation.DeleteMapping`

## Usage

1. Instantiate the `PetController` class.
2. Use the provided methods to interact with pet data in the pet clinic application.