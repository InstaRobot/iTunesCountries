// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public enum Country: String, CaseIterable {
    case AE, AF, AG, AI, AL, AM, AO, AR, AT, AU, AZ
    case BA, BB, BE, BF, BG, BH, BJ, BM, BN, BO, BR, BS, BT, BW, BY, BZ
    case CA, CD, CG, CH, CI, CL, CM, CN, CO, CR, CV, CY, CZ
    case DE, DK, DM, DO, DZ
    case EC, EE, EG, ES
    case FI, FJ, FM, FR
    case GA, GB, GD, GE, GH, GM, GR, GT, GW, GY
    case HK, HN, HR, HU
    case ID, IE, IL, IN, IQ, IS, IT
    case JM, JO, JP
    case KE, KG, KH, KN, KR, KW, KY, KZ
    case LA, LB, LC, LK, LR, LT, LU, LV, LY
    case MA, MD, ME, MV, MG, MK, ML, MM, MN, MO, MR, MS, MT, MU, MW, MX, MY, MZ
    case NA, NE, NG, NI, NL, NO, NP, NR, NZ
    case OM
    case PA, PE, PG, PH, PK, PL, PT, PW, PY
    case QA
    case RO, RS, RU, RW
    case SA, SB, SC, SE, SG, SI, SK, SL, SN, SR, ST, SV, SZ
    case TC, TD, TH, TJ, TM, TN, TO, TR, TT, TW, TZ
    case UA, UG, US, UY, UZ
    case VC, VE, VG, VN, VU
    case XK
    case YE
    case ZA, ZM, ZW

    public var name: String {
        let code = rawValue.lowercased()
        let locale = Locale.autoupdatingCurrent // (identifier: "ru_RU") // autoupdatingCurrent
        let id = NSLocale.localeIdentifier(fromComponents: [
            NSLocale.Key.countryCode.rawValue: code,
        ])
        return (locale as NSLocale).displayName(
            forKey: .identifier,
            value: id
        ) ?? rawValue
    }
    
    public var flag: String {
        let unicodeScalars = rawValue
            .unicodeScalars
            .map { $0.value + 0x1F1E6 - 65 }
            .compactMap(UnicodeScalar.init)
        var result = ""
        result.unicodeScalars.append(contentsOf: unicodeScalars)
        return result
    }
}
