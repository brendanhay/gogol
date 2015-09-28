{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE LambdaCase         #-}

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

import Network.Google.Prelude

-- | Returns images of a specific dominant color: yellow, green, teal, blue,
-- purple, pink, white, gray, black and brown.
data CseList'ImgDominantColor
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

instance Hashable CseList'ImgDominantColor

instance FromText CseList'ImgDominantColor where
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

instance ToText CseList'ImgDominantColor where
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

instance FromJSON CseList'ImgDominantColor where
    parseJSON = parseJSONText "CseList'ImgDominantColor"

instance ToJSON CseList'ImgDominantColor where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = Atom
      -- ^ @atom@
      -- Responses with Content-Type of application\/atom+xml
    | JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "atom" -> Just Atom
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        Atom -> "atom"
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Search safety level
data CseList'Safe
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

instance Hashable CseList'Safe

instance FromText CseList'Safe where
    fromText = \case
        "high" -> Just High
        "medium" -> Just Medium
        "off" -> Just Off
        _ -> Nothing

instance ToText CseList'Safe where
    toText = \case
        High -> "high"
        Medium -> "medium"
        Off -> "off"

instance FromJSON CseList'Safe where
    parseJSON = parseJSONText "CseList'Safe"

instance ToJSON CseList'Safe where
    toJSON = toJSONText

-- | Returns black and white, grayscale, or color images: mono, gray, and
-- color.
data CseList'ImgColorType
    = CLICTColor
      -- ^ @color@
      -- color
    | CLICTGray
      -- ^ @gray@
      -- gray
    | CLICTMono
      -- ^ @mono@
      -- mono
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CseList'ImgColorType

instance FromText CseList'ImgColorType where
    fromText = \case
        "color" -> Just CLICTColor
        "gray" -> Just CLICTGray
        "mono" -> Just CLICTMono
        _ -> Nothing

instance ToText CseList'ImgColorType where
    toText = \case
        CLICTColor -> "color"
        CLICTGray -> "gray"
        CLICTMono -> "mono"

instance FromJSON CseList'ImgColorType where
    parseJSON = parseJSONText "CseList'ImgColorType"

instance ToJSON CseList'ImgColorType where
    toJSON = toJSONText

-- | Returns images of a type, which can be one of: clipart, face, lineart,
-- news, and photo.
data CseList'ImgType
    = Clipart
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

instance Hashable CseList'ImgType

instance FromText CseList'ImgType where
    fromText = \case
        "clipart" -> Just Clipart
        "face" -> Just Face
        "lineart" -> Just Lineart
        "news" -> Just News
        "photo" -> Just Photo
        _ -> Nothing

instance ToText CseList'ImgType where
    toText = \case
        Clipart -> "clipart"
        Face -> "face"
        Lineart -> "lineart"
        News -> "news"
        Photo -> "photo"

instance FromJSON CseList'ImgType where
    parseJSON = parseJSONText "CseList'ImgType"

instance ToJSON CseList'ImgType where
    toJSON = toJSONText

-- | Controls whether to include or exclude results from the site named in
-- the as_sitesearch parameter
data CseList'SiteSearchFilter
    = E
      -- ^ @e@
      -- exclude
    | I
      -- ^ @i@
      -- include
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CseList'SiteSearchFilter

instance FromText CseList'SiteSearchFilter where
    fromText = \case
        "e" -> Just E
        "i" -> Just I
        _ -> Nothing

instance ToText CseList'SiteSearchFilter where
    toText = \case
        E -> "e"
        I -> "i"

instance FromJSON CseList'SiteSearchFilter where
    parseJSON = parseJSONText "CseList'SiteSearchFilter"

instance ToJSON CseList'SiteSearchFilter where
    toJSON = toJSONText

-- | The language restriction for the search results
data CseList'Lr
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

instance Hashable CseList'Lr

instance FromText CseList'Lr where
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

instance ToText CseList'Lr where
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

instance FromJSON CseList'Lr where
    parseJSON = parseJSONText "CseList'Lr"

instance ToJSON CseList'Lr where
    toJSON = toJSONText

-- | Returns images of a specified size, where size can be one of: icon,
-- small, medium, large, xlarge, xxlarge, and huge.
data CseList'ImgSize
    = CLISHuge
      -- ^ @huge@
      -- huge
    | CLISIcon
      -- ^ @icon@
      -- icon
    | CLISLarge
      -- ^ @large@
      -- large
    | CLISMedium
      -- ^ @medium@
      -- medium
    | CLISSmall
      -- ^ @small@
      -- small
    | CLISXlarge
      -- ^ @xlarge@
      -- xlarge
    | CLISXxlarge
      -- ^ @xxlarge@
      -- xxlarge
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CseList'ImgSize

instance FromText CseList'ImgSize where
    fromText = \case
        "huge" -> Just CLISHuge
        "icon" -> Just CLISIcon
        "large" -> Just CLISLarge
        "medium" -> Just CLISMedium
        "small" -> Just CLISSmall
        "xlarge" -> Just CLISXlarge
        "xxlarge" -> Just CLISXxlarge
        _ -> Nothing

instance ToText CseList'ImgSize where
    toText = \case
        CLISHuge -> "huge"
        CLISIcon -> "icon"
        CLISLarge -> "large"
        CLISMedium -> "medium"
        CLISSmall -> "small"
        CLISXlarge -> "xlarge"
        CLISXxlarge -> "xxlarge"

instance FromJSON CseList'ImgSize where
    parseJSON = parseJSONText "CseList'ImgSize"

instance ToJSON CseList'ImgSize where
    toJSON = toJSONText

-- | Specifies the search type: image.
data CseList'SearchType
    = Image
      -- ^ @image@
      -- custom image search
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CseList'SearchType

instance FromText CseList'SearchType where
    fromText = \case
        "image" -> Just Image
        _ -> Nothing

instance ToText CseList'SearchType where
    toText = \case
        Image -> "image"

instance FromJSON CseList'SearchType where
    parseJSON = parseJSONText "CseList'SearchType"

instance ToJSON CseList'SearchType where
    toJSON = toJSONText

-- | Controls turning on or off the duplicate content filter.
data CseList'Filter
    = 0
      -- ^ @0@
      -- Turns off duplicate content filter.
    | 1
      -- ^ @1@
      -- Turns on duplicate content filter.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CseList'Filter

instance FromText CseList'Filter where
    fromText = \case
        "0" -> Just 0
        "1" -> Just 1
        _ -> Nothing

instance ToText CseList'Filter where
    toText = \case
        0 -> "0"
        1 -> "1"

instance FromJSON CseList'Filter where
    parseJSON = parseJSONText "CseList'Filter"

instance ToJSON CseList'Filter where
    toJSON = toJSONText
