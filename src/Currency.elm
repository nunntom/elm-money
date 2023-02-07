module Currency exposing (Currency(..), all, fromCode, toCode, toDecimalDigits, toName, toNamePlural, toSymbolNative)

{-| 
## CURRENCY TYPE

@docs Currency

## ALL

@docs all

## CREATE

@docs fromCode

## TRANSFORMATIONS

@docs toDecimalDigits, toSymbolNative, toNamePlural, toName, toCode
-}



{-| The main Currency type -}
type Currency
    = USD
    | CAD
    | EUR
    | AED
    | AFN
    | ALL
    | AMD
    | ARS
    | AUD
    | AZN
    | BAM
    | BDT
    | BGN
    | BHD
    | BIF
    | BND
    | BOB
    | BRL
    | BWP
    | BYN
    | BZD
    | CDF
    | CHF
    | CLP
    | CNY
    | COP
    | CRC
    | CVE
    | CZK
    | DJF
    | DKK
    | DOP
    | DZD
    | EEK
    | EGP
    | ERN
    | ETB
    | GBP
    | GEL
    | GHS
    | GNF
    | GTQ
    | HKD
    | HNL
    | HRK
    | HUF
    | IDR
    | ILS
    | INR
    | IQD
    | IRR
    | ISK
    | JMD
    | JOD
    | JPY
    | KES
    | KHR
    | KMF
    | KRW
    | KWD
    | KZT
    | LBP
    | LKR
    | LTL
    | LVL
    | LYD
    | MAD
    | MDL
    | MGA
    | MKD
    | MMK
    | MOP
    | MUR
    | MXN
    | MYR
    | MZN
    | NAD
    | NGN
    | NIO
    | NOK
    | NPR
    | NZD
    | OMR
    | PAB
    | PEN
    | PHP
    | PKR
    | PLN
    | PYG
    | QAR
    | RON
    | RSD
    | RUB
    | RWF
    | SAR
    | SDG
    | SEK
    | SGD
    | SOS
    | SYP
    | THB
    | TND
    | TOP
    | TRY
    | TTD
    | TWD
    | TZS
    | UAH
    | UGX
    | UYU
    | UZS
    | VEF
    | VND
    | XAF
    | XOF
    | YER
    | ZAR
    | ZMK
    | ZWL


{-| A list of all the currencies -}
all : List Currency
all =
    [ USD
    , CAD
    , EUR
    , AED
    , AFN
    , ALL
    , AMD
    , ARS
    , AUD
    , AZN
    , BAM
    , BDT
    , BGN
    , BHD
    , BIF
    , BND
    , BOB
    , BRL
    , BWP
    , BYN
    , BZD
    , CDF
    , CHF
    , CLP
    , CNY
    , COP
    , CRC
    , CVE
    , CZK
    , DJF
    , DKK
    , DOP
    , DZD
    , EEK
    , EGP
    , ERN
    , ETB
    , GBP
    , GEL
    , GHS
    , GNF
    , GTQ
    , HKD
    , HNL
    , HRK
    , HUF
    , IDR
    , ILS
    , INR
    , IQD
    , IRR
    , ISK
    , JMD
    , JOD
    , JPY
    , KES
    , KHR
    , KMF
    , KRW
    , KWD
    , KZT
    , LBP
    , LKR
    , LTL
    , LVL
    , LYD
    , MAD
    , MDL
    , MGA
    , MKD
    , MMK
    , MOP
    , MUR
    , MXN
    , MYR
    , MZN
    , NAD
    , NGN
    , NIO
    , NOK
    , NPR
    , NZD
    , OMR
    , PAB
    , PEN
    , PHP
    , PKR
    , PLN
    , PYG
    , QAR
    , RON
    , RSD
    , RUB
    , RWF
    , SAR
    , SDG
    , SEK
    , SGD
    , SOS
    , SYP
    , THB
    , TND
    , TOP
    , TRY
    , TTD
    , TWD
    , TZS
    , UAH
    , UGX
    , UYU
    , UZS
    , VEF
    , VND
    , XAF
    , XOF
    , YER
    , ZAR
    , ZMK
    , ZWL
    ]


{-| Try to create a Currency from an ISO 4217 three letter code -}
fromCode : String -> Maybe Currency
fromCode code =
    case code of
        "USD" ->
            Just USD

        "CAD" ->
            Just CAD

        "EUR" ->
            Just EUR

        "AED" ->
            Just AED

        "AFN" ->
            Just AFN

        "ALL" ->
            Just ALL

        "AMD" ->
            Just AMD

        "ARS" ->
            Just ARS

        "AUD" ->
            Just AUD

        "AZN" ->
            Just AZN

        "BAM" ->
            Just BAM

        "BDT" ->
            Just BDT

        "BGN" ->
            Just BGN

        "BHD" ->
            Just BHD

        "BIF" ->
            Just BIF

        "BND" ->
            Just BND

        "BOB" ->
            Just BOB

        "BRL" ->
            Just BRL

        "BWP" ->
            Just BWP

        "BYN" ->
            Just BYN

        "BZD" ->
            Just BZD

        "CDF" ->
            Just CDF

        "CHF" ->
            Just CHF

        "CLP" ->
            Just CLP

        "CNY" ->
            Just CNY

        "COP" ->
            Just COP

        "CRC" ->
            Just CRC

        "CVE" ->
            Just CVE

        "CZK" ->
            Just CZK

        "DJF" ->
            Just DJF

        "DKK" ->
            Just DKK

        "DOP" ->
            Just DOP

        "DZD" ->
            Just DZD

        "EEK" ->
            Just EEK

        "EGP" ->
            Just EGP

        "ERN" ->
            Just ERN

        "ETB" ->
            Just ETB

        "GBP" ->
            Just GBP

        "GEL" ->
            Just GEL

        "GHS" ->
            Just GHS

        "GNF" ->
            Just GNF

        "GTQ" ->
            Just GTQ

        "HKD" ->
            Just HKD

        "HNL" ->
            Just HNL

        "HRK" ->
            Just HRK

        "HUF" ->
            Just HUF

        "IDR" ->
            Just IDR

        "ILS" ->
            Just ILS

        "INR" ->
            Just INR

        "IQD" ->
            Just IQD

        "IRR" ->
            Just IRR

        "ISK" ->
            Just ISK

        "JMD" ->
            Just JMD

        "JOD" ->
            Just JOD

        "JPY" ->
            Just JPY

        "KES" ->
            Just KES

        "KHR" ->
            Just KHR

        "KMF" ->
            Just KMF

        "KRW" ->
            Just KRW

        "KWD" ->
            Just KWD

        "KZT" ->
            Just KZT

        "LBP" ->
            Just LBP

        "LKR" ->
            Just LKR

        "LTL" ->
            Just LTL

        "LVL" ->
            Just LVL

        "LYD" ->
            Just LYD

        "MAD" ->
            Just MAD

        "MDL" ->
            Just MDL

        "MGA" ->
            Just MGA

        "MKD" ->
            Just MKD

        "MMK" ->
            Just MMK

        "MOP" ->
            Just MOP

        "MUR" ->
            Just MUR

        "MXN" ->
            Just MXN

        "MYR" ->
            Just MYR

        "MZN" ->
            Just MZN

        "NAD" ->
            Just NAD

        "NGN" ->
            Just NGN

        "NIO" ->
            Just NIO

        "NOK" ->
            Just NOK

        "NPR" ->
            Just NPR

        "NZD" ->
            Just NZD

        "OMR" ->
            Just OMR

        "PAB" ->
            Just PAB

        "PEN" ->
            Just PEN

        "PHP" ->
            Just PHP

        "PKR" ->
            Just PKR

        "PLN" ->
            Just PLN

        "PYG" ->
            Just PYG

        "QAR" ->
            Just QAR

        "RON" ->
            Just RON

        "RSD" ->
            Just RSD

        "RUB" ->
            Just RUB

        "RWF" ->
            Just RWF

        "SAR" ->
            Just SAR

        "SDG" ->
            Just SDG

        "SEK" ->
            Just SEK

        "SGD" ->
            Just SGD

        "SOS" ->
            Just SOS

        "SYP" ->
            Just SYP

        "THB" ->
            Just THB

        "TND" ->
            Just TND

        "TOP" ->
            Just TOP

        "TRY" ->
            Just TRY

        "TTD" ->
            Just TTD

        "TWD" ->
            Just TWD

        "TZS" ->
            Just TZS

        "UAH" ->
            Just UAH

        "UGX" ->
            Just UGX

        "UYU" ->
            Just UYU

        "UZS" ->
            Just UZS

        "VEF" ->
            Just VEF

        "VND" ->
            Just VND

        "XAF" ->
            Just XAF

        "XOF" ->
            Just XOF

        "YER" ->
            Just YER

        "ZAR" ->
            Just ZAR

        "ZMK" ->
            Just ZMK

        "ZWL" ->
            Just ZWL

        _ ->
            Nothing


{-| Get the ISO 4217 three letter code from a Currency -}
toCode : Currency -> String
toCode currency =
    case currency of
        USD ->
            "USD"

        CAD ->
            "CAD"

        EUR ->
            "EUR"

        AED ->
            "AED"

        AFN ->
            "AFN"

        ALL ->
            "ALL"

        AMD ->
            "AMD"

        ARS ->
            "ARS"

        AUD ->
            "AUD"

        AZN ->
            "AZN"

        BAM ->
            "BAM"

        BDT ->
            "BDT"

        BGN ->
            "BGN"

        BHD ->
            "BHD"

        BIF ->
            "BIF"

        BND ->
            "BND"

        BOB ->
            "BOB"

        BRL ->
            "BRL"

        BWP ->
            "BWP"

        BYN ->
            "BYN"

        BZD ->
            "BZD"

        CDF ->
            "CDF"

        CHF ->
            "CHF"

        CLP ->
            "CLP"

        CNY ->
            "CNY"

        COP ->
            "COP"

        CRC ->
            "CRC"

        CVE ->
            "CVE"

        CZK ->
            "CZK"

        DJF ->
            "DJF"

        DKK ->
            "DKK"

        DOP ->
            "DOP"

        DZD ->
            "DZD"

        EEK ->
            "EEK"

        EGP ->
            "EGP"

        ERN ->
            "ERN"

        ETB ->
            "ETB"

        GBP ->
            "GBP"

        GEL ->
            "GEL"

        GHS ->
            "GHS"

        GNF ->
            "GNF"

        GTQ ->
            "GTQ"

        HKD ->
            "HKD"

        HNL ->
            "HNL"

        HRK ->
            "HRK"

        HUF ->
            "HUF"

        IDR ->
            "IDR"

        ILS ->
            "ILS"

        INR ->
            "INR"

        IQD ->
            "IQD"

        IRR ->
            "IRR"

        ISK ->
            "ISK"

        JMD ->
            "JMD"

        JOD ->
            "JOD"

        JPY ->
            "JPY"

        KES ->
            "KES"

        KHR ->
            "KHR"

        KMF ->
            "KMF"

        KRW ->
            "KRW"

        KWD ->
            "KWD"

        KZT ->
            "KZT"

        LBP ->
            "LBP"

        LKR ->
            "LKR"

        LTL ->
            "LTL"

        LVL ->
            "LVL"

        LYD ->
            "LYD"

        MAD ->
            "MAD"

        MDL ->
            "MDL"

        MGA ->
            "MGA"

        MKD ->
            "MKD"

        MMK ->
            "MMK"

        MOP ->
            "MOP"

        MUR ->
            "MUR"

        MXN ->
            "MXN"

        MYR ->
            "MYR"

        MZN ->
            "MZN"

        NAD ->
            "NAD"

        NGN ->
            "NGN"

        NIO ->
            "NIO"

        NOK ->
            "NOK"

        NPR ->
            "NPR"

        NZD ->
            "NZD"

        OMR ->
            "OMR"

        PAB ->
            "PAB"

        PEN ->
            "PEN"

        PHP ->
            "PHP"

        PKR ->
            "PKR"

        PLN ->
            "PLN"

        PYG ->
            "PYG"

        QAR ->
            "QAR"

        RON ->
            "RON"

        RSD ->
            "RSD"

        RUB ->
            "RUB"

        RWF ->
            "RWF"

        SAR ->
            "SAR"

        SDG ->
            "SDG"

        SEK ->
            "SEK"

        SGD ->
            "SGD"

        SOS ->
            "SOS"

        SYP ->
            "SYP"

        THB ->
            "THB"

        TND ->
            "TND"

        TOP ->
            "TOP"

        TRY ->
            "TRY"

        TTD ->
            "TTD"

        TWD ->
            "TWD"

        TZS ->
            "TZS"

        UAH ->
            "UAH"

        UGX ->
            "UGX"

        UYU ->
            "UYU"

        UZS ->
            "UZS"

        VEF ->
            "VEF"

        VND ->
            "VND"

        XAF ->
            "XAF"

        XOF ->
            "XOF"

        YER ->
            "YER"

        ZAR ->
            "ZAR"

        ZMK ->
            "ZMK"

        ZWL ->
            "ZWL"


{-| Get the currency name -}
toName : Currency -> String
toName currency =
    case currency of
        USD ->
            "US Dollar"

        CAD ->
            "Canadian Dollar"

        EUR ->
            "Euro"

        AED ->
            "United Arab Emirates Dirham"

        AFN ->
            "Afghan Afghani"

        ALL ->
            "Albanian Lek"

        AMD ->
            "Armenian Dram"

        ARS ->
            "Argentine Peso"

        AUD ->
            "Australian Dollar"

        AZN ->
            "Azerbaijani Manat"

        BAM ->
            "Bosnia-Herzegovina Convertible Mark"

        BDT ->
            "Bangladeshi Taka"

        BGN ->
            "Bulgarian Lev"

        BHD ->
            "Bahraini Dinar"

        BIF ->
            "Burundian Franc"

        BND ->
            "Brunei Dollar"

        BOB ->
            "Bolivian Boliviano"

        BRL ->
            "Brazilian Real"

        BWP ->
            "Botswanan Pula"

        BYN ->
            "Belarusian Ruble"

        BZD ->
            "Belize Dollar"

        CDF ->
            "Congolese Franc"

        CHF ->
            "Swiss Franc"

        CLP ->
            "Chilean Peso"

        CNY ->
            "Chinese Yuan"

        COP ->
            "Colombian Peso"

        CRC ->
            "Costa Rican Colón"

        CVE ->
            "Cape Verdean Escudo"

        CZK ->
            "Czech Republic Koruna"

        DJF ->
            "Djiboutian Franc"

        DKK ->
            "Danish Krone"

        DOP ->
            "Dominican Peso"

        DZD ->
            "Algerian Dinar"

        EEK ->
            "Estonian Kroon"

        EGP ->
            "Egyptian Pound"

        ERN ->
            "Eritrean Nakfa"

        ETB ->
            "Ethiopian Birr"

        GBP ->
            "British Pound Sterling"

        GEL ->
            "Georgian Lari"

        GHS ->
            "Ghanaian Cedi"

        GNF ->
            "Guinean Franc"

        GTQ ->
            "Guatemalan Quetzal"

        HKD ->
            "Hong Kong Dollar"

        HNL ->
            "Honduran Lempira"

        HRK ->
            "Croatian Kuna"

        HUF ->
            "Hungarian Forint"

        IDR ->
            "Indonesian Rupiah"

        ILS ->
            "Israeli New Sheqel"

        INR ->
            "Indian Rupee"

        IQD ->
            "Iraqi Dinar"

        IRR ->
            "Iranian Rial"

        ISK ->
            "Icelandic Króna"

        JMD ->
            "Jamaican Dollar"

        JOD ->
            "Jordanian Dinar"

        JPY ->
            "Japanese Yen"

        KES ->
            "Kenyan Shilling"

        KHR ->
            "Cambodian Riel"

        KMF ->
            "Comorian Franc"

        KRW ->
            "South Korean Won"

        KWD ->
            "Kuwaiti Dinar"

        KZT ->
            "Kazakhstani Tenge"

        LBP ->
            "Lebanese Pound"

        LKR ->
            "Sri Lankan Rupee"

        LTL ->
            "Lithuanian Litas"

        LVL ->
            "Latvian Lats"

        LYD ->
            "Libyan Dinar"

        MAD ->
            "Moroccan Dirham"

        MDL ->
            "Moldovan Leu"

        MGA ->
            "Malagasy Ariary"

        MKD ->
            "Macedonian Denar"

        MMK ->
            "Myanma Kyat"

        MOP ->
            "Macanese Pataca"

        MUR ->
            "Mauritian Rupee"

        MXN ->
            "Mexican Peso"

        MYR ->
            "Malaysian Ringgit"

        MZN ->
            "Mozambican Metical"

        NAD ->
            "Namibian Dollar"

        NGN ->
            "Nigerian Naira"

        NIO ->
            "Nicaraguan Córdoba"

        NOK ->
            "Norwegian Krone"

        NPR ->
            "Nepalese Rupee"

        NZD ->
            "New Zealand Dollar"

        OMR ->
            "Omani Rial"

        PAB ->
            "Panamanian Balboa"

        PEN ->
            "Peruvian Nuevo Sol"

        PHP ->
            "Philippine Peso"

        PKR ->
            "Pakistani Rupee"

        PLN ->
            "Polish Zloty"

        PYG ->
            "Paraguayan Guarani"

        QAR ->
            "Qatari Rial"

        RON ->
            "Romanian Leu"

        RSD ->
            "Serbian Dinar"

        RUB ->
            "Russian Ruble"

        RWF ->
            "Rwandan Franc"

        SAR ->
            "Saudi Riyal"

        SDG ->
            "Sudanese Pound"

        SEK ->
            "Swedish Krona"

        SGD ->
            "Singapore Dollar"

        SOS ->
            "Somali Shilling"

        SYP ->
            "Syrian Pound"

        THB ->
            "Thai Baht"

        TND ->
            "Tunisian Dinar"

        TOP ->
            "Tongan Paʻanga"

        TRY ->
            "Turkish Lira"

        TTD ->
            "Trinidad and Tobago Dollar"

        TWD ->
            "New Taiwan Dollar"

        TZS ->
            "Tanzanian Shilling"

        UAH ->
            "Ukrainian Hryvnia"

        UGX ->
            "Ugandan Shilling"

        UYU ->
            "Uruguayan Peso"

        UZS ->
            "Uzbekistan Som"

        VEF ->
            "Venezuelan Bolívar"

        VND ->
            "Vietnamese Dong"

        XAF ->
            "CFA Franc BEAC"

        XOF ->
            "CFA Franc BCEAO"

        YER ->
            "Yemeni Rial"

        ZAR ->
            "South African Rand"

        ZMK ->
            "Zambian Kwacha"

        ZWL ->
            "Zimbabwean Dollar"


{-| Get the currency plural name -}
toNamePlural : Currency -> String
toNamePlural currency =
    case currency of
        USD ->
            "US dollars"

        CAD ->
            "Canadian dollars"

        EUR ->
            "euros"

        AED ->
            "UAE dirhams"

        AFN ->
            "Afghan Afghanis"

        ALL ->
            "Albanian lekë"

        AMD ->
            "Armenian drams"

        ARS ->
            "Argentine pesos"

        AUD ->
            "Australian dollars"

        AZN ->
            "Azerbaijani manats"

        BAM ->
            "Bosnia-Herzegovina convertible marks"

        BDT ->
            "Bangladeshi takas"

        BGN ->
            "Bulgarian leva"

        BHD ->
            "Bahraini dinars"

        BIF ->
            "Burundian francs"

        BND ->
            "Brunei dollars"

        BOB ->
            "Bolivian bolivianos"

        BRL ->
            "Brazilian reals"

        BWP ->
            "Botswanan pulas"

        BYN ->
            "Belarusian rubles"

        BZD ->
            "Belize dollars"

        CDF ->
            "Congolese francs"

        CHF ->
            "Swiss francs"

        CLP ->
            "Chilean pesos"

        CNY ->
            "Chinese yuan"

        COP ->
            "Colombian pesos"

        CRC ->
            "Costa Rican colóns"

        CVE ->
            "Cape Verdean escudos"

        CZK ->
            "Czech Republic korunas"

        DJF ->
            "Djiboutian francs"

        DKK ->
            "Danish kroner"

        DOP ->
            "Dominican pesos"

        DZD ->
            "Algerian dinars"

        EEK ->
            "Estonian kroons"

        EGP ->
            "Egyptian pounds"

        ERN ->
            "Eritrean nakfas"

        ETB ->
            "Ethiopian birrs"

        GBP ->
            "British pounds sterling"

        GEL ->
            "Georgian laris"

        GHS ->
            "Ghanaian cedis"

        GNF ->
            "Guinean francs"

        GTQ ->
            "Guatemalan quetzals"

        HKD ->
            "Hong Kong dollars"

        HNL ->
            "Honduran lempiras"

        HRK ->
            "Croatian kunas"

        HUF ->
            "Hungarian forints"

        IDR ->
            "Indonesian rupiahs"

        ILS ->
            "Israeli new sheqels"

        INR ->
            "Indian rupees"

        IQD ->
            "Iraqi dinars"

        IRR ->
            "Iranian rials"

        ISK ->
            "Icelandic krónur"

        JMD ->
            "Jamaican dollars"

        JOD ->
            "Jordanian dinars"

        JPY ->
            "Japanese yen"

        KES ->
            "Kenyan shillings"

        KHR ->
            "Cambodian riels"

        KMF ->
            "Comorian francs"

        KRW ->
            "South Korean won"

        KWD ->
            "Kuwaiti dinars"

        KZT ->
            "Kazakhstani tenges"

        LBP ->
            "Lebanese pounds"

        LKR ->
            "Sri Lankan rupees"

        LTL ->
            "Lithuanian litai"

        LVL ->
            "Latvian lati"

        LYD ->
            "Libyan dinars"

        MAD ->
            "Moroccan dirhams"

        MDL ->
            "Moldovan lei"

        MGA ->
            "Malagasy Ariaries"

        MKD ->
            "Macedonian denari"

        MMK ->
            "Myanma kyats"

        MOP ->
            "Macanese patacas"

        MUR ->
            "Mauritian rupees"

        MXN ->
            "Mexican pesos"

        MYR ->
            "Malaysian ringgits"

        MZN ->
            "Mozambican meticals"

        NAD ->
            "Namibian dollars"

        NGN ->
            "Nigerian nairas"

        NIO ->
            "Nicaraguan córdobas"

        NOK ->
            "Norwegian kroner"

        NPR ->
            "Nepalese rupees"

        NZD ->
            "New Zealand dollars"

        OMR ->
            "Omani rials"

        PAB ->
            "Panamanian balboas"

        PEN ->
            "Peruvian nuevos soles"

        PHP ->
            "Philippine pesos"

        PKR ->
            "Pakistani rupees"

        PLN ->
            "Polish zlotys"

        PYG ->
            "Paraguayan guaranis"

        QAR ->
            "Qatari rials"

        RON ->
            "Romanian lei"

        RSD ->
            "Serbian dinars"

        RUB ->
            "Russian rubles"

        RWF ->
            "Rwandan francs"

        SAR ->
            "Saudi riyals"

        SDG ->
            "Sudanese pounds"

        SEK ->
            "Swedish kronor"

        SGD ->
            "Singapore dollars"

        SOS ->
            "Somali shillings"

        SYP ->
            "Syrian pounds"

        THB ->
            "Thai baht"

        TND ->
            "Tunisian dinars"

        TOP ->
            "Tongan paʻanga"

        TRY ->
            "Turkish Lira"

        TTD ->
            "Trinidad and Tobago dollars"

        TWD ->
            "New Taiwan dollars"

        TZS ->
            "Tanzanian shillings"

        UAH ->
            "Ukrainian hryvnias"

        UGX ->
            "Ugandan shillings"

        UYU ->
            "Uruguayan pesos"

        UZS ->
            "Uzbekistan som"

        VEF ->
            "Venezuelan bolívars"

        VND ->
            "Vietnamese dong"

        XAF ->
            "CFA francs BEAC"

        XOF ->
            "CFA francs BCEAO"

        YER ->
            "Yemeni rials"

        ZAR ->
            "South African rand"

        ZMK ->
            "Zambian kwachas"

        ZWL ->
            "Zimbabwean Dollar"


{-| Get the currency native symbol -}
toSymbolNative : Currency -> String
toSymbolNative currency =
    case currency of
        USD ->
            "$"

        CAD ->
            "$"

        EUR ->
            "€"

        AED ->
            "د.إ.‏"

        AFN ->
            "؋"

        ALL ->
            "Lek"

        AMD ->
            "դր."

        ARS ->
            "$"

        AUD ->
            "$"

        AZN ->
            "ман."

        BAM ->
            "KM"

        BDT ->
            "৳"

        BGN ->
            "лв."

        BHD ->
            "د.ب.‏"

        BIF ->
            "FBu"

        BND ->
            "$"

        BOB ->
            "Bs"

        BRL ->
            "R$"

        BWP ->
            "P"

        BYN ->
            "руб."

        BZD ->
            "$"

        CDF ->
            "FrCD"

        CHF ->
            "CHF"

        CLP ->
            "$"

        CNY ->
            "CN¥"

        COP ->
            "$"

        CRC ->
            "₡"

        CVE ->
            "CV$"

        CZK ->
            "Kč"

        DJF ->
            "Fdj"

        DKK ->
            "kr"

        DOP ->
            "RD$"

        DZD ->
            "د.ج.‏"

        EEK ->
            "kr"

        EGP ->
            "ج.م.‏"

        ERN ->
            "Nfk"

        ETB ->
            "Br"

        GBP ->
            "£"

        GEL ->
            "GEL"

        GHS ->
            "GH₵"

        GNF ->
            "FG"

        GTQ ->
            "Q"

        HKD ->
            "$"

        HNL ->
            "L"

        HRK ->
            "kn"

        HUF ->
            "Ft"

        IDR ->
            "Rp"

        ILS ->
            "₪"

        INR ->
            "টকা"

        IQD ->
            "د.ع.‏"

        IRR ->
            "﷼"

        ISK ->
            "kr"

        JMD ->
            "$"

        JOD ->
            "د.أ.‏"

        JPY ->
            "￥"

        KES ->
            "Ksh"

        KHR ->
            "៛"

        KMF ->
            "FC"

        KRW ->
            "₩"

        KWD ->
            "د.ك.‏"

        KZT ->
            "тңг."

        LBP ->
            "ل.ل.‏"

        LKR ->
            "SL Re"

        LTL ->
            "Lt"

        LVL ->
            "Ls"

        LYD ->
            "د.ل.‏"

        MAD ->
            "د.م.‏"

        MDL ->
            "MDL"

        MGA ->
            "MGA"

        MKD ->
            "MKD"

        MMK ->
            "K"

        MOP ->
            "MOP$"

        MUR ->
            "MURs"

        MXN ->
            "$"

        MYR ->
            "RM"

        MZN ->
            "MTn"

        NAD ->
            "N$"

        NGN ->
            "₦"

        NIO ->
            "C$"

        NOK ->
            "kr"

        NPR ->
            "नेरू"

        NZD ->
            "$"

        OMR ->
            "ر.ع.‏"

        PAB ->
            "B/."

        PEN ->
            "S/."

        PHP ->
            "₱"

        PKR ->
            "₨"

        PLN ->
            "zł"

        PYG ->
            "₲"

        QAR ->
            "ر.ق.‏"

        RON ->
            "RON"

        RSD ->
            "дин."

        RUB ->
            "₽."

        RWF ->
            "FR"

        SAR ->
            "ر.س.‏"

        SDG ->
            "SDG"

        SEK ->
            "kr"

        SGD ->
            "$"

        SOS ->
            "Ssh"

        SYP ->
            "ل.س.‏"

        THB ->
            "฿"

        TND ->
            "د.ت.‏"

        TOP ->
            "T$"

        TRY ->
            "TL"

        TTD ->
            "$"

        TWD ->
            "NT$"

        TZS ->
            "TSh"

        UAH ->
            "₴"

        UGX ->
            "USh"

        UYU ->
            "$"

        UZS ->
            "UZS"

        VEF ->
            "Bs.F."

        VND ->
            "₫"

        XAF ->
            "FCFA"

        XOF ->
            "CFA"

        YER ->
            "ر.ي.‏"

        ZAR ->
            "R"

        ZMK ->
            "ZK"

        ZWL ->
            "ZWL$"


{-| Get the number of decimal digits -}
toDecimalDigits : Currency -> Int
toDecimalDigits currency =
    case currency of
        USD ->
            2

        CAD ->
            2

        EUR ->
            2

        AED ->
            2

        AFN ->
            0

        ALL ->
            0

        AMD ->
            0

        ARS ->
            2

        AUD ->
            2

        AZN ->
            2

        BAM ->
            2

        BDT ->
            2

        BGN ->
            2

        BHD ->
            3

        BIF ->
            0

        BND ->
            2

        BOB ->
            2

        BRL ->
            2

        BWP ->
            2

        BYN ->
            2

        BZD ->
            2

        CDF ->
            2

        CHF ->
            2

        CLP ->
            0

        CNY ->
            2

        COP ->
            0

        CRC ->
            0

        CVE ->
            2

        CZK ->
            2

        DJF ->
            0

        DKK ->
            2

        DOP ->
            2

        DZD ->
            2

        EEK ->
            2

        EGP ->
            2

        ERN ->
            2

        ETB ->
            2

        GBP ->
            2

        GEL ->
            2

        GHS ->
            2

        GNF ->
            0

        GTQ ->
            2

        HKD ->
            2

        HNL ->
            2

        HRK ->
            2

        HUF ->
            0

        IDR ->
            0

        ILS ->
            2

        INR ->
            2

        IQD ->
            0

        IRR ->
            0

        ISK ->
            0

        JMD ->
            2

        JOD ->
            3

        JPY ->
            0

        KES ->
            2

        KHR ->
            2

        KMF ->
            0

        KRW ->
            0

        KWD ->
            3

        KZT ->
            2

        LBP ->
            0

        LKR ->
            2

        LTL ->
            2

        LVL ->
            2

        LYD ->
            3

        MAD ->
            2

        MDL ->
            2

        MGA ->
            0

        MKD ->
            2

        MMK ->
            0

        MOP ->
            2

        MUR ->
            0

        MXN ->
            2

        MYR ->
            2

        MZN ->
            2

        NAD ->
            2

        NGN ->
            2

        NIO ->
            2

        NOK ->
            2

        NPR ->
            2

        NZD ->
            2

        OMR ->
            3

        PAB ->
            2

        PEN ->
            2

        PHP ->
            2

        PKR ->
            0

        PLN ->
            2

        PYG ->
            0

        QAR ->
            2

        RON ->
            2

        RSD ->
            0

        RUB ->
            2

        RWF ->
            0

        SAR ->
            2

        SDG ->
            2

        SEK ->
            2

        SGD ->
            2

        SOS ->
            0

        SYP ->
            0

        THB ->
            2

        TND ->
            3

        TOP ->
            2

        TRY ->
            2

        TTD ->
            2

        TWD ->
            2

        TZS ->
            0

        UAH ->
            2

        UGX ->
            0

        UYU ->
            2

        UZS ->
            0

        VEF ->
            2

        VND ->
            0

        XAF ->
            0

        XOF ->
            0

        YER ->
            0

        ZAR ->
            2

        ZMK ->
            0

        ZWL ->
            0


