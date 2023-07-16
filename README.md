# Countries

## Installation

### Swift Package Manager

1. File > Swift Packages > Add Package Dependency
2. Add `https://github.com/InstaRobot/iTunesCountries.git`

_OR_

Update `dependencies` in `Package.swift`
```swift
dependencies: [
    .package(url: "https://github.com/InstaRobot/iTunesCountries.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage

```swift

import iTunesCountries

ScrollView {
    ForEach(0 ..< Country.allCases.count, id: \.self) { index in
        let country = Country.allCases[index]
        Text(country.name)
        Text(country.flag)
    }
}

```
