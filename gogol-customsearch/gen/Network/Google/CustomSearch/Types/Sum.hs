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

-- | Controls whether to include or exclude results from the site named in
-- the as_sitesearch parameter
data SearchCseListSiteSearchFilter
    = E
      -- ^ @e@
      -- exclude
    | I
      -- ^ @i@
      -- include
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchCseListSiteSearchFilter

instance FromText SearchCseListSiteSearchFilter where
    fromText = \case
        "e" -> Just E
        "i" -> Just I
        _ -> Nothing

instance ToText SearchCseListSiteSearchFilter where
    toText = \case
        E -> "e"
        I -> "i"

instance FromJSON SearchCseListSiteSearchFilter where
    parseJSON = parseJSONText "SearchCseListSiteSearchFilter"

instance ToJSON SearchCseListSiteSearchFilter where
    toJSON = toJSONText

-- | Returns black and white, grayscale, or color images: mono, gray, and
-- color.
data SearchCseListImgColorType
    = Color
      -- ^ @color@
      -- color
    | Gray
      -- ^ @gray@
      -- gray
    | Mono
      -- ^ @mono@
      -- mono
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchCseListImgColorType

instance FromText SearchCseListImgColorType where
    fromText = \case
        "color" -> Just Color
        "gray" -> Just Gray
        "mono" -> Just Mono
        _ -> Nothing

instance ToText SearchCseListImgColorType where
    toText = \case
        Color -> "color"
        Gray -> "gray"
        Mono -> "mono"

instance FromJSON SearchCseListImgColorType where
    parseJSON = parseJSONText "SearchCseListImgColorType"

instance ToJSON SearchCseListImgColorType where
    toJSON = toJSONText

-- | Returns images of a type, which can be one of: clipart, face, lineart,
-- news, and photo.
data SearchCseListImgType
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

instance Hashable SearchCseListImgType

instance FromText SearchCseListImgType where
    fromText = \case
        "clipart" -> Just CliPart
        "face" -> Just Face
        "lineart" -> Just Lineart
        "news" -> Just News
        "photo" -> Just Photo
        _ -> Nothing

instance ToText SearchCseListImgType where
    toText = \case
        CliPart -> "clipart"
        Face -> "face"
        Lineart -> "lineart"
        News -> "news"
        Photo -> "photo"

instance FromJSON SearchCseListImgType where
    parseJSON = parseJSONText "SearchCseListImgType"

instance ToJSON SearchCseListImgType where
    toJSON = toJSONText

-- | Returns images of a specific dominant color: yellow, green, teal, blue,
-- purple, pink, white, gray, black and brown.
data SearchCseListImgDominantColor
    = SCLIDCBlack
      -- ^ @black@
      -- black
    | SCLIDCBlue
      -- ^ @blue@
      -- blue
    | SCLIDCBrown
      -- ^ @brown@
      -- brown
    | SCLIDCGray
      -- ^ @gray@
      -- gray
    | SCLIDCGreen
      -- ^ @green@
      -- green
    | SCLIDCPink
      -- ^ @pink@
      -- pink
    | SCLIDCPurple
      -- ^ @purple@
      -- purple
    | SCLIDCTeal
      -- ^ @teal@
      -- teal
    | SCLIDCWhite
      -- ^ @white@
      -- white
    | SCLIDCYellow
      -- ^ @yellow@
      -- yellow
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchCseListImgDominantColor

instance FromText SearchCseListImgDominantColor where
    fromText = \case
        "black" -> Just SCLIDCBlack
        "blue" -> Just SCLIDCBlue
        "brown" -> Just SCLIDCBrown
        "gray" -> Just SCLIDCGray
        "green" -> Just SCLIDCGreen
        "pink" -> Just SCLIDCPink
        "purple" -> Just SCLIDCPurple
        "teal" -> Just SCLIDCTeal
        "white" -> Just SCLIDCWhite
        "yellow" -> Just SCLIDCYellow
        _ -> Nothing

instance ToText SearchCseListImgDominantColor where
    toText = \case
        SCLIDCBlack -> "black"
        SCLIDCBlue -> "blue"
        SCLIDCBrown -> "brown"
        SCLIDCGray -> "gray"
        SCLIDCGreen -> "green"
        SCLIDCPink -> "pink"
        SCLIDCPurple -> "purple"
        SCLIDCTeal -> "teal"
        SCLIDCWhite -> "white"
        SCLIDCYellow -> "yellow"

instance FromJSON SearchCseListImgDominantColor where
    parseJSON = parseJSONText "SearchCseListImgDominantColor"

instance ToJSON SearchCseListImgDominantColor where
    toJSON = toJSONText

-- | Specifies the search type: image.
data SearchCseListSearchType
    = Image
      -- ^ @image@
      -- custom image search
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchCseListSearchType

instance FromText SearchCseListSearchType where
    fromText = \case
        "image" -> Just Image
        _ -> Nothing

instance ToText SearchCseListSearchType where
    toText = \case
        Image -> "image"

instance FromJSON SearchCseListSearchType where
    parseJSON = parseJSONText "SearchCseListSearchType"

instance ToJSON SearchCseListSearchType where
    toJSON = toJSONText

-- | The language restriction for the search results
data SearchCseListLr
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

instance Hashable SearchCseListLr

instance FromText SearchCseListLr where
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

instance ToText SearchCseListLr where
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

instance FromJSON SearchCseListLr where
    parseJSON = parseJSONText "SearchCseListLr"

instance ToJSON SearchCseListLr where
    toJSON = toJSONText

-- | Returns images of a specified size, where size can be one of: icon,
-- small, medium, large, xlarge, xxlarge, and huge.
data SearchCseListImgSize
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

instance Hashable SearchCseListImgSize

instance FromText SearchCseListImgSize where
    fromText = \case
        "huge" -> Just Huge
        "icon" -> Just Icon
        "large" -> Just Large
        "medium" -> Just Medium
        "small" -> Just Small
        "xlarge" -> Just Xlarge
        "xxlarge" -> Just Xxlarge
        _ -> Nothing

instance ToText SearchCseListImgSize where
    toText = \case
        Huge -> "huge"
        Icon -> "icon"
        Large -> "large"
        Medium -> "medium"
        Small -> "small"
        Xlarge -> "xlarge"
        Xxlarge -> "xxlarge"

instance FromJSON SearchCseListImgSize where
    parseJSON = parseJSONText "SearchCseListImgSize"

instance ToJSON SearchCseListImgSize where
    toJSON = toJSONText

-- | Search safety level
data SearchCseListSafe
    = SCLSHigh
      -- ^ @high@
      -- Enables highest level of safe search filtering.
    | SCLSMedium
      -- ^ @medium@
      -- Enables moderate safe search filtering.
    | SCLSOff
      -- ^ @off@
      -- Disables safe search filtering.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchCseListSafe

instance FromText SearchCseListSafe where
    fromText = \case
        "high" -> Just SCLSHigh
        "medium" -> Just SCLSMedium
        "off" -> Just SCLSOff
        _ -> Nothing

instance ToText SearchCseListSafe where
    toText = \case
        SCLSHigh -> "high"
        SCLSMedium -> "medium"
        SCLSOff -> "off"

instance FromJSON SearchCseListSafe where
    parseJSON = parseJSONText "SearchCseListSafe"

instance ToJSON SearchCseListSafe where
    toJSON = toJSONText

-- | Controls turning on or off the duplicate content filter.
data SearchCseListFilter
    = SCLF0
      -- ^ @0@
      -- Turns off duplicate content filter.
    | SCLF1
      -- ^ @1@
      -- Turns on duplicate content filter.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchCseListFilter

instance FromText SearchCseListFilter where
    fromText = \case
        "0" -> Just SCLF0
        "1" -> Just SCLF1
        _ -> Nothing

instance ToText SearchCseListFilter where
    toText = \case
        SCLF0 -> "0"
        SCLF1 -> "1"

instance FromJSON SearchCseListFilter where
    parseJSON = parseJSONText "SearchCseListFilter"

instance ToJSON SearchCseListFilter where
    toJSON = toJSONText
