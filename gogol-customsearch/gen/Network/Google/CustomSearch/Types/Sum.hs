{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
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

-- | Returns images of a specific dominant color: yellow, green, teal, blue,
-- purple, pink, white, gray, black and brown.
data ImgDominantColor
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

instance Hashable ImgDominantColor

instance FromText ImgDominantColor where
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

instance ToText ImgDominantColor where
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

instance FromJSON ImgDominantColor where
    parseJSON = parseJSONText "ImgDominantColor"

instance ToJSON ImgDominantColor where
    toJSON = toJSONText

-- | Controls whether to include or exclude results from the site named in
-- the as_sitesearch parameter
data SiteSearchFilter
    = E
      -- ^ @e@
      -- exclude
    | I
      -- ^ @i@
      -- include
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SiteSearchFilter

instance FromText SiteSearchFilter where
    fromText = \case
        "e" -> Just E
        "i" -> Just I
        _ -> Nothing

instance ToText SiteSearchFilter where
    toText = \case
        E -> "e"
        I -> "i"

instance FromJSON SiteSearchFilter where
    parseJSON = parseJSONText "SiteSearchFilter"

instance ToJSON SiteSearchFilter where
    toJSON = toJSONText

-- | Specifies the search type: image.
data SearchType
    = STImage
      -- ^ @image@
      -- custom image search
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchType

instance FromText SearchType where
    fromText = \case
        "image" -> Just STImage
        _ -> Nothing

instance ToText SearchType where
    toText = \case
        STImage -> "image"

instance FromJSON SearchType where
    parseJSON = parseJSONText "SearchType"

instance ToJSON SearchType where
    toJSON = toJSONText

-- | The language restriction for the search results
data Lr
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

instance Hashable Lr

instance FromText Lr where
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

instance ToText Lr where
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

instance FromJSON Lr where
    parseJSON = parseJSONText "Lr"

instance ToJSON Lr where
    toJSON = toJSONText

-- | Controls turning on or off the duplicate content filter.
data Filter
    = F0
      -- ^ @0@
      -- Turns off duplicate content filter.
    | F1
      -- ^ @1@
      -- Turns on duplicate content filter.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Filter

instance FromText Filter where
    fromText = \case
        "0" -> Just F0
        "1" -> Just F1
        _ -> Nothing

instance ToText Filter where
    toText = \case
        F0 -> "0"
        F1 -> "1"

instance FromJSON Filter where
    parseJSON = parseJSONText "Filter"

instance ToJSON Filter where
    toJSON = toJSONText

-- | Returns images of a type, which can be one of: clipart, face, lineart,
-- news, and photo.
data ImgType
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

instance Hashable ImgType

instance FromText ImgType where
    fromText = \case
        "clipart" -> Just CliPart
        "face" -> Just Face
        "lineart" -> Just Lineart
        "news" -> Just News
        "photo" -> Just Photo
        _ -> Nothing

instance ToText ImgType where
    toText = \case
        CliPart -> "clipart"
        Face -> "face"
        Lineart -> "lineart"
        News -> "news"
        Photo -> "photo"

instance FromJSON ImgType where
    parseJSON = parseJSONText "ImgType"

instance ToJSON ImgType where
    toJSON = toJSONText

-- | Returns black and white, grayscale, or color images: mono, gray, and
-- color.
data ImgColorType
    = ICTColor
      -- ^ @color@
      -- color
    | ICTGray
      -- ^ @gray@
      -- gray
    | ICTMono
      -- ^ @mono@
      -- mono
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImgColorType

instance FromText ImgColorType where
    fromText = \case
        "color" -> Just ICTColor
        "gray" -> Just ICTGray
        "mono" -> Just ICTMono
        _ -> Nothing

instance ToText ImgColorType where
    toText = \case
        ICTColor -> "color"
        ICTGray -> "gray"
        ICTMono -> "mono"

instance FromJSON ImgColorType where
    parseJSON = parseJSONText "ImgColorType"

instance ToJSON ImgColorType where
    toJSON = toJSONText

-- | Returns images of a specified size, where size can be one of: icon,
-- small, medium, large, xlarge, xxlarge, and huge.
data ImgSize
    = Huge
      -- ^ @huge@
      -- huge
    | Icon
      -- ^ @icon@
      -- icon
    | Large
      -- ^ @large@
      -- large
    | Medium
      -- ^ @medium@
      -- medium
    | Small
      -- ^ @small@
      -- small
    | Xlarge
      -- ^ @xlarge@
      -- xlarge
    | Xxlarge
      -- ^ @xxlarge@
      -- xxlarge
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImgSize

instance FromText ImgSize where
    fromText = \case
        "huge" -> Just Huge
        "icon" -> Just Icon
        "large" -> Just Large
        "medium" -> Just Medium
        "small" -> Just Small
        "xlarge" -> Just Xlarge
        "xxlarge" -> Just Xxlarge
        _ -> Nothing

instance ToText ImgSize where
    toText = \case
        Huge -> "huge"
        Icon -> "icon"
        Large -> "large"
        Medium -> "medium"
        Small -> "small"
        Xlarge -> "xlarge"
        Xxlarge -> "xxlarge"

instance FromJSON ImgSize where
    parseJSON = parseJSONText "ImgSize"

instance ToJSON ImgSize where
    toJSON = toJSONText

-- | Search safety level
data Safe
    = SHigh
      -- ^ @high@
      -- Enables highest level of safe search filtering.
    | SMedium
      -- ^ @medium@
      -- Enables moderate safe search filtering.
    | SOff
      -- ^ @off@
      -- Disables safe search filtering.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Safe

instance FromText Safe where
    fromText = \case
        "high" -> Just SHigh
        "medium" -> Just SMedium
        "off" -> Just SOff
        _ -> Nothing

instance ToText Safe where
    toText = \case
        SHigh -> "high"
        SMedium -> "medium"
        SOff -> "off"

instance FromJSON Safe where
    parseJSON = parseJSONText "Safe"

instance ToJSON Safe where
    toJSON = toJSONText
