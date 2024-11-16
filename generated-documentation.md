{
  "id": "chatcmpl-AU2gzkaADenOLrlfBENFANLVXkA9p",
  "object": "chat.completion",
  "created": 1731723553,
  "model": "gpt-3.5-turbo-0125",
  "choices": [
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "```java\npackage org.springframework.samples.petclinic.owner;\n\nimport org.springframework.samples.petclinic.pet.Pet;\nimport org.springframework.samples.petclinic.pet.PetRepository;\nimport org.springframework.samples.petclinic.visit.VisitRepository;\nimport org.springframework.stereotype.Controller;\nimport org.springframework.ui.Model;\nimport org.springframework.web.bind.WebDataBinder;\nimport org.springframework.web.bind.annotation.InitBinder;\nimport org.springframework.web.bind.annotation.ModelAttribute;\nimport org.springframework.web.bind.annotation.PathVariable;\nimport org.springframework.web.bind.annotation.RequestMapping;\nimport org.springframework.web.bind.annotation.RequestMethod;\n\n/**\n * Controller for handling operations related to pets.\n */\n@Controller\n@RequestMapping(\"/owners/{ownerId}\")\npublic class PetController {\n\n    private final PetRepository pets;\n    private final VisitRepository visits;\n\n    /**\n     * Constructor for PetController.\n     * @param pets The PetRepository to use.\n     * @param visits The VisitRepository to use.\n     */\n    public PetController(PetRepository pets, VisitRepository visits) {\n        this.pets = pets;\n        this.visits = visits;\n    }\n\n    /**\n     * Populate the model with the owner's pets.\n     * @param ownerId The ID of the owner.\n     * @param model The model to populate.\n     * @return The view name.\n     */\n    @ModelAttribute(\"pets\")\n    public Collection<Pet> populatePets(@PathVariable(\"ownerId\") int ownerId) {\n        return this.pets.findPetsByOwnerId(ownerId);\n    }\n\n    /**\n     * Initialize the data binder for handling form submissions.\n     * @param dataBinder The WebDataBinder to initialize.\n     */\n    @InitBinder(\"pet\")\n    public void initPetBinder(WebDataBinder dataBinder) {\n        dataBinder.setDisallowedFields(\"id\");\n    }\n\n    /**\n     * Handle GET request for adding a new pet.\n     * @param model The model to populate.\n     * @return The view name.\n     */\n    @RequestMapping(value = \"/pets/new\", method = RequestMethod.GET)\n    public String initCreationForm(Model model) {\n        Pet pet = new Pet();\n        model.addAttribute(\"pet\", pet);\n        return \"pets/createOrUpdatePetForm\";\n    }\n\n    /**\n     * Handle POST request for adding a new pet.\n     * @param ownerId The ID of the owner.\n     * @param pet The pet to add.\n     * @param result The binding result.\n     * @param model The model to populate.\n     * @return The view name.\n     */\n    @RequestMapping(value = \"/pets/new\", method = RequestMethod.POST)\n    public String processCreationForm(@PathVariable(\"ownerId\") int ownerId, @ModelAttribute(\"pet\") Pet pet, BindingResult result, Model model) {\n        if (StringUtils.hasLength(pet.getName()) && pet.isNew() && this.pets.findPetByName(pet.getName(), true) != null) {\n            result.rejectValue(\"name\", \"duplicate\", \"already exists\");\n        }\n        pet.setOwner(this.pets.findOwnerById(ownerId));\n        this.pets.save(pet);\n        return \"redirect:/owners/{ownerId}\";\n    }\n\n    // Other methods for updating, deleting, and viewing pets...\n}\n```\n\nThis documentation provides an overview of the `PetController` class and its methods, along with their respective functionalities and parameters.",
        "refusal": null
      },
      "logprobs": null,
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 61,
    "completion_tokens": 662,
    "total_tokens": 723,
    "prompt_tokens_details": {
      "cached_tokens": 0,
      "audio_tokens": 0
    },
    "completion_tokens_details": {
      "reasoning_tokens": 0,
      "audio_tokens": 0,
      "accepted_prediction_tokens": 0,
      "rejected_prediction_tokens": 0
    }
  },
  "system_fingerprint": null
}