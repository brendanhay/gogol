{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CustomSearch.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CustomSearch.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Returns images of a type, which can be one of: clipart, face, lineart,
-- news, and photo.
data CSEListImgType
    = CliPart
      -- ^ @clipart@
      -- clipart
    | Face
      -- ^ @face@
      -- face
    | Lineart
      -- ^ @lineart@
      -- lineart
    | News
      -- ^ @news@
      -- news
    | Photo
      -- ^ @photo@
      -- photo
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListImgType

instance FromHttpApiData CSEListImgType where
    parseQueryParam = \case
        "clipart" -> Right CliPart
        "face" -> Right Face
        "lineart" -> Right Lineart
        "news" -> Right News
        "photo" -> Right Photo
        x -> Left ("Unable to parse CSEListImgType from: " <> x)

instance ToHttpApiData CSEListImgType where
    toQueryParam = \case
        CliPart -> "clipart"
        Face -> "face"
        Lineart -> "lineart"
        News -> "news"
        Photo -> "photo"

instance FromJSON CSEListImgType where
    parseJSON = parseJSONText "CSEListImgType"

instance ToJSON CSEListImgType where
    toJSON = toJSONText

-- | Controls whether to include or exclude results from the site named in
-- the as_sitesearch parameter
data CSEListSiteSearchFilter
    = E
      -- ^ @e@
      -- exclude
    | I
      -- ^ @i@
      -- include
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListSiteSearchFilter

instance FromHttpApiData CSEListSiteSearchFilter where
    parseQueryParam = \case
        "e" -> Right E
        "i" -> Right I
        x -> Left ("Unable to parse CSEListSiteSearchFilter from: " <> x)

instance ToHttpApiData CSEListSiteSearchFilter where
    toQueryParam = \case
        E -> "e"
        I -> "i"

instance FromJSON CSEListSiteSearchFilter where
    parseJSON = parseJSONText "CSEListSiteSearchFilter"

instance ToJSON CSEListSiteSearchFilter where
    toJSON = toJSONText

-- | Controls turning on or off the duplicate content filter.
data CSESiterestrictListFilter
    = CSESLF0
      -- ^ @0@
      -- Turns off duplicate content filter.
    | CSESLF1
      -- ^ @1@
      -- Turns on duplicate content filter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListFilter

instance FromHttpApiData CSESiterestrictListFilter where
    parseQueryParam = \case
        "0" -> Right CSESLF0
        "1" -> Right CSESLF1
        x -> Left ("Unable to parse CSESiterestrictListFilter from: " <> x)

instance ToHttpApiData CSESiterestrictListFilter where
    toQueryParam = \case
        CSESLF0 -> "0"
        CSESLF1 -> "1"

instance FromJSON CSESiterestrictListFilter where
    parseJSON = parseJSONText "CSESiterestrictListFilter"

instance ToJSON CSESiterestrictListFilter where
    toJSON = toJSONText

-- | Returns images of a type, which can be one of: clipart, face, lineart,
-- news, and photo.
data CSESiterestrictListImgType
    = CSESLITCliPart
      -- ^ @clipart@
      -- clipart
    | CSESLITFace
      -- ^ @face@
      -- face
    | CSESLITLineart
      -- ^ @lineart@
      -- lineart
    | CSESLITNews
      -- ^ @news@
      -- news
    | CSESLITPhoto
      -- ^ @photo@
      -- photo
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListImgType

instance FromHttpApiData CSESiterestrictListImgType where
    parseQueryParam = \case
        "clipart" -> Right CSESLITCliPart
        "face" -> Right CSESLITFace
        "lineart" -> Right CSESLITLineart
        "news" -> Right CSESLITNews
        "photo" -> Right CSESLITPhoto
        x -> Left ("Unable to parse CSESiterestrictListImgType from: " <> x)

instance ToHttpApiData CSESiterestrictListImgType where
    toQueryParam = \case
        CSESLITCliPart -> "clipart"
        CSESLITFace -> "face"
        CSESLITLineart -> "lineart"
        CSESLITNews -> "news"
        CSESLITPhoto -> "photo"

instance FromJSON CSESiterestrictListImgType where
    parseJSON = parseJSONText "CSESiterestrictListImgType"

instance ToJSON CSESiterestrictListImgType where
    toJSON = toJSONText

-- | Returns images of a specific dominant color: red, orange, yellow, green,
-- teal, blue, purple, pink, white, gray, black and brown.
data CSEListImgDominantColor
    = Black
      -- ^ @black@
      -- black
    | Blue
      -- ^ @blue@
      -- blue
    | Brown
      -- ^ @brown@
      -- brown
    | Gray
      -- ^ @gray@
      -- gray
    | Green
      -- ^ @green@
      -- green
    | Orange
      -- ^ @orange@
      -- orange
    | Pink
      -- ^ @pink@
      -- pink
    | Purple
      -- ^ @purple@
      -- purple
    | Red
      -- ^ @red@
      -- red
    | Teal
      -- ^ @teal@
      -- teal
    | White
      -- ^ @white@
      -- white
    | Yellow
      -- ^ @yellow@
      -- yellow
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListImgDominantColor

instance FromHttpApiData CSEListImgDominantColor where
    parseQueryParam = \case
        "black" -> Right Black
        "blue" -> Right Blue
        "brown" -> Right Brown
        "gray" -> Right Gray
        "green" -> Right Green
        "orange" -> Right Orange
        "pink" -> Right Pink
        "purple" -> Right Purple
        "red" -> Right Red
        "teal" -> Right Teal
        "white" -> Right White
        "yellow" -> Right Yellow
        x -> Left ("Unable to parse CSEListImgDominantColor from: " <> x)

instance ToHttpApiData CSEListImgDominantColor where
    toQueryParam = \case
        Black -> "black"
        Blue -> "blue"
        Brown -> "brown"
        Gray -> "gray"
        Green -> "green"
        Orange -> "orange"
        Pink -> "pink"
        Purple -> "purple"
        Red -> "red"
        Teal -> "teal"
        White -> "white"
        Yellow -> "yellow"

instance FromJSON CSEListImgDominantColor where
    parseJSON = parseJSONText "CSEListImgDominantColor"

instance ToJSON CSEListImgDominantColor where
    toJSON = toJSONText

-- | Search safety level
data CSEListSafe
    = Active
      -- ^ @active@
      -- Enables safe search filtering.
    | High
      -- ^ @high@
      -- (Deprecated) Same as active.
    | Medium
      -- ^ @medium@
      -- (Deprecated) Same as active.
    | Off
      -- ^ @off@
      -- Disables safe search filtering.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListSafe

instance FromHttpApiData CSEListSafe where
    parseQueryParam = \case
        "active" -> Right Active
        "high" -> Right High
        "medium" -> Right Medium
        "off" -> Right Off
        x -> Left ("Unable to parse CSEListSafe from: " <> x)

instance ToHttpApiData CSEListSafe where
    toQueryParam = \case
        Active -> "active"
        High -> "high"
        Medium -> "medium"
        Off -> "off"

instance FromJSON CSEListSafe where
    parseJSON = parseJSONText "CSEListSafe"

instance ToJSON CSEListSafe where
    toJSON = toJSONText

-- | Returns images of a specified size, where size can be one of: icon,
-- small, medium, large, xlarge, xxlarge, and huge.
data CSESiterestrictListImgSize
    = CSESLISHuge
      -- ^ @huge@
      -- huge
    | CSESLISIcon
      -- ^ @icon@
      -- icon
    | CSESLISLarge
      -- ^ @large@
      -- large
    | CSESLISMedium
      -- ^ @medium@
      -- medium
    | CSESLISSmall
      -- ^ @small@
      -- small
    | CSESLISXlarge
      -- ^ @xlarge@
      -- xlarge
    | CSESLISXxlarge
      -- ^ @xxlarge@
      -- xxlarge
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListImgSize

instance FromHttpApiData CSESiterestrictListImgSize where
    parseQueryParam = \case
        "huge" -> Right CSESLISHuge
        "icon" -> Right CSESLISIcon
        "large" -> Right CSESLISLarge
        "medium" -> Right CSESLISMedium
        "small" -> Right CSESLISSmall
        "xlarge" -> Right CSESLISXlarge
        "xxlarge" -> Right CSESLISXxlarge
        x -> Left ("Unable to parse CSESiterestrictListImgSize from: " <> x)

instance ToHttpApiData CSESiterestrictListImgSize where
    toQueryParam = \case
        CSESLISHuge -> "huge"
        CSESLISIcon -> "icon"
        CSESLISLarge -> "large"
        CSESLISMedium -> "medium"
        CSESLISSmall -> "small"
        CSESLISXlarge -> "xlarge"
        CSESLISXxlarge -> "xxlarge"

instance FromJSON CSESiterestrictListImgSize where
    parseJSON = parseJSONText "CSESiterestrictListImgSize"

instance ToJSON CSESiterestrictListImgSize where
    toJSON = toJSONText

-- | Returns black and white, grayscale, or color images: mono, gray, and
-- color.
data CSESiterestrictListImgColorType
    = CSESLICTColor
      -- ^ @color@
      -- color
    | CSESLICTGray
      -- ^ @gray@
      -- gray
    | CSESLICTMono
      -- ^ @mono@
      -- mono
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListImgColorType

instance FromHttpApiData CSESiterestrictListImgColorType where
    parseQueryParam = \case
        "color" -> Right CSESLICTColor
        "gray" -> Right CSESLICTGray
        "mono" -> Right CSESLICTMono
        x -> Left ("Unable to parse CSESiterestrictListImgColorType from: " <> x)

instance ToHttpApiData CSESiterestrictListImgColorType where
    toQueryParam = \case
        CSESLICTColor -> "color"
        CSESLICTGray -> "gray"
        CSESLICTMono -> "mono"

instance FromJSON CSESiterestrictListImgColorType where
    parseJSON = parseJSONText "CSESiterestrictListImgColorType"

instance ToJSON CSESiterestrictListImgColorType where
    toJSON = toJSONText

-- | Returns black and white, grayscale, or color images: mono, gray, and
-- color.
data CSEListImgColorType
    = CSELICTColor
      -- ^ @color@
      -- color
    | CSELICTGray
      -- ^ @gray@
      -- gray
    | CSELICTMono
      -- ^ @mono@
      -- mono
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListImgColorType

instance FromHttpApiData CSEListImgColorType where
    parseQueryParam = \case
        "color" -> Right CSELICTColor
        "gray" -> Right CSELICTGray
        "mono" -> Right CSELICTMono
        x -> Left ("Unable to parse CSEListImgColorType from: " <> x)

instance ToHttpApiData CSEListImgColorType where
    toQueryParam = \case
        CSELICTColor -> "color"
        CSELICTGray -> "gray"
        CSELICTMono -> "mono"

instance FromJSON CSEListImgColorType where
    parseJSON = parseJSONText "CSEListImgColorType"

instance ToJSON CSEListImgColorType where
    toJSON = toJSONText

-- | Search safety level
data CSESiterestrictListSafe
    = CSESLSHigh
      -- ^ @high@
      -- Enables highest level of safe search filtering.
    | CSESLSMedium
      -- ^ @medium@
      -- Enables moderate safe search filtering.
    | CSESLSOff
      -- ^ @off@
      -- Disables safe search filtering.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListSafe

instance FromHttpApiData CSESiterestrictListSafe where
    parseQueryParam = \case
        "high" -> Right CSESLSHigh
        "medium" -> Right CSESLSMedium
        "off" -> Right CSESLSOff
        x -> Left ("Unable to parse CSESiterestrictListSafe from: " <> x)

instance ToHttpApiData CSESiterestrictListSafe where
    toQueryParam = \case
        CSESLSHigh -> "high"
        CSESLSMedium -> "medium"
        CSESLSOff -> "off"

instance FromJSON CSESiterestrictListSafe where
    parseJSON = parseJSONText "CSESiterestrictListSafe"

instance ToJSON CSESiterestrictListSafe where
    toJSON = toJSONText

-- | Returns images of a specific dominant color: red, orange, yellow, green,
-- teal, blue, purple, pink, white, gray, black and brown.
data CSESiterestrictListImgDominantColor
    = CSESLIDCBlack
      -- ^ @black@
      -- black
    | CSESLIDCBlue
      -- ^ @blue@
      -- blue
    | CSESLIDCBrown
      -- ^ @brown@
      -- brown
    | CSESLIDCGray
      -- ^ @gray@
      -- gray
    | CSESLIDCGreen
      -- ^ @green@
      -- green
    | CSESLIDCOrange
      -- ^ @orange@
      -- orange
    | CSESLIDCPink
      -- ^ @pink@
      -- pink
    | CSESLIDCPurple
      -- ^ @purple@
      -- purple
    | CSESLIDCRed
      -- ^ @red@
      -- red
    | CSESLIDCTeal
      -- ^ @teal@
      -- teal
    | CSESLIDCWhite
      -- ^ @white@
      -- white
    | CSESLIDCYellow
      -- ^ @yellow@
      -- yellow
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListImgDominantColor

instance FromHttpApiData CSESiterestrictListImgDominantColor where
    parseQueryParam = \case
        "black" -> Right CSESLIDCBlack
        "blue" -> Right CSESLIDCBlue
        "brown" -> Right CSESLIDCBrown
        "gray" -> Right CSESLIDCGray
        "green" -> Right CSESLIDCGreen
        "orange" -> Right CSESLIDCOrange
        "pink" -> Right CSESLIDCPink
        "purple" -> Right CSESLIDCPurple
        "red" -> Right CSESLIDCRed
        "teal" -> Right CSESLIDCTeal
        "white" -> Right CSESLIDCWhite
        "yellow" -> Right CSESLIDCYellow
        x -> Left ("Unable to parse CSESiterestrictListImgDominantColor from: " <> x)

instance ToHttpApiData CSESiterestrictListImgDominantColor where
    toQueryParam = \case
        CSESLIDCBlack -> "black"
        CSESLIDCBlue -> "blue"
        CSESLIDCBrown -> "brown"
        CSESLIDCGray -> "gray"
        CSESLIDCGreen -> "green"
        CSESLIDCOrange -> "orange"
        CSESLIDCPink -> "pink"
        CSESLIDCPurple -> "purple"
        CSESLIDCRed -> "red"
        CSESLIDCTeal -> "teal"
        CSESLIDCWhite -> "white"
        CSESLIDCYellow -> "yellow"

instance FromJSON CSESiterestrictListImgDominantColor where
    parseJSON = parseJSONText "CSESiterestrictListImgDominantColor"

instance ToJSON CSESiterestrictListImgDominantColor where
    toJSON = toJSONText

-- | Controls turning on or off the duplicate content filter.
data CSEListFilter
    = CSELF0
      -- ^ @0@
      -- Turns off duplicate content filter.
    | CSELF1
      -- ^ @1@
      -- Turns on duplicate content filter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListFilter

instance FromHttpApiData CSEListFilter where
    parseQueryParam = \case
        "0" -> Right CSELF0
        "1" -> Right CSELF1
        x -> Left ("Unable to parse CSEListFilter from: " <> x)

instance ToHttpApiData CSEListFilter where
    toQueryParam = \case
        CSELF0 -> "0"
        CSELF1 -> "1"

instance FromJSON CSEListFilter where
    parseJSON = parseJSONText "CSEListFilter"

instance ToJSON CSEListFilter where
    toJSON = toJSONText

-- | Controls whether to include or exclude results from the site named in
-- the as_sitesearch parameter
data CSESiterestrictListSiteSearchFilter
    = CSESLSSFE
      -- ^ @e@
      -- exclude
    | CSESLSSFI
      -- ^ @i@
      -- include
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListSiteSearchFilter

instance FromHttpApiData CSESiterestrictListSiteSearchFilter where
    parseQueryParam = \case
        "e" -> Right CSESLSSFE
        "i" -> Right CSESLSSFI
        x -> Left ("Unable to parse CSESiterestrictListSiteSearchFilter from: " <> x)

instance ToHttpApiData CSESiterestrictListSiteSearchFilter where
    toQueryParam = \case
        CSESLSSFE -> "e"
        CSESLSSFI -> "i"

instance FromJSON CSESiterestrictListSiteSearchFilter where
    parseJSON = parseJSONText "CSESiterestrictListSiteSearchFilter"

instance ToJSON CSESiterestrictListSiteSearchFilter where
    toJSON = toJSONText

-- | The language restriction for the search results
data CSESiterestrictListLr
    = LangAr
      -- ^ @lang_ar@
      -- Arabic
    | LangBg
      -- ^ @lang_bg@
      -- Bulgarian
    | LangCa
      -- ^ @lang_ca@
      -- Catalan
    | LangCs
      -- ^ @lang_cs@
      -- Czech
    | LangDa
      -- ^ @lang_da@
      -- Danish
    | LangDe
      -- ^ @lang_de@
      -- German
    | LangEl
      -- ^ @lang_el@
      -- Greek
    | LangEn
      -- ^ @lang_en@
      -- English
    | LangEs
      -- ^ @lang_es@
      -- Spanish
    | LangEt
      -- ^ @lang_et@
      -- Estonian
    | LangFi
      -- ^ @lang_fi@
      -- Finnish
    | LangFr
      -- ^ @lang_fr@
      -- French
    | LangHr
      -- ^ @lang_hr@
      -- Croatian
    | LangHu
      -- ^ @lang_hu@
      -- Hungarian
    | LangId
      -- ^ @lang_id@
      -- Indonesian
    | LangIs
      -- ^ @lang_is@
      -- Icelandic
    | LangIt
      -- ^ @lang_it@
      -- Italian
    | LangIw
      -- ^ @lang_iw@
      -- Hebrew
    | LangJa
      -- ^ @lang_ja@
      -- Japanese
    | LangKo
      -- ^ @lang_ko@
      -- Korean
    | LangLT
      -- ^ @lang_lt@
      -- Lithuanian
    | LangLv
      -- ^ @lang_lv@
      -- Latvian
    | LangNl
      -- ^ @lang_nl@
      -- Dutch
    | LangNo
      -- ^ @lang_no@
      -- Norwegian
    | LangPl
      -- ^ @lang_pl@
      -- Polish
    | LangPt
      -- ^ @lang_pt@
      -- Portuguese
    | LangRo
      -- ^ @lang_ro@
      -- Romanian
    | LangRu
      -- ^ @lang_ru@
      -- Russian
    | LangSk
      -- ^ @lang_sk@
      -- Slovak
    | LangSl
      -- ^ @lang_sl@
      -- Slovenian
    | LangSr
      -- ^ @lang_sr@
      -- Serbian
    | LangSv
      -- ^ @lang_sv@
      -- Swedish
    | LangTr
      -- ^ @lang_tr@
      -- Turkish
    | LangZhCn
      -- ^ @lang_zh-CN@
      -- Chinese (Simplified)
    | LangZhTw
      -- ^ @lang_zh-TW@
      -- Chinese (Traditional)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListLr

instance FromHttpApiData CSESiterestrictListLr where
    parseQueryParam = \case
        "lang_ar" -> Right LangAr
        "lang_bg" -> Right LangBg
        "lang_ca" -> Right LangCa
        "lang_cs" -> Right LangCs
        "lang_da" -> Right LangDa
        "lang_de" -> Right LangDe
        "lang_el" -> Right LangEl
        "lang_en" -> Right LangEn
        "lang_es" -> Right LangEs
        "lang_et" -> Right LangEt
        "lang_fi" -> Right LangFi
        "lang_fr" -> Right LangFr
        "lang_hr" -> Right LangHr
        "lang_hu" -> Right LangHu
        "lang_id" -> Right LangId
        "lang_is" -> Right LangIs
        "lang_it" -> Right LangIt
        "lang_iw" -> Right LangIw
        "lang_ja" -> Right LangJa
        "lang_ko" -> Right LangKo
        "lang_lt" -> Right LangLT
        "lang_lv" -> Right LangLv
        "lang_nl" -> Right LangNl
        "lang_no" -> Right LangNo
        "lang_pl" -> Right LangPl
        "lang_pt" -> Right LangPt
        "lang_ro" -> Right LangRo
        "lang_ru" -> Right LangRu
        "lang_sk" -> Right LangSk
        "lang_sl" -> Right LangSl
        "lang_sr" -> Right LangSr
        "lang_sv" -> Right LangSv
        "lang_tr" -> Right LangTr
        "lang_zh-CN" -> Right LangZhCn
        "lang_zh-TW" -> Right LangZhTw
        x -> Left ("Unable to parse CSESiterestrictListLr from: " <> x)

instance ToHttpApiData CSESiterestrictListLr where
    toQueryParam = \case
        LangAr -> "lang_ar"
        LangBg -> "lang_bg"
        LangCa -> "lang_ca"
        LangCs -> "lang_cs"
        LangDa -> "lang_da"
        LangDe -> "lang_de"
        LangEl -> "lang_el"
        LangEn -> "lang_en"
        LangEs -> "lang_es"
        LangEt -> "lang_et"
        LangFi -> "lang_fi"
        LangFr -> "lang_fr"
        LangHr -> "lang_hr"
        LangHu -> "lang_hu"
        LangId -> "lang_id"
        LangIs -> "lang_is"
        LangIt -> "lang_it"
        LangIw -> "lang_iw"
        LangJa -> "lang_ja"
        LangKo -> "lang_ko"
        LangLT -> "lang_lt"
        LangLv -> "lang_lv"
        LangNl -> "lang_nl"
        LangNo -> "lang_no"
        LangPl -> "lang_pl"
        LangPt -> "lang_pt"
        LangRo -> "lang_ro"
        LangRu -> "lang_ru"
        LangSk -> "lang_sk"
        LangSl -> "lang_sl"
        LangSr -> "lang_sr"
        LangSv -> "lang_sv"
        LangTr -> "lang_tr"
        LangZhCn -> "lang_zh-CN"
        LangZhTw -> "lang_zh-TW"

instance FromJSON CSESiterestrictListLr where
    parseJSON = parseJSONText "CSESiterestrictListLr"

instance ToJSON CSESiterestrictListLr where
    toJSON = toJSONText

-- | Specifies the search type: image.
data CSESiterestrictListSearchType
    = Image
      -- ^ @image@
      -- custom image search
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListSearchType

instance FromHttpApiData CSESiterestrictListSearchType where
    parseQueryParam = \case
        "image" -> Right Image
        x -> Left ("Unable to parse CSESiterestrictListSearchType from: " <> x)

instance ToHttpApiData CSESiterestrictListSearchType where
    toQueryParam = \case
        Image -> "image"

instance FromJSON CSESiterestrictListSearchType where
    parseJSON = parseJSONText "CSESiterestrictListSearchType"

instance ToJSON CSESiterestrictListSearchType where
    toJSON = toJSONText

-- | The language restriction for the search results
data CSEListLr
    = CSELLLangAr
      -- ^ @lang_ar@
      -- Arabic
    | CSELLLangBg
      -- ^ @lang_bg@
      -- Bulgarian
    | CSELLLangCa
      -- ^ @lang_ca@
      -- Catalan
    | CSELLLangCs
      -- ^ @lang_cs@
      -- Czech
    | CSELLLangDa
      -- ^ @lang_da@
      -- Danish
    | CSELLLangDe
      -- ^ @lang_de@
      -- German
    | CSELLLangEl
      -- ^ @lang_el@
      -- Greek
    | CSELLLangEn
      -- ^ @lang_en@
      -- English
    | CSELLLangEs
      -- ^ @lang_es@
      -- Spanish
    | CSELLLangEt
      -- ^ @lang_et@
      -- Estonian
    | CSELLLangFi
      -- ^ @lang_fi@
      -- Finnish
    | CSELLLangFr
      -- ^ @lang_fr@
      -- French
    | CSELLLangHr
      -- ^ @lang_hr@
      -- Croatian
    | CSELLLangHu
      -- ^ @lang_hu@
      -- Hungarian
    | CSELLLangId
      -- ^ @lang_id@
      -- Indonesian
    | CSELLLangIs
      -- ^ @lang_is@
      -- Icelandic
    | CSELLLangIt
      -- ^ @lang_it@
      -- Italian
    | CSELLLangIw
      -- ^ @lang_iw@
      -- Hebrew
    | CSELLLangJa
      -- ^ @lang_ja@
      -- Japanese
    | CSELLLangKo
      -- ^ @lang_ko@
      -- Korean
    | CSELLLangLT
      -- ^ @lang_lt@
      -- Lithuanian
    | CSELLLangLv
      -- ^ @lang_lv@
      -- Latvian
    | CSELLLangNl
      -- ^ @lang_nl@
      -- Dutch
    | CSELLLangNo
      -- ^ @lang_no@
      -- Norwegian
    | CSELLLangPl
      -- ^ @lang_pl@
      -- Polish
    | CSELLLangPt
      -- ^ @lang_pt@
      -- Portuguese
    | CSELLLangRo
      -- ^ @lang_ro@
      -- Romanian
    | CSELLLangRu
      -- ^ @lang_ru@
      -- Russian
    | CSELLLangSk
      -- ^ @lang_sk@
      -- Slovak
    | CSELLLangSl
      -- ^ @lang_sl@
      -- Slovenian
    | CSELLLangSr
      -- ^ @lang_sr@
      -- Serbian
    | CSELLLangSv
      -- ^ @lang_sv@
      -- Swedish
    | CSELLLangTr
      -- ^ @lang_tr@
      -- Turkish
    | CSELLLangZhCn
      -- ^ @lang_zh-CN@
      -- Chinese (Simplified)
    | CSELLLangZhTw
      -- ^ @lang_zh-TW@
      -- Chinese (Traditional)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListLr

instance FromHttpApiData CSEListLr where
    parseQueryParam = \case
        "lang_ar" -> Right CSELLLangAr
        "lang_bg" -> Right CSELLLangBg
        "lang_ca" -> Right CSELLLangCa
        "lang_cs" -> Right CSELLLangCs
        "lang_da" -> Right CSELLLangDa
        "lang_de" -> Right CSELLLangDe
        "lang_el" -> Right CSELLLangEl
        "lang_en" -> Right CSELLLangEn
        "lang_es" -> Right CSELLLangEs
        "lang_et" -> Right CSELLLangEt
        "lang_fi" -> Right CSELLLangFi
        "lang_fr" -> Right CSELLLangFr
        "lang_hr" -> Right CSELLLangHr
        "lang_hu" -> Right CSELLLangHu
        "lang_id" -> Right CSELLLangId
        "lang_is" -> Right CSELLLangIs
        "lang_it" -> Right CSELLLangIt
        "lang_iw" -> Right CSELLLangIw
        "lang_ja" -> Right CSELLLangJa
        "lang_ko" -> Right CSELLLangKo
        "lang_lt" -> Right CSELLLangLT
        "lang_lv" -> Right CSELLLangLv
        "lang_nl" -> Right CSELLLangNl
        "lang_no" -> Right CSELLLangNo
        "lang_pl" -> Right CSELLLangPl
        "lang_pt" -> Right CSELLLangPt
        "lang_ro" -> Right CSELLLangRo
        "lang_ru" -> Right CSELLLangRu
        "lang_sk" -> Right CSELLLangSk
        "lang_sl" -> Right CSELLLangSl
        "lang_sr" -> Right CSELLLangSr
        "lang_sv" -> Right CSELLLangSv
        "lang_tr" -> Right CSELLLangTr
        "lang_zh-CN" -> Right CSELLLangZhCn
        "lang_zh-TW" -> Right CSELLLangZhTw
        x -> Left ("Unable to parse CSEListLr from: " <> x)

instance ToHttpApiData CSEListLr where
    toQueryParam = \case
        CSELLLangAr -> "lang_ar"
        CSELLLangBg -> "lang_bg"
        CSELLLangCa -> "lang_ca"
        CSELLLangCs -> "lang_cs"
        CSELLLangDa -> "lang_da"
        CSELLLangDe -> "lang_de"
        CSELLLangEl -> "lang_el"
        CSELLLangEn -> "lang_en"
        CSELLLangEs -> "lang_es"
        CSELLLangEt -> "lang_et"
        CSELLLangFi -> "lang_fi"
        CSELLLangFr -> "lang_fr"
        CSELLLangHr -> "lang_hr"
        CSELLLangHu -> "lang_hu"
        CSELLLangId -> "lang_id"
        CSELLLangIs -> "lang_is"
        CSELLLangIt -> "lang_it"
        CSELLLangIw -> "lang_iw"
        CSELLLangJa -> "lang_ja"
        CSELLLangKo -> "lang_ko"
        CSELLLangLT -> "lang_lt"
        CSELLLangLv -> "lang_lv"
        CSELLLangNl -> "lang_nl"
        CSELLLangNo -> "lang_no"
        CSELLLangPl -> "lang_pl"
        CSELLLangPt -> "lang_pt"
        CSELLLangRo -> "lang_ro"
        CSELLLangRu -> "lang_ru"
        CSELLLangSk -> "lang_sk"
        CSELLLangSl -> "lang_sl"
        CSELLLangSr -> "lang_sr"
        CSELLLangSv -> "lang_sv"
        CSELLLangTr -> "lang_tr"
        CSELLLangZhCn -> "lang_zh-CN"
        CSELLLangZhTw -> "lang_zh-TW"

instance FromJSON CSEListLr where
    parseJSON = parseJSONText "CSEListLr"

instance ToJSON CSEListLr where
    toJSON = toJSONText

-- | Specifies the search type: image.
data CSEListSearchType
    = CSELSTImage
      -- ^ @image@
      -- custom image search
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListSearchType

instance FromHttpApiData CSEListSearchType where
    parseQueryParam = \case
        "image" -> Right CSELSTImage
        x -> Left ("Unable to parse CSEListSearchType from: " <> x)

instance ToHttpApiData CSEListSearchType where
    toQueryParam = \case
        CSELSTImage -> "image"

instance FromJSON CSEListSearchType where
    parseJSON = parseJSONText "CSEListSearchType"

instance ToJSON CSEListSearchType where
    toJSON = toJSONText

-- | Returns images of a specified size, where size can be one of: icon,
-- small, medium, large, xlarge, xxlarge, and huge.
data CSEListImgSize
    = CSELISHuge
      -- ^ @huge@
      -- huge
    | CSELISIcon
      -- ^ @icon@
      -- icon
    | CSELISLarge
      -- ^ @large@
      -- large
    | CSELISMedium
      -- ^ @medium@
      -- medium
    | CSELISSmall
      -- ^ @small@
      -- small
    | CSELISXlarge
      -- ^ @xlarge@
      -- xlarge
    | CSELISXxlarge
      -- ^ @xxlarge@
      -- xxlarge
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListImgSize

instance FromHttpApiData CSEListImgSize where
    parseQueryParam = \case
        "huge" -> Right CSELISHuge
        "icon" -> Right CSELISIcon
        "large" -> Right CSELISLarge
        "medium" -> Right CSELISMedium
        "small" -> Right CSELISSmall
        "xlarge" -> Right CSELISXlarge
        "xxlarge" -> Right CSELISXxlarge
        x -> Left ("Unable to parse CSEListImgSize from: " <> x)

instance ToHttpApiData CSEListImgSize where
    toQueryParam = \case
        CSELISHuge -> "huge"
        CSELISIcon -> "icon"
        CSELISLarge -> "large"
        CSELISMedium -> "medium"
        CSELISSmall -> "small"
        CSELISXlarge -> "xlarge"
        CSELISXxlarge -> "xxlarge"

instance FromJSON CSEListImgSize where
    parseJSON = parseJSONText "CSEListImgSize"

instance ToJSON CSEListImgSize where
    toJSON = toJSONText
