// Import the LaptopContract from the Contract file
import LaptopContract from 0x05

// Script to get details of a laptop by its ID
pub fun main(laptopID: UInt64): LaptopContract.Laptop? {
    // Use the public capability to call the getLaptop function
    return LaptopContract.getLaptop(id: laptopID)
}
