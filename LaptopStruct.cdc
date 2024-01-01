pub contract LaptopContract {

    pub struct Laptop {
        pub let id: UInt64
        pub let model: String
        pub let year: UInt64

        // Constructor for creating a Laptop
        init(id: UInt64, model: String, year: UInt64) {
            self.id = id
            self.model = model
            self.year = year
        }
    }

    // Store laptops using their Id as keys in a dictionary
    pub var laptops: {UInt64: Laptop}

    // Initialize the contract with an empty laptops dictionary
    init() {
        self.laptops = {}
    }

    // Add a Laptop to the dictionary using its Id as the key
    pub fun addLaptop(id: UInt64, model: String, year: UInt64) {
        self.laptops[id] = Laptop(id: id, model: model, year: year)
    }

    // Retrieve a Laptop by its Id from the dictionary
    pub fun getLaptop(id: UInt64): Laptop? {
        return self.laptops[id]
    }
}
