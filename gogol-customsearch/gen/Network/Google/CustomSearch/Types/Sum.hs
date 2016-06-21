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

import           Network.Google.Prelude

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

-- | Returns images of a specific dominant color: yellow, green, teal, blue,
-- purple, pink, white, gray, black and brown.
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
    | Pink
      -- ^ @pink@
      -- pink
    | Purple
      -- ^ @purple@
      -- purple
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
        "pink" -> Right Pink
        "purple" -> Right Purple
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
        Pink -> "pink"
        Purple -> "purple"
        Teal -> "teal"
        White -> "white"
        Yellow -> "yellow"

instance FromJSON CSEListImgDominantColor where
    parseJSON = parseJSONText "CSEListImgDominantColor"

instance ToJSON CSEListImgDominantColor where
    toJSON = toJSONText

-- | Search safety level
data CSEListSafe
    = High
      -- ^ @high@
      -- Enables highest level of safe search filtering.
    | Medium
      -- ^ @medium@
      -- Enables moderate safe search filtering.
    | Off
      -- ^ @off@
      -- Disables safe search filtering.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListSafe

instance FromHttpApiData CSEListSafe where
    parseQueryParam = \case
        "high" -> Right High
        "medium" -> Right Medium
        "off" -> Right Off
        x -> Left ("Unable to parse CSEListSafe from: " <> x)

instance ToHttpApiData CSEListSafe where
    toQueryParam = \case
        High -> "high"
        Medium -> "medium"
        Off -> "off"

instance FromJSON CSEListSafe where
    parseJSON = parseJSONText "CSEListSafe"

instance ToJSON CSEListSafe where
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

-- | The language restriction for the search results
data CSEListLr
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

instance Hashable CSEListLr

instance FromHttpApiData CSEListLr where
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
        x -> Left ("Unable to parse CSEListLr from: " <> x)

instance ToHttpApiData CSEListLr where
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

instance FromJSON CSEListLr where
    parseJSON = parseJSONText "CSEListLr"

instance ToJSON CSEListLr where
    toJSON = toJSONText

-- | Specifies the search type: image.
data CSEListSearchType
    = Image
      -- ^ @image@
      -- custom image search
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListSearchType

instance FromHttpApiData CSEListSearchType where
    parseQueryParam = \case
        "image" -> Right Image
        x -> Left ("Unable to parse CSEListSearchType from: " <> x)

instance ToHttpApiData CSEListSearchType where
    toQueryParam = \case
        Image -> "image"

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
