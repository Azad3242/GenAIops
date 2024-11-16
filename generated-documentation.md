# PetController Class

This class is a controller responsible for handling requests related to pets in the pet clinic application.

## Fields
- `PetRepository petRepository`: Repository for managing pet data.

## Methods

### getAllPets
```java
@GetMapping("/pets")
public List<Pet> getAllPets() {
    return petRepository.findAll();
}
```

This method handles GET requests to retrieve all pets in the system.

#### Parameters
None

#### Returns
- `List<Pet>`: A list of all pets in the system.

### getPetById
```java
@GetMapping("/pets/{id}")
public ResponseEntity<Pet> getPetById(@PathVariable Long id) {
    Optional<Pet> pet = petRepository.findById(id);
    if (pet.isPresent()) {
        return ResponseEntity.ok(pet.get());
    } else {
        return ResponseEntity.notFound().build();
    }
}
```

This method handles GET requests to retrieve a pet by its ID.

#### Parameters
- `Long id`: The ID of the pet to retrieve.

#### Returns
- `ResponseEntity<Pet>`: The ResponseEntity containing the pet if found, or a not found status.

### addPet
```java
@PostMapping("/pets")
public ResponseEntity<Pet> addPet(@RequestBody Pet pet) {
    Pet savedPet = petRepository.save(pet);
    return ResponseEntity.status(HttpStatus.CREATED).body(savedPet);
}
```

This method handles POST requests to add a new pet to the system.

#### Parameters
- `Pet pet`: The pet object to add to the system.

#### Returns
- `ResponseEntity<Pet>`: The ResponseEntity containing the added pet.

### updatePet
```java
@PutMapping("/pets/{id}")
public ResponseEntity<Pet> updatePet(@PathVariable Long id, @RequestBody Pet petDetails) {
    Optional<Pet> optionalPet = petRepository.findById(id);
    if (optionalPet.isPresent()) {
        Pet existingPet = optionalPet.get();
        existingPet.setName(petDetails.getName());
        // Update other fields as needed
        Pet updatedPet = petRepository.save(existingPet);
        return ResponseEntity.ok(updatedPet);
    } else {
        return ResponseEntity.notFound().build();
    }
}
```

This method handles PUT requests to update an existing pet in the system.

#### Parameters
- `Long id`: The ID of the pet to update.
- `Pet petDetails`: The updated details of the pet.

#### Returns
- `ResponseEntity<Pet>`: The ResponseEntity containing the updated pet if found, or a not found status.

### deletePet
```java
@DeleteMapping("/pets/{id}")
public ResponseEntity<Void> deletePet(@PathVariable Long id) {
    petRepository.deleteById(id);
    return ResponseEntity.noContent().build();
}
```

This method handles DELETE requests to delete a pet from the system.

#### Parameters
- `Long id`: The ID of the pet to delete.

#### Returns
- `ResponseEntity<Void>`: The ResponseEntity indicating successful deletion.