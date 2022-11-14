module Currency exposing
    ( Currency(..)
    , fromString, toCode, toDecimalDigits, toName, toSymbol
    , all
    )

{-| Currencies


# Types

@docs Currency


# Convert

@docs fromString, toCode, toDecimalDigits, toName, toSymbol


# Misc

@docs all

-}


{-| Currency type.
-}
type Currency
    = AFN
    | AFA
    | ALL
    | ALK
    | DZD
    | ADP
    | AOA
    | AOK
    | AON
    | AOR
    | ARA
    | ARS
    | ARM
    | ARP
    | ARL
    | AMD
    | AWG
    | AUD
    | ATS
    | AZN
    | AZM
    | BSD
    | BHD
    | BDT
    | BBD
    | BYN
    | BYB
    | BYR
    | BEF
    | BEC
    | BEL
    | BZD
    | BMD
    | BTC
    | BTN
    | BOB
    | BOL
    | BOV
    | BOP
    | BAM
    | BAD
    | BAN
    | BWP
    | BRC
    | BRZ
    | BRE
    | BRR
    | BRN
    | BRB
    | BRL
    | GBP
    | BND
    | BGL
    | BGN
    | BGO
    | BGM
    | BUK
    | BIF
    | KHR
    | CAD
    | CVE
    | KYD
    | XAF
    | XPF
    | CLE
    | CLP
    | CLF
    | CNX
    | CNY
    | CNH
    | COP
    | COU
    | KMF
    | CDF
    | CRC
    | HRD
    | HRK
    | CUC
    | CUP
    | CYP
    | CZK
    | CSK
    | DKK
    | DJF
    | DOP
    | NLG
    | XCD
    | DDM
    | ECS
    | ECV
    | EGP
    | GQE
    | ERN
    | EEK
    | ETB
    | EUR
    | XEU
    | FKP
    | FJD
    | FIM
    | FRF
    | XFO
    | XFU
    | GMD
    | GEK
    | GEL
    | DEM
    | GHS
    | GHC
    | GIP
    | GRD
    | GTQ
    | GWP
    | GNF
    | GNS
    | GYD
    | HTG
    | HNL
    | HKD
    | HUF
    | ISK
    | ISJ
    | INR
    | IDR
    | IRR
    | IQD
    | IEP
    | ILS
    | ILP
    | ILR
    | ITL
    | JMD
    | JPY
    | JOD
    | KZT
    | KES
    | KWD
    | KGS
    | LAK
    | LVL
    | LVR
    | LBP
    | LSL
    | LRD
    | LYD
    | LTL
    | LTT
    | LUL
    | LUC
    | LUF
    | MOP
    | MKD
    | MKN
    | MGA
    | MGF
    | MWK
    | MYR
    | MVR
    | MVP
    | MLF
    | MTL
    | MTP
    | MRU
    | MRO
    | MUR
    | MXV
    | MXN
    | MXP
    | MDC
    | MDL
    | MCF
    | MNT
    | MAD
    | MAF
    | MZE
    | MZN
    | MZM
    | MMK
    | NAD
    | NPR
    | ANG
    | TWD
    | NZD
    | NIO
    | NIC
    | NGN
    | KPW
    | NOK
    | OMR
    | PKR
    | PAB
    | PGK
    | PYG
    | PEI
    | PEN
    | PES
    | PHP
    | PLN
    | PLZ
    | PTE
    | GWE
    | QAR
    | RHD
    | XRE
    | RON
    | ROL
    | RUB
    | RUR
    | RWF
    | SVC
    | WST
    | STN
    | STD
    | SAR
    | RSD
    | CSD
    | SCR
    | SLL
    | SGD
    | SKK
    | SIT
    | SBD
    | SOS
    | ZAR
    | ZAL
    | KRH
    | KRW
    | KRO
    | SSP
    | SUR
    | ESP
    | ESA
    | ESB
    | LKR
    | SHP
    | SDD
    | SDG
    | SDP
    | SRD
    | SRG
    | SZL
    | SEK
    | CHF
    | SYP
    | TJR
    | TJS
    | TZS
    | THB
    | TPE
    | TOP
    | TTD
    | TND
    | TRY
    | TRL
    | TMT
    | TMM
    | UGX
    | UGS
    | UAH
    | UAK
    | AED
    | UYW
    | UYU
    | UYP
    | UYI
    | USD
    | USN
    | USS
    | UZS
    | VUV
    | VES
    | VEB
    | VEF
    | VND
    | VNN
    | XOF
    | CHE
    | CHW
    | YDD
    | YER
    | YUN
    | YUD
    | YUM
    | YUR
    | ZRN
    | ZRZ
    | ZMW
    | ZMK
    | ZWD
    | ZWR
    | ZWL


{-| List of all currencies
-}
all : List Currency
all =
    [ AFN
    , AFA
    , ALL
    , ALK
    , DZD
    , ADP
    , AOA
    , AOK
    , AON
    , AOR
    , ARA
    , ARS
    , ARM
    , ARP
    , ARL
    , AMD
    , AWG
    , AUD
    , ATS
    , AZN
    , AZM
    , BSD
    , BHD
    , BDT
    , BBD
    , BYN
    , BYB
    , BYR
    , BEF
    , BEC
    , BEL
    , BZD
    , BMD
    , BTC
    , BTN
    , BOB
    , BOL
    , BOV
    , BOP
    , BAM
    , BAD
    , BAN
    , BWP
    , BRC
    , BRZ
    , BRE
    , BRR
    , BRN
    , BRB
    , BRL
    , GBP
    , BND
    , BGL
    , BGN
    , BGO
    , BGM
    , BUK
    , BIF
    , KHR
    , CAD
    , CVE
    , KYD
    , XAF
    , XPF
    , CLE
    , CLP
    , CLF
    , CNX
    , CNY
    , CNH
    , COP
    , COU
    , KMF
    , CDF
    , CRC
    , HRD
    , HRK
    , CUC
    , CUP
    , CYP
    , CZK
    , CSK
    , DKK
    , DJF
    , DOP
    , NLG
    , XCD
    , DDM
    , ECS
    , ECV
    , EGP
    , GQE
    , ERN
    , EEK
    , ETB
    , EUR
    , XEU
    , FKP
    , FJD
    , FIM
    , FRF
    , XFO
    , XFU
    , GMD
    , GEK
    , GEL
    , DEM
    , GHS
    , GHC
    , GIP
    , GRD
    , GTQ
    , GWP
    , GNF
    , GNS
    , GYD
    , HTG
    , HNL
    , HKD
    , HUF
    , ISK
    , ISJ
    , INR
    , IDR
    , IRR
    , IQD
    , IEP
    , ILS
    , ILP
    , ILR
    , ITL
    , JMD
    , JPY
    , JOD
    , KZT
    , KES
    , KWD
    , KGS
    , LAK
    , LVL
    , LVR
    , LBP
    , LSL
    , LRD
    , LYD
    , LTL
    , LTT
    , LUL
    , LUC
    , LUF
    , MOP
    , MKD
    , MKN
    , MGA
    , MGF
    , MWK
    , MYR
    , MVR
    , MVP
    , MLF
    , MTL
    , MTP
    , MRU
    , MRO
    , MUR
    , MXV
    , MXN
    , MXP
    , MDC
    , MDL
    , MCF
    , MNT
    , MAD
    , MAF
    , MZE
    , MZN
    , MZM
    , MMK
    , NAD
    , NPR
    , ANG
    , TWD
    , NZD
    , NIO
    , NIC
    , NGN
    , KPW
    , NOK
    , OMR
    , PKR
    , PAB
    , PGK
    , PYG
    , PEI
    , PEN
    , PES
    , PHP
    , PLN
    , PLZ
    , PTE
    , GWE
    , QAR
    , RHD
    , XRE
    , RON
    , ROL
    , RUB
    , RUR
    , RWF
    , SVC
    , WST
    , STN
    , STD
    , SAR
    , RSD
    , CSD
    , SCR
    , SLL
    , SGD
    , SKK
    , SIT
    , SBD
    , SOS
    , ZAR
    , ZAL
    , KRH
    , KRW
    , KRO
    , SSP
    , SUR
    , ESP
    , ESA
    , ESB
    , LKR
    , SHP
    , SDD
    , SDG
    , SDP
    , SRD
    , SRG
    , SZL
    , SEK
    , CHF
    , SYP
    , TJR
    , TJS
    , TZS
    , THB
    , TPE
    , TOP
    , TTD
    , TND
    , TRY
    , TRL
    , TMT
    , TMM
    , UGX
    , UGS
    , UAH
    , UAK
    , AED
    , UYW
    , UYU
    , UYP
    , UYI
    , USD
    , USN
    , USS
    , UZS
    , VUV
    , VES
    , VEB
    , VEF
    , VND
    , VNN
    , XOF
    , CHE
    , CHW
    , YDD
    , YER
    , YUN
    , YUD
    , YUM
    , YUR
    , ZRN
    , ZRZ
    , ZMW
    , ZMK
    , ZWD
    , ZWR
    , ZWL
    ]


{-| Attempt to get a currency by it's code

    fromString "EUR" == Just EUR

-}
fromString : String -> Maybe Currency
fromString str =
    case str of
        "AFN" ->
            Just AFN

        "AFA" ->
            Just AFA

        "ALL" ->
            Just ALL

        "ALK" ->
            Just ALK

        "DZD" ->
            Just DZD

        "ADP" ->
            Just ADP

        "AOA" ->
            Just AOA

        "AOK" ->
            Just AOK

        "AON" ->
            Just AON

        "AOR" ->
            Just AOR

        "ARA" ->
            Just ARA

        "ARS" ->
            Just ARS

        "ARM" ->
            Just ARM

        "ARP" ->
            Just ARP

        "ARL" ->
            Just ARL

        "AMD" ->
            Just AMD

        "AWG" ->
            Just AWG

        "AUD" ->
            Just AUD

        "ATS" ->
            Just ATS

        "AZN" ->
            Just AZN

        "AZM" ->
            Just AZM

        "BSD" ->
            Just BSD

        "BHD" ->
            Just BHD

        "BDT" ->
            Just BDT

        "BBD" ->
            Just BBD

        "BYN" ->
            Just BYN

        "BYB" ->
            Just BYB

        "BYR" ->
            Just BYR

        "BEF" ->
            Just BEF

        "BEC" ->
            Just BEC

        "BEL" ->
            Just BEL

        "BZD" ->
            Just BZD

        "BMD" ->
            Just BMD

        "BTN" ->
            Just BTN

        "BOB" ->
            Just BOB

        "BOL" ->
            Just BOL

        "BOV" ->
            Just BOV

        "BOP" ->
            Just BOP

        "BAM" ->
            Just BAM

        "BAD" ->
            Just BAD

        "BAN" ->
            Just BAN

        "BWP" ->
            Just BWP

        "BRC" ->
            Just BRC

        "BRZ" ->
            Just BRZ

        "BRE" ->
            Just BRE

        "BRR" ->
            Just BRR

        "BRN" ->
            Just BRN

        "BRB" ->
            Just BRB

        "BRL" ->
            Just BRL

        "GBP" ->
            Just GBP

        "BND" ->
            Just BND

        "BGL" ->
            Just BGL

        "BGN" ->
            Just BGN

        "BGO" ->
            Just BGO

        "BGM" ->
            Just BGM

        "BUK" ->
            Just BUK

        "BIF" ->
            Just BIF

        "KHR" ->
            Just KHR

        "CAD" ->
            Just CAD

        "CVE" ->
            Just CVE

        "KYD" ->
            Just KYD

        "XAF" ->
            Just XAF

        "XPF" ->
            Just XPF

        "CLE" ->
            Just CLE

        "CLP" ->
            Just CLP

        "CLF" ->
            Just CLF

        "CNX" ->
            Just CNX

        "CNY" ->
            Just CNY

        "CNH" ->
            Just CNH

        "COP" ->
            Just COP

        "COU" ->
            Just COU

        "KMF" ->
            Just KMF

        "CDF" ->
            Just CDF

        "CRC" ->
            Just CRC

        "HRD" ->
            Just HRD

        "HRK" ->
            Just HRK

        "CUC" ->
            Just CUC

        "CUP" ->
            Just CUP

        "CYP" ->
            Just CYP

        "CZK" ->
            Just CZK

        "CSK" ->
            Just CSK

        "DKK" ->
            Just DKK

        "DJF" ->
            Just DJF

        "DOP" ->
            Just DOP

        "NLG" ->
            Just NLG

        "XCD" ->
            Just XCD

        "DDM" ->
            Just DDM

        "ECS" ->
            Just ECS

        "ECV" ->
            Just ECV

        "EGP" ->
            Just EGP

        "GQE" ->
            Just GQE

        "ERN" ->
            Just ERN

        "EEK" ->
            Just EEK

        "ETB" ->
            Just ETB

        "EUR" ->
            Just EUR

        "XEU" ->
            Just XEU

        "FKP" ->
            Just FKP

        "FJD" ->
            Just FJD

        "FIM" ->
            Just FIM

        "FRF" ->
            Just FRF

        "XFO" ->
            Just XFO

        "XFU" ->
            Just XFU

        "GMD" ->
            Just GMD

        "GEK" ->
            Just GEK

        "GEL" ->
            Just GEL

        "DEM" ->
            Just DEM

        "GHS" ->
            Just GHS

        "GHC" ->
            Just GHC

        "GIP" ->
            Just GIP

        "GRD" ->
            Just GRD

        "GTQ" ->
            Just GTQ

        "GWP" ->
            Just GWP

        "GNF" ->
            Just GNF

        "GNS" ->
            Just GNS

        "GYD" ->
            Just GYD

        "HTG" ->
            Just HTG

        "HNL" ->
            Just HNL

        "HKD" ->
            Just HKD

        "HUF" ->
            Just HUF

        "ISK" ->
            Just ISK

        "ISJ" ->
            Just ISJ

        "INR" ->
            Just INR

        "IDR" ->
            Just IDR

        "IRR" ->
            Just IRR

        "IQD" ->
            Just IQD

        "IEP" ->
            Just IEP

        "ILS" ->
            Just ILS

        "ILP" ->
            Just ILP

        "ILR" ->
            Just ILR

        "ITL" ->
            Just ITL

        "JMD" ->
            Just JMD

        "JPY" ->
            Just JPY

        "JOD" ->
            Just JOD

        "KZT" ->
            Just KZT

        "KES" ->
            Just KES

        "KWD" ->
            Just KWD

        "KGS" ->
            Just KGS

        "LAK" ->
            Just LAK

        "LVL" ->
            Just LVL

        "LVR" ->
            Just LVR

        "LBP" ->
            Just LBP

        "LSL" ->
            Just LSL

        "LRD" ->
            Just LRD

        "LYD" ->
            Just LYD

        "LTL" ->
            Just LTL

        "LTT" ->
            Just LTT

        "LUL" ->
            Just LUL

        "LUC" ->
            Just LUC

        "LUF" ->
            Just LUF

        "MOP" ->
            Just MOP

        "MKD" ->
            Just MKD

        "MKN" ->
            Just MKN

        "MGA" ->
            Just MGA

        "MGF" ->
            Just MGF

        "MWK" ->
            Just MWK

        "MYR" ->
            Just MYR

        "MVR" ->
            Just MVR

        "MVP" ->
            Just MVP

        "MLF" ->
            Just MLF

        "MTL" ->
            Just MTL

        "MTP" ->
            Just MTP

        "MRU" ->
            Just MRU

        "MRO" ->
            Just MRO

        "MUR" ->
            Just MUR

        "MXV" ->
            Just MXV

        "MXN" ->
            Just MXN

        "MXP" ->
            Just MXP

        "MDC" ->
            Just MDC

        "MDL" ->
            Just MDL

        "MCF" ->
            Just MCF

        "MNT" ->
            Just MNT

        "MAD" ->
            Just MAD

        "MAF" ->
            Just MAF

        "MZE" ->
            Just MZE

        "MZN" ->
            Just MZN

        "MZM" ->
            Just MZM

        "MMK" ->
            Just MMK

        "NAD" ->
            Just NAD

        "NPR" ->
            Just NPR

        "ANG" ->
            Just ANG

        "TWD" ->
            Just TWD

        "NZD" ->
            Just NZD

        "NIO" ->
            Just NIO

        "NIC" ->
            Just NIC

        "NGN" ->
            Just NGN

        "KPW" ->
            Just KPW

        "NOK" ->
            Just NOK

        "OMR" ->
            Just OMR

        "PKR" ->
            Just PKR

        "PAB" ->
            Just PAB

        "PGK" ->
            Just PGK

        "PYG" ->
            Just PYG

        "PEI" ->
            Just PEI

        "PEN" ->
            Just PEN

        "PES" ->
            Just PES

        "PHP" ->
            Just PHP

        "PLN" ->
            Just PLN

        "PLZ" ->
            Just PLZ

        "PTE" ->
            Just PTE

        "GWE" ->
            Just GWE

        "QAR" ->
            Just QAR

        "RHD" ->
            Just RHD

        "XRE" ->
            Just XRE

        "RON" ->
            Just RON

        "ROL" ->
            Just ROL

        "RUB" ->
            Just RUB

        "RUR" ->
            Just RUR

        "RWF" ->
            Just RWF

        "SVC" ->
            Just SVC

        "WST" ->
            Just WST

        "STN" ->
            Just STN

        "STD" ->
            Just STD

        "SAR" ->
            Just SAR

        "RSD" ->
            Just RSD

        "CSD" ->
            Just CSD

        "SCR" ->
            Just SCR

        "SLL" ->
            Just SLL

        "SGD" ->
            Just SGD

        "SKK" ->
            Just SKK

        "SIT" ->
            Just SIT

        "SBD" ->
            Just SBD

        "SOS" ->
            Just SOS

        "ZAR" ->
            Just ZAR

        "ZAL" ->
            Just ZAL

        "KRH" ->
            Just KRH

        "KRW" ->
            Just KRW

        "KRO" ->
            Just KRO

        "SSP" ->
            Just SSP

        "SUR" ->
            Just SUR

        "ESP" ->
            Just ESP

        "ESA" ->
            Just ESA

        "ESB" ->
            Just ESB

        "LKR" ->
            Just LKR

        "SHP" ->
            Just SHP

        "SDD" ->
            Just SDD

        "SDG" ->
            Just SDG

        "SDP" ->
            Just SDP

        "SRD" ->
            Just SRD

        "SRG" ->
            Just SRG

        "SZL" ->
            Just SZL

        "SEK" ->
            Just SEK

        "CHF" ->
            Just CHF

        "SYP" ->
            Just SYP

        "TJR" ->
            Just TJR

        "TJS" ->
            Just TJS

        "TZS" ->
            Just TZS

        "THB" ->
            Just THB

        "TPE" ->
            Just TPE

        "TOP" ->
            Just TOP

        "TTD" ->
            Just TTD

        "TND" ->
            Just TND

        "TRY" ->
            Just TRY

        "TRL" ->
            Just TRL

        "TMT" ->
            Just TMT

        "TMM" ->
            Just TMM

        "UGX" ->
            Just UGX

        "UGS" ->
            Just UGS

        "UAH" ->
            Just UAH

        "UAK" ->
            Just UAK

        "AED" ->
            Just AED

        "UYW" ->
            Just UYW

        "UYU" ->
            Just UYU

        "UYP" ->
            Just UYP

        "UYI" ->
            Just UYI

        "USD" ->
            Just USD

        "USN" ->
            Just USN

        "USS" ->
            Just USS

        "UZS" ->
            Just UZS

        "VUV" ->
            Just VUV

        "VES" ->
            Just VES

        "VEB" ->
            Just VEB

        "VEF" ->
            Just VEF

        "VND" ->
            Just VND

        "VNN" ->
            Just VNN

        "XOF" ->
            Just XOF

        "CHE" ->
            Just CHE

        "CHW" ->
            Just CHW

        "YDD" ->
            Just YDD

        "YER" ->
            Just YER

        "YUN" ->
            Just YUN

        "YUD" ->
            Just YUD

        "YUM" ->
            Just YUM

        "YUR" ->
            Just YUR

        "ZRN" ->
            Just ZRN

        "ZRZ" ->
            Just ZRZ

        "ZMW" ->
            Just ZMW

        "ZMK" ->
            Just ZMK

        "ZWD" ->
            Just ZWD

        "ZWR" ->
            Just ZWR

        "ZWL" ->
            Just ZWL

        _ ->
            Nothing


{-| Get a currency code as string

    toCode CZK == "CZK"

-}
toCode : Currency -> String
toCode currency =
    case currency of
        AFN ->
            "AFN"

        AFA ->
            "AFA"

        ALL ->
            "ALL"

        ALK ->
            "ALK"

        DZD ->
            "DZD"

        ADP ->
            "ADP"

        AOA ->
            "AOA"

        AOK ->
            "AOK"

        AON ->
            "AON"

        AOR ->
            "AOR"

        ARA ->
            "ARA"

        ARS ->
            "ARS"

        ARM ->
            "ARM"

        ARP ->
            "ARP"

        ARL ->
            "ARL"

        AMD ->
            "AMD"

        AWG ->
            "AWG"

        AUD ->
            "AUD"

        ATS ->
            "ATS"

        AZN ->
            "AZN"

        AZM ->
            "AZM"

        BSD ->
            "BSD"

        BHD ->
            "BHD"

        BDT ->
            "BDT"

        BBD ->
            "BBD"

        BYN ->
            "BYN"

        BYB ->
            "BYB"

        BYR ->
            "BYR"

        BEF ->
            "BEF"

        BEC ->
            "BEC"

        BEL ->
            "BEL"

        BZD ->
            "BZD"

        BMD ->
            "BMD"

        BTC ->
            "BTC"

        BTN ->
            "BTN"

        BOB ->
            "BOB"

        BOL ->
            "BOL"

        BOV ->
            "BOV"

        BOP ->
            "BOP"

        BAM ->
            "BAM"

        BAD ->
            "BAD"

        BAN ->
            "BAN"

        BWP ->
            "BWP"

        BRC ->
            "BRC"

        BRZ ->
            "BRZ"

        BRE ->
            "BRE"

        BRR ->
            "BRR"

        BRN ->
            "BRN"

        BRB ->
            "BRB"

        BRL ->
            "BRL"

        GBP ->
            "GBP"

        BND ->
            "BND"

        BGL ->
            "BGL"

        BGN ->
            "BGN"

        BGO ->
            "BGO"

        BGM ->
            "BGM"

        BUK ->
            "BUK"

        BIF ->
            "BIF"

        KHR ->
            "KHR"

        CAD ->
            "CAD"

        CVE ->
            "CVE"

        KYD ->
            "KYD"

        XAF ->
            "XAF"

        XPF ->
            "XPF"

        CLE ->
            "CLE"

        CLP ->
            "CLP"

        CLF ->
            "CLF"

        CNX ->
            "CNX"

        CNY ->
            "CNY"

        CNH ->
            "CNH"

        COP ->
            "COP"

        COU ->
            "COU"

        KMF ->
            "KMF"

        CDF ->
            "CDF"

        CRC ->
            "CRC"

        HRD ->
            "HRD"

        HRK ->
            "HRK"

        CUC ->
            "CUC"

        CUP ->
            "CUP"

        CYP ->
            "CYP"

        CZK ->
            "CZK"

        CSK ->
            "CSK"

        DKK ->
            "DKK"

        DJF ->
            "DJF"

        DOP ->
            "DOP"

        NLG ->
            "NLG"

        XCD ->
            "XCD"

        DDM ->
            "DDM"

        ECS ->
            "ECS"

        ECV ->
            "ECV"

        EGP ->
            "EGP"

        GQE ->
            "GQE"

        ERN ->
            "ERN"

        EEK ->
            "EEK"

        ETB ->
            "ETB"

        EUR ->
            "EUR"

        XEU ->
            "XEU"

        FKP ->
            "FKP"

        FJD ->
            "FJD"

        FIM ->
            "FIM"

        FRF ->
            "FRF"

        XFO ->
            "XFO"

        XFU ->
            "XFU"

        GMD ->
            "GMD"

        GEK ->
            "GEK"

        GEL ->
            "GEL"

        DEM ->
            "DEM"

        GHS ->
            "GHS"

        GHC ->
            "GHC"

        GIP ->
            "GIP"

        GRD ->
            "GRD"

        GTQ ->
            "GTQ"

        GWP ->
            "GWP"

        GNF ->
            "GNF"

        GNS ->
            "GNS"

        GYD ->
            "GYD"

        HTG ->
            "HTG"

        HNL ->
            "HNL"

        HKD ->
            "HKD"

        HUF ->
            "HUF"

        ISK ->
            "ISK"

        ISJ ->
            "ISJ"

        INR ->
            "INR"

        IDR ->
            "IDR"

        IRR ->
            "IRR"

        IQD ->
            "IQD"

        IEP ->
            "IEP"

        ILS ->
            "ILS"

        ILP ->
            "ILP"

        ILR ->
            "ILR"

        ITL ->
            "ITL"

        JMD ->
            "JMD"

        JPY ->
            "JPY"

        JOD ->
            "JOD"

        KZT ->
            "KZT"

        KES ->
            "KES"

        KWD ->
            "KWD"

        KGS ->
            "KGS"

        LAK ->
            "LAK"

        LVL ->
            "LVL"

        LVR ->
            "LVR"

        LBP ->
            "LBP"

        LSL ->
            "LSL"

        LRD ->
            "LRD"

        LYD ->
            "LYD"

        LTL ->
            "LTL"

        LTT ->
            "LTT"

        LUL ->
            "LUL"

        LUC ->
            "LUC"

        LUF ->
            "LUF"

        MOP ->
            "MOP"

        MKD ->
            "MKD"

        MKN ->
            "MKN"

        MGA ->
            "MGA"

        MGF ->
            "MGF"

        MWK ->
            "MWK"

        MYR ->
            "MYR"

        MVR ->
            "MVR"

        MVP ->
            "MVP"

        MLF ->
            "MLF"

        MTL ->
            "MTL"

        MTP ->
            "MTP"

        MRU ->
            "MRU"

        MRO ->
            "MRO"

        MUR ->
            "MUR"

        MXV ->
            "MXV"

        MXN ->
            "MXN"

        MXP ->
            "MXP"

        MDC ->
            "MDC"

        MDL ->
            "MDL"

        MCF ->
            "MCF"

        MNT ->
            "MNT"

        MAD ->
            "MAD"

        MAF ->
            "MAF"

        MZE ->
            "MZE"

        MZN ->
            "MZN"

        MZM ->
            "MZM"

        MMK ->
            "MMK"

        NAD ->
            "NAD"

        NPR ->
            "NPR"

        ANG ->
            "ANG"

        TWD ->
            "TWD"

        NZD ->
            "NZD"

        NIO ->
            "NIO"

        NIC ->
            "NIC"

        NGN ->
            "NGN"

        KPW ->
            "KPW"

        NOK ->
            "NOK"

        OMR ->
            "OMR"

        PKR ->
            "PKR"

        PAB ->
            "PAB"

        PGK ->
            "PGK"

        PYG ->
            "PYG"

        PEI ->
            "PEI"

        PEN ->
            "PEN"

        PES ->
            "PES"

        PHP ->
            "PHP"

        PLN ->
            "PLN"

        PLZ ->
            "PLZ"

        PTE ->
            "PTE"

        GWE ->
            "GWE"

        QAR ->
            "QAR"

        RHD ->
            "RHD"

        XRE ->
            "XRE"

        RON ->
            "RON"

        ROL ->
            "ROL"

        RUB ->
            "RUB"

        RUR ->
            "RUR"

        RWF ->
            "RWF"

        SVC ->
            "SVC"

        WST ->
            "WST"

        STN ->
            "STN"

        STD ->
            "STD"

        SAR ->
            "SAR"

        RSD ->
            "RSD"

        CSD ->
            "CSD"

        SCR ->
            "SCR"

        SLL ->
            "SLL"

        SGD ->
            "SGD"

        SKK ->
            "SKK"

        SIT ->
            "SIT"

        SBD ->
            "SBD"

        SOS ->
            "SOS"

        ZAR ->
            "ZAR"

        ZAL ->
            "ZAL"

        KRH ->
            "KRH"

        KRW ->
            "KRW"

        KRO ->
            "KRO"

        SSP ->
            "SSP"

        SUR ->
            "SUR"

        ESP ->
            "ESP"

        ESA ->
            "ESA"

        ESB ->
            "ESB"

        LKR ->
            "LKR"

        SHP ->
            "SHP"

        SDD ->
            "SDD"

        SDG ->
            "SDG"

        SDP ->
            "SDP"

        SRD ->
            "SRD"

        SRG ->
            "SRG"

        SZL ->
            "SZL"

        SEK ->
            "SEK"

        CHF ->
            "CHF"

        SYP ->
            "SYP"

        TJR ->
            "TJR"

        TJS ->
            "TJS"

        TZS ->
            "TZS"

        THB ->
            "THB"

        TPE ->
            "TPE"

        TOP ->
            "TOP"

        TTD ->
            "TTD"

        TND ->
            "TND"

        TRY ->
            "TRY"

        TRL ->
            "TRL"

        TMT ->
            "TMT"

        TMM ->
            "TMM"

        UGX ->
            "UGX"

        UGS ->
            "UGS"

        UAH ->
            "UAH"

        UAK ->
            "UAK"

        AED ->
            "AED"

        UYW ->
            "UYW"

        UYU ->
            "UYU"

        UYP ->
            "UYP"

        UYI ->
            "UYI"

        USD ->
            "USD"

        USN ->
            "USN"

        USS ->
            "USS"

        UZS ->
            "UZS"

        VUV ->
            "VUV"

        VES ->
            "VES"

        VEB ->
            "VEB"

        VEF ->
            "VEF"

        VND ->
            "VND"

        VNN ->
            "VNN"

        XOF ->
            "XOF"

        CHE ->
            "CHE"

        CHW ->
            "CHW"

        YDD ->
            "YDD"

        YER ->
            "YER"

        YUN ->
            "YUN"

        YUD ->
            "YUD"

        YUM ->
            "YUM"

        YUR ->
            "YUR"

        ZRN ->
            "ZRN"

        ZRZ ->
            "ZRZ"

        ZMW ->
            "ZMW"

        ZMK ->
            "ZMK"

        ZWD ->
            "ZWD"

        ZWR ->
            "ZWR"

        ZWL ->
            "ZWL"


{-| Get a currencies symbol

    toSymbol USD == "$"

-}
toSymbol : Currency -> String
toSymbol currency =
    case currency of
        AFN ->
            "AFN"

        AFA ->
            "AFA"

        ALL ->
            "ALL"

        ALK ->
            "ALK"

        DZD ->
            "DZD"

        ADP ->
            "ADP"

        AOA ->
            "AOA"

        AOK ->
            "AOK"

        AON ->
            "AON"

        AOR ->
            "AOR"

        ARA ->
            "ARA"

        ARS ->
            "ARS"

        ARM ->
            "ARM"

        ARP ->
            "ARP"

        ARL ->
            "ARL"

        AMD ->
            "AMD"

        AWG ->
            "AWG"

        AUD ->
            "A$"

        ATS ->
            "ATS"

        AZN ->
            "AZN"

        AZM ->
            "AZM"

        BSD ->
            "BSD"

        BHD ->
            "BHD"

        BDT ->
            "BDT"

        BBD ->
            "BBD"

        BYN ->
            "BYN"

        BYB ->
            "BYB"

        BYR ->
            "BYR"

        BEF ->
            "BEF"

        BEC ->
            "BEC"

        BEL ->
            "BEL"

        BZD ->
            "BZD"

        BMD ->
            "BMD"

        BTC ->
            "BTC"

        BTN ->
            "BTN"

        BOB ->
            "BOB"

        BOL ->
            "BOL"

        BOV ->
            "BOV"

        BOP ->
            "BOP"

        BAM ->
            "BAM"

        BAD ->
            "BAD"

        BAN ->
            "BAN"

        BWP ->
            "BWP"

        BRC ->
            "BRC"

        BRZ ->
            "BRZ"

        BRE ->
            "BRE"

        BRR ->
            "BRR"

        BRN ->
            "BRN"

        BRB ->
            "BRB"

        BRL ->
            "R$"

        GBP ->
            "£"

        BND ->
            "BND"

        BGL ->
            "BGL"

        BGN ->
            "BGN"

        BGO ->
            "BGO"

        BGM ->
            "BGM"

        BUK ->
            "BUK"

        BIF ->
            "BIF"

        KHR ->
            "KHR"

        CAD ->
            "CA$"

        CVE ->
            "CVE"

        KYD ->
            "KYD"

        XAF ->
            "FCFA"

        XPF ->
            "CFPF"

        CLE ->
            "CLE"

        CLP ->
            "CLP"

        CLF ->
            "CLF"

        CNX ->
            "CNX"

        CNY ->
            "CN¥"

        CNH ->
            "CNH"

        COP ->
            "COP"

        COU ->
            "COU"

        KMF ->
            "KMF"

        CDF ->
            "CDF"

        CRC ->
            "CRC"

        HRD ->
            "HRD"

        HRK ->
            "HRK"

        CUC ->
            "CUC"

        CUP ->
            "CUP"

        CYP ->
            "CYP"

        CZK ->
            "CZK"

        CSK ->
            "CSK"

        DKK ->
            "DKK"

        DJF ->
            "DJF"

        DOP ->
            "DOP"

        NLG ->
            "NLG"

        XCD ->
            "EC$"

        DDM ->
            "DDM"

        ECS ->
            "ECS"

        ECV ->
            "ECV"

        EGP ->
            "EGP"

        GQE ->
            "GQE"

        ERN ->
            "ERN"

        EEK ->
            "EEK"

        ETB ->
            "ETB"

        EUR ->
            "€"

        XEU ->
            "XEU"

        FKP ->
            "FKP"

        FJD ->
            "FJD"

        FIM ->
            "FIM"

        FRF ->
            "FRF"

        XFO ->
            "XFO"

        XFU ->
            "XFU"

        GMD ->
            "GMD"

        GEK ->
            "GEK"

        GEL ->
            "GEL"

        DEM ->
            "DEM"

        GHS ->
            "GHS"

        GHC ->
            "GHC"

        GIP ->
            "GIP"

        GRD ->
            "GRD"

        GTQ ->
            "GTQ"

        GWP ->
            "GWP"

        GNF ->
            "GNF"

        GNS ->
            "GNS"

        GYD ->
            "GYD"

        HTG ->
            "HTG"

        HNL ->
            "HNL"

        HKD ->
            "HK$"

        HUF ->
            "HUF"

        ISK ->
            "ISK"

        ISJ ->
            "ISJ"

        INR ->
            "₹"

        IDR ->
            "IDR"

        IRR ->
            "IRR"

        IQD ->
            "IQD"

        IEP ->
            "IEP"

        ILS ->
            "₪"

        ILP ->
            "ILP"

        ILR ->
            "ILR"

        ITL ->
            "ITL"

        JMD ->
            "JMD"

        JPY ->
            "¥"

        JOD ->
            "JOD"

        KZT ->
            "KZT"

        KES ->
            "KES"

        KWD ->
            "KWD"

        KGS ->
            "KGS"

        LAK ->
            "LAK"

        LVL ->
            "LVL"

        LVR ->
            "LVR"

        LBP ->
            "LBP"

        LSL ->
            "LSL"

        LRD ->
            "LRD"

        LYD ->
            "LYD"

        LTL ->
            "LTL"

        LTT ->
            "LTT"

        LUL ->
            "LUL"

        LUC ->
            "LUC"

        LUF ->
            "LUF"

        MOP ->
            "MOP"

        MKD ->
            "MKD"

        MKN ->
            "MKN"

        MGA ->
            "MGA"

        MGF ->
            "MGF"

        MWK ->
            "MWK"

        MYR ->
            "MYR"

        MVR ->
            "MVR"

        MVP ->
            "MVP"

        MLF ->
            "MLF"

        MTL ->
            "MTL"

        MTP ->
            "MTP"

        MRU ->
            "MRU"

        MRO ->
            "MRO"

        MUR ->
            "MUR"

        MXV ->
            "MXV"

        MXN ->
            "MX$"

        MXP ->
            "MXP"

        MDC ->
            "MDC"

        MDL ->
            "MDL"

        MCF ->
            "MCF"

        MNT ->
            "MNT"

        MAD ->
            "MAD"

        MAF ->
            "MAF"

        MZE ->
            "MZE"

        MZN ->
            "MZN"

        MZM ->
            "MZM"

        MMK ->
            "MMK"

        NAD ->
            "NAD"

        NPR ->
            "NPR"

        ANG ->
            "ANG"

        TWD ->
            "NT$"

        NZD ->
            "NZ$"

        NIO ->
            "NIO"

        NIC ->
            "NIC"

        NGN ->
            "NGN"

        KPW ->
            "KPW"

        NOK ->
            "NOK"

        OMR ->
            "OMR"

        PKR ->
            "PKR"

        PAB ->
            "PAB"

        PGK ->
            "PGK"

        PYG ->
            "PYG"

        PEI ->
            "PEI"

        PEN ->
            "PEN"

        PES ->
            "PES"

        PHP ->
            "₱"

        PLN ->
            "PLN"

        PLZ ->
            "PLZ"

        PTE ->
            "PTE"

        GWE ->
            "GWE"

        QAR ->
            "QAR"

        RHD ->
            "RHD"

        XRE ->
            "XRE"

        RON ->
            "RON"

        ROL ->
            "ROL"

        RUB ->
            "RUB"

        RUR ->
            "RUR"

        RWF ->
            "RWF"

        SVC ->
            "SVC"

        WST ->
            "WST"

        STN ->
            "STN"

        STD ->
            "STD"

        SAR ->
            "SAR"

        RSD ->
            "RSD"

        CSD ->
            "CSD"

        SCR ->
            "SCR"

        SLL ->
            "SLL"

        SGD ->
            "SGD"

        SKK ->
            "SKK"

        SIT ->
            "SIT"

        SBD ->
            "SBD"

        SOS ->
            "SOS"

        ZAR ->
            "ZAR"

        ZAL ->
            "ZAL"

        KRH ->
            "KRH"

        KRW ->
            "₩"

        KRO ->
            "KRO"

        SSP ->
            "SSP"

        SUR ->
            "SUR"

        ESP ->
            "ESP"

        ESA ->
            "ESA"

        ESB ->
            "ESB"

        LKR ->
            "LKR"

        SHP ->
            "SHP"

        SDD ->
            "SDD"

        SDG ->
            "SDG"

        SDP ->
            "SDP"

        SRD ->
            "SRD"

        SRG ->
            "SRG"

        SZL ->
            "SZL"

        SEK ->
            "SEK"

        CHF ->
            "CHF"

        SYP ->
            "SYP"

        TJR ->
            "TJR"

        TJS ->
            "TJS"

        TZS ->
            "TZS"

        THB ->
            "THB"

        TPE ->
            "TPE"

        TOP ->
            "TOP"

        TTD ->
            "TTD"

        TND ->
            "TND"

        TRY ->
            "TRY"

        TRL ->
            "TRL"

        TMT ->
            "TMT"

        TMM ->
            "TMM"

        UGX ->
            "UGX"

        UGS ->
            "UGS"

        UAH ->
            "UAH"

        UAK ->
            "UAK"

        AED ->
            "AED"

        UYW ->
            "UYW"

        UYU ->
            "UYU"

        UYP ->
            "UYP"

        UYI ->
            "UYI"

        USD ->
            "$"

        USN ->
            "USN"

        USS ->
            "USS"

        UZS ->
            "UZS"

        VUV ->
            "VUV"

        VES ->
            "VES"

        VEB ->
            "VEB"

        VEF ->
            "VEF"

        VND ->
            "₫"

        VNN ->
            "VNN"

        XOF ->
            "CFA"

        CHE ->
            "CHE"

        CHW ->
            "CHW"

        YDD ->
            "YDD"

        YER ->
            "YER"

        YUN ->
            "YUN"

        YUD ->
            "YUD"

        YUM ->
            "YUM"

        YUR ->
            "YUR"

        ZRN ->
            "ZRN"

        ZRZ ->
            "ZRZ"

        ZMW ->
            "ZMW"

        ZMK ->
            "ZMK"

        ZWD ->
            "ZWD"

        ZWR ->
            "ZWR"

        ZWL ->
            "ZWL"


{-| Get the number of decimal digits the currency uses.

    toDecimalDigits GBP == 2

    toDecimalDigits JPY == 0

    toDecimalDigits CLF == 4

-}
toDecimalDigits : Currency -> Int
toDecimalDigits currency =
    case currency of
        AFN ->
            0

        AFA ->
            2

        ALL ->
            0

        ALK ->
            2

        DZD ->
            2

        ADP ->
            0

        AOA ->
            2

        AOK ->
            2

        AON ->
            2

        AOR ->
            2

        ARA ->
            2

        ARS ->
            2

        ARM ->
            2

        ARP ->
            2

        ARL ->
            2

        AMD ->
            2

        AWG ->
            2

        AUD ->
            2

        ATS ->
            2

        AZN ->
            2

        AZM ->
            2

        BSD ->
            2

        BHD ->
            3

        BDT ->
            2

        BBD ->
            2

        BYN ->
            2

        BYB ->
            2

        BYR ->
            0

        BEF ->
            2

        BEC ->
            2

        BEL ->
            2

        BZD ->
            2

        BMD ->
            2

        BTN ->
            2

        BTC ->
            8

        BOB ->
            2

        BOL ->
            2

        BOV ->
            2

        BOP ->
            2

        BAM ->
            2

        BAD ->
            2

        BAN ->
            2

        BWP ->
            2

        BRC ->
            2

        BRZ ->
            2

        BRE ->
            2

        BRR ->
            2

        BRN ->
            2

        BRB ->
            2

        BRL ->
            2

        GBP ->
            2

        BND ->
            2

        BGL ->
            2

        BGN ->
            2

        BGO ->
            2

        BGM ->
            2

        BUK ->
            2

        BIF ->
            0

        KHR ->
            2

        CAD ->
            2

        CVE ->
            2

        KYD ->
            2

        XAF ->
            0

        XPF ->
            0

        CLE ->
            2

        CLP ->
            0

        CLF ->
            4

        CNX ->
            2

        CNY ->
            2

        CNH ->
            2

        COP ->
            2

        COU ->
            2

        KMF ->
            0

        CDF ->
            2

        CRC ->
            2

        HRD ->
            2

        HRK ->
            2

        CUC ->
            2

        CUP ->
            2

        CYP ->
            2

        CZK ->
            2

        CSK ->
            2

        DKK ->
            2

        DJF ->
            0

        DOP ->
            2

        NLG ->
            2

        XCD ->
            2

        DDM ->
            2

        ECS ->
            2

        ECV ->
            2

        EGP ->
            2

        GQE ->
            2

        ERN ->
            2

        EEK ->
            2

        ETB ->
            2

        EUR ->
            2

        XEU ->
            2

        FKP ->
            2

        FJD ->
            2

        FIM ->
            2

        FRF ->
            2

        XFO ->
            2

        XFU ->
            2

        GMD ->
            2

        GEK ->
            2

        GEL ->
            2

        DEM ->
            2

        GHS ->
            2

        GHC ->
            2

        GIP ->
            2

        GRD ->
            2

        GTQ ->
            2

        GWP ->
            2

        GNF ->
            0

        GNS ->
            2

        GYD ->
            2

        HTG ->
            2

        HNL ->
            2

        HKD ->
            2

        HUF ->
            2

        ISK ->
            0

        ISJ ->
            2

        INR ->
            2

        IDR ->
            2

        IRR ->
            0

        IQD ->
            0

        IEP ->
            2

        ILS ->
            2

        ILP ->
            2

        ILR ->
            2

        ITL ->
            0

        JMD ->
            2

        JPY ->
            0

        JOD ->
            3

        KZT ->
            2

        KES ->
            2

        KWD ->
            3

        KGS ->
            2

        LAK ->
            0

        LVL ->
            2

        LVR ->
            2

        LBP ->
            0

        LSL ->
            2

        LRD ->
            2

        LYD ->
            3

        LTL ->
            2

        LTT ->
            2

        LUL ->
            2

        LUC ->
            2

        LUF ->
            0

        MOP ->
            2

        MKD ->
            2

        MKN ->
            2

        MGA ->
            0

        MGF ->
            0

        MWK ->
            2

        MYR ->
            2

        MVR ->
            2

        MVP ->
            2

        MLF ->
            2

        MTL ->
            2

        MTP ->
            2

        MRU ->
            2

        MRO ->
            0

        MUR ->
            2

        MXV ->
            2

        MXN ->
            2

        MXP ->
            2

        MDC ->
            2

        MDL ->
            2

        MCF ->
            2

        MNT ->
            2

        MAD ->
            2

        MAF ->
            2

        MZE ->
            2

        MZN ->
            2

        MZM ->
            2

        MMK ->
            0

        NAD ->
            2

        NPR ->
            2

        ANG ->
            2

        TWD ->
            2

        NZD ->
            2

        NIO ->
            2

        NIC ->
            2

        NGN ->
            2

        KPW ->
            0

        NOK ->
            2

        OMR ->
            3

        PKR ->
            2

        PAB ->
            2

        PGK ->
            2

        PYG ->
            0

        PEI ->
            2

        PEN ->
            2

        PES ->
            2

        PHP ->
            2

        PLN ->
            2

        PLZ ->
            2

        PTE ->
            2

        GWE ->
            2

        QAR ->
            2

        RHD ->
            2

        XRE ->
            2

        RON ->
            2

        ROL ->
            2

        RUB ->
            2

        RUR ->
            2

        RWF ->
            0

        SVC ->
            2

        WST ->
            2

        STN ->
            2

        STD ->
            0

        SAR ->
            2

        RSD ->
            0

        CSD ->
            2

        SCR ->
            2

        SLL ->
            0

        SGD ->
            2

        SKK ->
            2

        SIT ->
            2

        SBD ->
            2

        SOS ->
            0

        ZAR ->
            2

        ZAL ->
            2

        KRH ->
            2

        KRW ->
            0

        KRO ->
            2

        SSP ->
            2

        SUR ->
            2

        ESP ->
            0

        ESA ->
            2

        ESB ->
            2

        LKR ->
            2

        SHP ->
            2

        SDD ->
            2

        SDG ->
            2

        SDP ->
            2

        SRD ->
            2

        SRG ->
            2

        SZL ->
            2

        SEK ->
            2

        CHF ->
            2

        SYP ->
            0

        TJR ->
            2

        TJS ->
            2

        TZS ->
            2

        THB ->
            2

        TPE ->
            2

        TOP ->
            2

        TTD ->
            2

        TND ->
            3

        TRY ->
            2

        TRL ->
            0

        TMT ->
            2

        TMM ->
            0

        UGX ->
            0

        UGS ->
            2

        UAH ->
            2

        UAK ->
            2

        AED ->
            2

        UYW ->
            4

        UYU ->
            2

        UYP ->
            2

        UYI ->
            0

        USD ->
            2

        USN ->
            2

        USS ->
            2

        UZS ->
            2

        VUV ->
            0

        VES ->
            2

        VEB ->
            2

        VEF ->
            2

        VND ->
            0

        VNN ->
            2

        XOF ->
            0

        CHE ->
            2

        CHW ->
            2

        YDD ->
            2

        YER ->
            0

        YUN ->
            2

        YUD ->
            2

        YUM ->
            2

        YUR ->
            2

        ZRN ->
            2

        ZRZ ->
            2

        ZMW ->
            2

        ZMK ->
            0

        ZWD ->
            0

        ZWR ->
            2

        ZWL ->
            2


{-| Get the name of a currency.

    toName DZD == "Algerian Dinar"

-}
toName : Currency -> String
toName currency =
    case currency of
        AFN ->
            "Afghan Afghani"

        AFA ->
            "Afghan Afghani (1927–2002)"

        ALL ->
            "Albanian Lek"

        ALK ->
            "Albanian Lek (1946–1965)"

        DZD ->
            "Algerian Dinar"

        ADP ->
            "Andorran Peseta"

        AOA ->
            "Angolan Kwanza"

        AOK ->
            "Angolan Kwanza (1977–1991)"

        AON ->
            "Angolan New Kwanza (1990–2000)"

        AOR ->
            "Angolan Readjusted Kwanza (1995–1999)"

        ARA ->
            "Argentine Austral"

        ARS ->
            "Argentine Peso"

        ARM ->
            "Argentine Peso (1881–1970)"

        ARP ->
            "Argentine Peso (1983–1985)"

        ARL ->
            "Argentine Peso Ley (1970–1983)"

        AMD ->
            "Armenian Dram"

        AWG ->
            "Aruban Florin"

        AUD ->
            "Australian Dollar"

        ATS ->
            "Austrian Schilling"

        AZN ->
            "Azerbaijani Manat"

        AZM ->
            "Azerbaijani Manat (1993–2006)"

        BSD ->
            "Bahamian Dollar"

        BHD ->
            "Bahraini Dinar"

        BDT ->
            "Bangladeshi Taka"

        BBD ->
            "Barbadian Dollar"

        BYN ->
            "Belarusian Ruble"

        BYB ->
            "Belarusian Ruble (1994–1999)"

        BYR ->
            "Belarusian Ruble (2000–2016)"

        BEF ->
            "Belgian Franc"

        BEC ->
            "Belgian Franc (convertible)"

        BEL ->
            "Belgian Franc (financial)"

        BZD ->
            "Belize Dollar"

        BMD ->
            "Bermudan Dollar"

        BTC ->
            "Bitcoin"

        BTN ->
            "Bhutanese Ngultrum"

        BOB ->
            "Bolivian Boliviano"

        BOL ->
            "Bolivian Boliviano (1863–1963)"

        BOV ->
            "Bolivian Mvdol"

        BOP ->
            "Bolivian Peso"

        BAM ->
            "Bosnia-Herzegovina Convertible Mark"

        BAD ->
            "Bosnia-Herzegovina Dinar (1992–1994)"

        BAN ->
            "Bosnia-Herzegovina New Dinar (1994–1997)"

        BWP ->
            "Botswanan Pula"

        BRC ->
            "Brazilian Cruzado (1986–1989)"

        BRZ ->
            "Brazilian Cruzeiro (1942–1967)"

        BRE ->
            "Brazilian Cruzeiro (1990–1993)"

        BRR ->
            "Brazilian Cruzeiro (1993–1994)"

        BRN ->
            "Brazilian New Cruzado (1989–1990)"

        BRB ->
            "Brazilian New Cruzeiro (1967–1986)"

        BRL ->
            "Brazilian Real"

        GBP ->
            "British Pound"

        BND ->
            "Brunei Dollar"

        BGL ->
            "Bulgarian Hard Lev"

        BGN ->
            "Bulgarian Lev"

        BGO ->
            "Bulgarian Lev (1879–1952)"

        BGM ->
            "Bulgarian Socialist Lev"

        BUK ->
            "Burmese Kyat"

        BIF ->
            "Burundian Franc"

        KHR ->
            "Cambodian Riel"

        CAD ->
            "Canadian Dollar"

        CVE ->
            "Cape Verdean Escudo"

        KYD ->
            "Cayman Islands Dollar"

        XAF ->
            "Central African CFA Franc"

        XPF ->
            "CFP Franc"

        CLE ->
            "Chilean Escudo"

        CLP ->
            "Chilean Peso"

        CLF ->
            "Chilean Unit of Account (UF)"

        CNX ->
            "Chinese People’s Bank Dollar"

        CNY ->
            "Chinese Yuan"

        CNH ->
            "Chinese Yuan (offshore)"

        COP ->
            "Colombian Peso"

        COU ->
            "Colombian Real Value Unit"

        KMF ->
            "Comorian Franc"

        CDF ->
            "Congolese Franc"

        CRC ->
            "Costa Rican Colón"

        HRD ->
            "Croatian Dinar"

        HRK ->
            "Croatian Kuna"

        CUC ->
            "Cuban Convertible Peso"

        CUP ->
            "Cuban Peso"

        CYP ->
            "Cypriot Pound"

        CZK ->
            "Czech Koruna"

        CSK ->
            "Czechoslovak Hard Koruna"

        DKK ->
            "Danish Krone"

        DJF ->
            "Djiboutian Franc"

        DOP ->
            "Dominican Peso"

        NLG ->
            "Dutch Guilder"

        XCD ->
            "East Caribbean Dollar"

        DDM ->
            "East German Mark"

        ECS ->
            "Ecuadorian Sucre"

        ECV ->
            "Ecuadorian Unit of Constant Value"

        EGP ->
            "Egyptian Pound"

        GQE ->
            "Equatorial Guinean Ekwele"

        ERN ->
            "Eritrean Nakfa"

        EEK ->
            "Estonian Kroon"

        ETB ->
            "Ethiopian Birr"

        EUR ->
            "Euro"

        XEU ->
            "European Currency Unit"

        FKP ->
            "Falkland Islands Pound"

        FJD ->
            "Fijian Dollar"

        FIM ->
            "Finnish Markka"

        FRF ->
            "French Franc"

        XFO ->
            "French Gold Franc"

        XFU ->
            "French UIC-Franc"

        GMD ->
            "Gambian Dalasi"

        GEK ->
            "Georgian Kupon Larit"

        GEL ->
            "Georgian Lari"

        DEM ->
            "German Mark"

        GHS ->
            "Ghanaian Cedi"

        GHC ->
            "Ghanaian Cedi (1979–2007)"

        GIP ->
            "Gibraltar Pound"

        GRD ->
            "Greek Drachma"

        GTQ ->
            "Guatemalan Quetzal"

        GWP ->
            "Guinea-Bissau Peso"

        GNF ->
            "Guinean Franc"

        GNS ->
            "Guinean Syli"

        GYD ->
            "Guyanaese Dollar"

        HTG ->
            "Haitian Gourde"

        HNL ->
            "Honduran Lempira"

        HKD ->
            "Hong Kong Dollar"

        HUF ->
            "Hungarian Forint"

        ISK ->
            "Icelandic Króna"

        ISJ ->
            "Icelandic Króna (1918–1981)"

        INR ->
            "Indian Rupee"

        IDR ->
            "Indonesian Rupiah"

        IRR ->
            "Iranian Rial"

        IQD ->
            "Iraqi Dinar"

        IEP ->
            "Irish Pound"

        ILS ->
            "Israeli New Shekel"

        ILP ->
            "Israeli Pound"

        ILR ->
            "Israeli Shekel (1980–1985)"

        ITL ->
            "Italian Lira"

        JMD ->
            "Jamaican Dollar"

        JPY ->
            "Japanese Yen"

        JOD ->
            "Jordanian Dinar"

        KZT ->
            "Kazakhstani Tenge"

        KES ->
            "Kenyan Shilling"

        KWD ->
            "Kuwaiti Dinar"

        KGS ->
            "Kyrgystani Som"

        LAK ->
            "Laotian Kip"

        LVL ->
            "Latvian Lats"

        LVR ->
            "Latvian Ruble"

        LBP ->
            "Lebanese Pound"

        LSL ->
            "Lesotho Loti"

        LRD ->
            "Liberian Dollar"

        LYD ->
            "Libyan Dinar"

        LTL ->
            "Lithuanian Litas"

        LTT ->
            "Lithuanian Talonas"

        LUL ->
            "Luxembourg Financial Franc"

        LUC ->
            "Luxembourgian Convertible Franc"

        LUF ->
            "Luxembourgian Franc"

        MOP ->
            "Macanese Pataca"

        MKD ->
            "Macedonian Denar"

        MKN ->
            "Macedonian Denar (1992–1993)"

        MGA ->
            "Malagasy Ariary"

        MGF ->
            "Malagasy Franc"

        MWK ->
            "Malawian Kwacha"

        MYR ->
            "Malaysian Ringgit"

        MVR ->
            "Maldivian Rufiyaa"

        MVP ->
            "Maldivian Rupee (1947–1981)"

        MLF ->
            "Malian Franc"

        MTL ->
            "Maltese Lira"

        MTP ->
            "Maltese Pound"

        MRU ->
            "Mauritanian Ouguiya"

        MRO ->
            "Mauritanian Ouguiya (1973–2017)"

        MUR ->
            "Mauritian Rupee"

        MXV ->
            "Mexican Investment Unit"

        MXN ->
            "Mexican Peso"

        MXP ->
            "Mexican Silver Peso (1861–1992)"

        MDC ->
            "Moldovan Cupon"

        MDL ->
            "Moldovan Leu"

        MCF ->
            "Monegasque Franc"

        MNT ->
            "Mongolian Tugrik"

        MAD ->
            "Moroccan Dirham"

        MAF ->
            "Moroccan Franc"

        MZE ->
            "Mozambican Escudo"

        MZN ->
            "Mozambican Metical"

        MZM ->
            "Mozambican Metical (1980–2006)"

        MMK ->
            "Myanmar Kyat"

        NAD ->
            "Namibian Dollar"

        NPR ->
            "Nepalese Rupee"

        ANG ->
            "Netherlands Antillean Guilder"

        TWD ->
            "New Taiwan Dollar"

        NZD ->
            "New Zealand Dollar"

        NIO ->
            "Nicaraguan Córdoba"

        NIC ->
            "Nicaraguan Córdoba (1988–1991)"

        NGN ->
            "Nigerian Naira"

        KPW ->
            "North Korean Won"

        NOK ->
            "Norwegian Krone"

        OMR ->
            "Omani Rial"

        PKR ->
            "Pakistani Rupee"

        PAB ->
            "Panamanian Balboa"

        PGK ->
            "Papua New Guinean Kina"

        PYG ->
            "Paraguayan Guarani"

        PEI ->
            "Peruvian Inti"

        PEN ->
            "Peruvian Sol"

        PES ->
            "Peruvian Sol (1863–1965)"

        PHP ->
            "Philippine Piso"

        PLN ->
            "Polish Zloty"

        PLZ ->
            "Polish Zloty (1950–1995)"

        PTE ->
            "Portuguese Escudo"

        GWE ->
            "Portuguese Guinea Escudo"

        QAR ->
            "Qatari Rial"

        RHD ->
            "Rhodesian Dollar"

        XRE ->
            "RINET Funds"

        RON ->
            "Romanian Leu"

        ROL ->
            "Romanian Leu (1952–2006)"

        RUB ->
            "Russian Ruble"

        RUR ->
            "Russian Ruble (1991–1998)"

        RWF ->
            "Rwandan Franc"

        SVC ->
            "Salvadoran Colón"

        WST ->
            "Samoan Tala"

        STN ->
            "São Tomé & Príncipe Dobra"

        STD ->
            "São Tomé & Príncipe Dobra (1977–2017)"

        SAR ->
            "Saudi Riyal"

        RSD ->
            "Serbian Dinar"

        CSD ->
            "Serbian Dinar (2002–2006)"

        SCR ->
            "Seychellois Rupee"

        SLL ->
            "Sierra Leonean Leone"

        SGD ->
            "Singapore Dollar"

        SKK ->
            "Slovak Koruna"

        SIT ->
            "Slovenian Tolar"

        SBD ->
            "Solomon Islands Dollar"

        SOS ->
            "Somali Shilling"

        ZAR ->
            "South African Rand"

        ZAL ->
            "South African Rand (financial)"

        KRH ->
            "South Korean Hwan (1953–1962)"

        KRW ->
            "South Korean Won"

        KRO ->
            "South Korean Won (1945–1953)"

        SSP ->
            "South Sudanese Pound"

        SUR ->
            "Soviet Rouble"

        ESP ->
            "Spanish Peseta"

        ESA ->
            "Spanish Peseta (A account)"

        ESB ->
            "Spanish Peseta (convertible account)"

        LKR ->
            "Sri Lankan Rupee"

        SHP ->
            "St. Helena Pound"

        SDD ->
            "Sudanese Dinar (1992–2007)"

        SDG ->
            "Sudanese Pound"

        SDP ->
            "Sudanese Pound (1957–1998)"

        SRD ->
            "Surinamese Dollar"

        SRG ->
            "Surinamese Guilder"

        SZL ->
            "Swazi Lilangeni"

        SEK ->
            "Swedish Krona"

        CHF ->
            "Swiss Franc"

        SYP ->
            "Syrian Pound"

        TJR ->
            "Tajikistani Ruble"

        TJS ->
            "Tajikistani Somoni"

        TZS ->
            "Tanzanian Shilling"

        THB ->
            "Thai Baht"

        TPE ->
            "Timorese Escudo"

        TOP ->
            "Tongan Paʻanga"

        TTD ->
            "Trinidad & Tobago Dollar"

        TND ->
            "Tunisian Dinar"

        TRY ->
            "Turkish Lira"

        TRL ->
            "Turkish Lira (1922–2005)"

        TMT ->
            "Turkmenistani Manat"

        TMM ->
            "Turkmenistani Manat (1993–2009)"

        UGX ->
            "Ugandan Shilling"

        UGS ->
            "Ugandan Shilling (1966–1987)"

        UAH ->
            "Ukrainian Hryvnia"

        UAK ->
            "Ukrainian Karbovanets"

        AED ->
            "United Arab Emirates Dirham"

        UYW ->
            "Uruguayan Nominal Wage Index Unit"

        UYU ->
            "Uruguayan Peso"

        UYP ->
            "Uruguayan Peso (1975–1993)"

        UYI ->
            "Uruguayan Peso (Indexed Units)"

        USD ->
            "US Dollar"

        USN ->
            "US Dollar (Next day)"

        USS ->
            "US Dollar (Same day)"

        UZS ->
            "Uzbekistani Som"

        VUV ->
            "Vanuatu Vatu"

        VES ->
            "Venezuelan Bolívar"

        VEB ->
            "Venezuelan Bolívar (1871–2008)"

        VEF ->
            "Venezuelan Bolívar (2008–2018)"

        VND ->
            "Vietnamese Dong"

        VNN ->
            "Vietnamese Dong (1978–1985)"

        XOF ->
            "West African CFA Franc"

        CHE ->
            "WIR Euro"

        CHW ->
            "WIR Franc"

        YDD ->
            "Yemeni Dinar"

        YER ->
            "Yemeni Rial"

        YUN ->
            "Yugoslavian Convertible Dinar (1990–1992)"

        YUD ->
            "Yugoslavian Hard Dinar (1966–1990)"

        YUM ->
            "Yugoslavian New Dinar (1994–2002)"

        YUR ->
            "Yugoslavian Reformed Dinar (1992–1993)"

        ZRN ->
            "Zairean New Zaire (1993–1998)"

        ZRZ ->
            "Zairean Zaire (1971–1993)"

        ZMW ->
            "Zambian Kwacha"

        ZMK ->
            "Zambian Kwacha (1968–2012)"

        ZWD ->
            "Zimbabwean Dollar (1980–2008)"

        ZWR ->
            "Zimbabwean Dollar (2008)"

        ZWL ->
            "Zimbabwean Dollar (2009)"
