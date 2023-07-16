import XCTest
@testable import iTunesCountries

final class iTunesCountriesTests: XCTestCase {
    var sut: Country!
    
    override func setUp() {
        super.setUp()
        sut = Country(rawValue: "RU")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_CountriesCountIs175() {
        XCTAssertEqual(Country.allCases.count, 175)
    }
    
    func test_CountryNameIsRussia() {
        let name = sut.name
        XCTAssertEqual(name, "Russia")
    }
    
    func test_CountryFlagIsRussia() {
        let flag = sut.flag
        XCTAssertEqual(flag, "🇷🇺")
    }
}
