// Import LaptopContract
import LaptopContract from 0x05

// Transaction to add a laptop
transaction(id: UInt64, model: String, year: UInt64) {
    
    prepare(acct: AuthAccount) {}

    execute {
        LaptopContract.addLaptop(id: id, model: model, year: year)
        log("Laptop added successfully")
    }
}