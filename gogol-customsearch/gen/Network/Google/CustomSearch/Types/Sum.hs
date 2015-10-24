{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CustomSearch.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListImgType

instance FromText CSEListImgType where
    fromText = \case
        "clipart" -> Just CliPart
        "face" -> Just Face
        "lineart" -> Just Lineart
        "news" -> Just News
        "photo" -> Just Photo
        _ -> Nothing

instance ToText CSEListImgType where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListSiteSearchFilter

instance FromText CSEListSiteSearchFilter where
    fromText = \case
        "e" -> Just E
        "i" -> Just I
        _ -> Nothing

instance ToText CSEListSiteSearchFilter where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListImgDominantColor

instance FromText CSEListImgDominantColor where
    fromText = \case
        "black" -> Just Black
        "blue" -> Just Blue
        "brown" -> Just Brown
        "gray" -> Just Gray
        "green" -> Just Green
        "pink" -> Just Pink
        "purple" -> Just Purple
        "teal" -> Just Teal
        "white" -> Just White
        "yellow" -> Just Yellow
        _ -> Nothing

instance ToText CSEListImgDominantColor where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListSafe

instance FromText CSEListSafe where
    fromText = \case
        "high" -> Just High
        "medium" -> Just Medium
        "off" -> Just Off
        _ -> Nothing

instance ToText CSEListSafe where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListImgColorType

instance FromText CSEListImgColorType where
    fromText = \case
        "color" -> Just CSELICTColor
        "gray" -> Just CSELICTGray
        "mono" -> Just CSELICTMono
        _ -> Nothing

instance ToText CSEListImgColorType where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListFilter

instance FromText CSEListFilter where
    fromText = \case
        "0" -> Just CSELF0
        "1" -> Just CSELF1
        _ -> Nothing

instance ToText CSEListFilter where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListLr

instance FromText CSEListLr where
    fromText = \case
        "lang_ar" -> Just LangAr
        "lang_bg" -> Just LangBg
        "lang_ca" -> Just LangCa
        "lang_cs" -> Just LangCs
        "lang_da" -> Just LangDa
        "lang_de" -> Just LangDe
        "lang_el" -> Just LangEl
        "lang_en" -> Just LangEn
        "lang_es" -> Just LangEs
        "lang_et" -> Just LangEt
        "lang_fi" -> Just LangFi
        "lang_fr" -> Just LangFr
        "lang_hr" -> Just LangHr
        "lang_hu" -> Just LangHu
        "lang_id" -> Just LangId
        "lang_is" -> Just LangIs
        "lang_it" -> Just LangIt
        "lang_iw" -> Just LangIw
        "lang_ja" -> Just LangJa
        "lang_ko" -> Just LangKo
        "lang_lt" -> Just LangLT
        "lang_lv" -> Just LangLv
        "lang_nl" -> Just LangNl
        "lang_no" -> Just LangNo
        "lang_pl" -> Just LangPl
        "lang_pt" -> Just LangPt
        "lang_ro" -> Just LangRo
        "lang_ru" -> Just LangRu
        "lang_sk" -> Just LangSk
        "lang_sl" -> Just LangSl
        "lang_sr" -> Just LangSr
        "lang_sv" -> Just LangSv
        "lang_tr" -> Just LangTr
        "lang_zh-CN" -> Just LangZhCn
        "lang_zh-TW" -> Just LangZhTw
        _ -> Nothing

instance ToText CSEListLr where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListSearchType

instance FromText CSEListSearchType where
    fromText = \case
        "image" -> Just Image
        _ -> Nothing

instance ToText CSEListSearchType where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CSEListImgSize

instance FromText CSEListImgSize where
    fromText = \case
        "huge" -> Just CSELISHuge
        "icon" -> Just CSELISIcon
        "large" -> Just CSELISLarge
        "medium" -> Just CSELISMedium
        "small" -> Just CSELISSmall
        "xlarge" -> Just CSELISXlarge
        "xxlarge" -> Just CSELISXxlarge
        _ -> Nothing

instance ToText CSEListImgSize where
    toText = \case
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
