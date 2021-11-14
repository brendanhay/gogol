{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CustomSearch.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CustomSearch.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Returns images of a type. Acceptable values are: * \`\"clipart\"\` *
-- \`\"face\"\` * \`\"lineart\"\` * \`\"stock\"\` * \`\"photo\"\` *
-- \`\"animated\"\`
data CSEListImgType
    = ImgTypeUndefined
      -- ^ @imgTypeUndefined@
      -- No image type specified.
    | CliPart
      -- ^ @clipart@
      -- Clipart-style images only.
    | Face
      -- ^ @face@
      -- Images of faces only.
    | Lineart
      -- ^ @lineart@
      -- Line art images only.
    | Stock
      -- ^ @stock@
      -- Stock images only.
    | Photo
      -- ^ @photo@
      -- Photo images only.
    | Animated
      -- ^ @animated@
      -- Animated images only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListImgType

instance FromHttpApiData CSEListImgType where
    parseQueryParam = \case
        "imgTypeUndefined" -> Right ImgTypeUndefined
        "clipart" -> Right CliPart
        "face" -> Right Face
        "lineart" -> Right Lineart
        "stock" -> Right Stock
        "photo" -> Right Photo
        "animated" -> Right Animated
        x -> Left ("Unable to parse CSEListImgType from: " <> x)

instance ToHttpApiData CSEListImgType where
    toQueryParam = \case
        ImgTypeUndefined -> "imgTypeUndefined"
        CliPart -> "clipart"
        Face -> "face"
        Lineart -> "lineart"
        Stock -> "stock"
        Photo -> "photo"
        Animated -> "animated"

instance FromJSON CSEListImgType where
    parseJSON = parseJSONText "CSEListImgType"

instance ToJSON CSEListImgType where
    toJSON = toJSONText

-- | Controls whether to include or exclude results from the site named in
-- the \`siteSearch\` parameter. Acceptable values are: * \`\"e\"\`:
-- exclude * \`\"i\"\`: include
data CSEListSiteSearchFilter
    = SiteSearchFilterUndefined
      -- ^ @siteSearchFilterUndefined@
      -- Filter mode unspecified.
    | E
      -- ^ @e@
      -- Exclude results from the listed sites.
    | I
      -- ^ @i@
      -- Include only results from the listed sites.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListSiteSearchFilter

instance FromHttpApiData CSEListSiteSearchFilter where
    parseQueryParam = \case
        "siteSearchFilterUndefined" -> Right SiteSearchFilterUndefined
        "e" -> Right E
        "i" -> Right I
        x -> Left ("Unable to parse CSEListSiteSearchFilter from: " <> x)

instance ToHttpApiData CSEListSiteSearchFilter where
    toQueryParam = \case
        SiteSearchFilterUndefined -> "siteSearchFilterUndefined"
        E -> "e"
        I -> "i"

instance FromJSON CSEListSiteSearchFilter where
    parseJSON = parseJSONText "CSEListSiteSearchFilter"

instance ToJSON CSEListSiteSearchFilter where
    toJSON = toJSONText

-- | Returns images of a type. Acceptable values are: * \`\"clipart\"\` *
-- \`\"face\"\` * \`\"lineart\"\` * \`\"stock\"\` * \`\"photo\"\` *
-- \`\"animated\"\`
data CSESiterestrictListImgType
    = CSESLITImgTypeUndefined
      -- ^ @imgTypeUndefined@
      -- No image type specified.
    | CSESLITCliPart
      -- ^ @clipart@
      -- Clipart-style images only.
    | CSESLITFace
      -- ^ @face@
      -- Images of faces only.
    | CSESLITLineart
      -- ^ @lineart@
      -- Line art images only.
    | CSESLITStock
      -- ^ @stock@
      -- Stock images only.
    | CSESLITPhoto
      -- ^ @photo@
      -- Photo images only.
    | CSESLITAnimated
      -- ^ @animated@
      -- Animated images only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListImgType

instance FromHttpApiData CSESiterestrictListImgType where
    parseQueryParam = \case
        "imgTypeUndefined" -> Right CSESLITImgTypeUndefined
        "clipart" -> Right CSESLITCliPart
        "face" -> Right CSESLITFace
        "lineart" -> Right CSESLITLineart
        "stock" -> Right CSESLITStock
        "photo" -> Right CSESLITPhoto
        "animated" -> Right CSESLITAnimated
        x -> Left ("Unable to parse CSESiterestrictListImgType from: " <> x)

instance ToHttpApiData CSESiterestrictListImgType where
    toQueryParam = \case
        CSESLITImgTypeUndefined -> "imgTypeUndefined"
        CSESLITCliPart -> "clipart"
        CSESLITFace -> "face"
        CSESLITLineart -> "lineart"
        CSESLITStock -> "stock"
        CSESLITPhoto -> "photo"
        CSESLITAnimated -> "animated"

instance FromJSON CSESiterestrictListImgType where
    parseJSON = parseJSONText "CSESiterestrictListImgType"

instance ToJSON CSESiterestrictListImgType where
    toJSON = toJSONText

-- | Returns images of a specific dominant color. Acceptable values are: *
-- \`\"black\"\` * \`\"blue\"\` * \`\"brown\"\` * \`\"gray\"\` *
-- \`\"green\"\` * \`\"orange\"\` * \`\"pink\"\` * \`\"purple\"\` *
-- \`\"red\"\` * \`\"teal\"\` * \`\"white\"\` * \`\"yellow\"\`
data CSEListImgDominantColor
    = ImgDominantColorUndefined
      -- ^ @imgDominantColorUndefined@
      -- No dominant color specified.
    | Black
      -- ^ @black@
      -- Predominantly black images only.
    | Blue
      -- ^ @blue@
      -- Predominantly blue images only.
    | Brown
      -- ^ @brown@
      -- Predominantly brown images only.
    | Gray
      -- ^ @gray@
      -- Predominantly gray images only.
    | Green
      -- ^ @green@
      -- Predominantly green images only.
    | Orange
      -- ^ @orange@
      -- Predominantly orange images only.
    | Pink
      -- ^ @pink@
      -- Predominantly pink images only.
    | Purple
      -- ^ @purple@
      -- Predominantly purple images only.
    | Red
      -- ^ @red@
      -- Predominantly red images only.
    | Teal
      -- ^ @teal@
      -- Predominantly teal images only.
    | White
      -- ^ @white@
      -- Predominantly white images only.
    | Yellow
      -- ^ @yellow@
      -- Predominantly yellow images only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListImgDominantColor

instance FromHttpApiData CSEListImgDominantColor where
    parseQueryParam = \case
        "imgDominantColorUndefined" -> Right ImgDominantColorUndefined
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
        ImgDominantColorUndefined -> "imgDominantColorUndefined"
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

-- | Search safety level. Acceptable values are: * \`\"active\"\`: Enables
-- SafeSearch filtering. * \`\"off\"\`: Disables SafeSearch filtering.
-- (default)
data CSEListSafe
    = SafeUndefined
      -- ^ @safeUndefined@
      -- SafeSearch mode unspecified. (Falls back to engine\'s configuration.)
    | Active
      -- ^ @active@
      -- Turn SafeSearch on.
    | High
      -- ^ @high@
      -- Deprecated, equivalent to \"active\".
    | Medium
      -- ^ @medium@
      -- Deprecated, equivalent to \"active\".
    | Off
      -- ^ @off@
      -- Turn SafeSearch off.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListSafe

instance FromHttpApiData CSEListSafe where
    parseQueryParam = \case
        "safeUndefined" -> Right SafeUndefined
        "active" -> Right Active
        "high" -> Right High
        "medium" -> Right Medium
        "off" -> Right Off
        x -> Left ("Unable to parse CSEListSafe from: " <> x)

instance ToHttpApiData CSEListSafe where
    toQueryParam = \case
        SafeUndefined -> "safeUndefined"
        Active -> "active"
        High -> "high"
        Medium -> "medium"
        Off -> "off"

instance FromJSON CSEListSafe where
    parseJSON = parseJSONText "CSEListSafe"

instance ToJSON CSEListSafe where
    toJSON = toJSONText

-- | Returns images of a specified size. Acceptable values are: *
-- \`\"huge\"\` * \`\"icon\"\` * \`\"large\"\` * \`\"medium\"\` *
-- \`\"small\"\` * \`\"xlarge\"\` * \`\"xxlarge\"\`
data CSESiterestrictListImgSize
    = CSESLISImgSizeUndefined
      -- ^ @imgSizeUndefined@
      -- No image size specified.
    | CSESLISHuge
      -- ^ @HUGE@
      -- Only the largest possible images.
    | CSESLISIcon
      -- ^ @ICON@
      -- Only very small icon-sized images.
    | CSESLISLarge
      -- ^ @LARGE@
      -- Only large images.
    | CSESLISMedium
      -- ^ @MEDIUM@
      -- Only medium images.
    | CSESLISSmall
      -- ^ @SMALL@
      -- Only small images.
    | CSESLISXlarge
      -- ^ @XLARGE@
      -- Only very large images.
    | CSESLISXxlarge
      -- ^ @XXLARGE@
      -- Only extremely large images.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListImgSize

instance FromHttpApiData CSESiterestrictListImgSize where
    parseQueryParam = \case
        "imgSizeUndefined" -> Right CSESLISImgSizeUndefined
        "HUGE" -> Right CSESLISHuge
        "ICON" -> Right CSESLISIcon
        "LARGE" -> Right CSESLISLarge
        "MEDIUM" -> Right CSESLISMedium
        "SMALL" -> Right CSESLISSmall
        "XLARGE" -> Right CSESLISXlarge
        "XXLARGE" -> Right CSESLISXxlarge
        x -> Left ("Unable to parse CSESiterestrictListImgSize from: " <> x)

instance ToHttpApiData CSESiterestrictListImgSize where
    toQueryParam = \case
        CSESLISImgSizeUndefined -> "imgSizeUndefined"
        CSESLISHuge -> "HUGE"
        CSESLISIcon -> "ICON"
        CSESLISLarge -> "LARGE"
        CSESLISMedium -> "MEDIUM"
        CSESLISSmall -> "SMALL"
        CSESLISXlarge -> "XLARGE"
        CSESLISXxlarge -> "XXLARGE"

instance FromJSON CSESiterestrictListImgSize where
    parseJSON = parseJSONText "CSESiterestrictListImgSize"

instance ToJSON CSESiterestrictListImgSize where
    toJSON = toJSONText

-- | Returns black and white, grayscale, transparent, or color images.
-- Acceptable values are: * \`\"color\"\` * \`\"gray\"\` * \`\"mono\"\`:
-- black and white * \`\"trans\"\`: transparent background
data CSESiterestrictListImgColorType
    = CSESLICTImgColorTypeUndefined
      -- ^ @imgColorTypeUndefined@
      -- No image color type specified.
    | CSESLICTMono
      -- ^ @mono@
      -- Black and white images only.
    | CSESLICTGray
      -- ^ @gray@
      -- Grayscale images only.
    | CSESLICTColor
      -- ^ @color@
      -- Color images only.
    | CSESLICTTrans
      -- ^ @trans@
      -- Images with transparent background
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListImgColorType

instance FromHttpApiData CSESiterestrictListImgColorType where
    parseQueryParam = \case
        "imgColorTypeUndefined" -> Right CSESLICTImgColorTypeUndefined
        "mono" -> Right CSESLICTMono
        "gray" -> Right CSESLICTGray
        "color" -> Right CSESLICTColor
        "trans" -> Right CSESLICTTrans
        x -> Left ("Unable to parse CSESiterestrictListImgColorType from: " <> x)

instance ToHttpApiData CSESiterestrictListImgColorType where
    toQueryParam = \case
        CSESLICTImgColorTypeUndefined -> "imgColorTypeUndefined"
        CSESLICTMono -> "mono"
        CSESLICTGray -> "gray"
        CSESLICTColor -> "color"
        CSESLICTTrans -> "trans"

instance FromJSON CSESiterestrictListImgColorType where
    parseJSON = parseJSONText "CSESiterestrictListImgColorType"

instance ToJSON CSESiterestrictListImgColorType where
    toJSON = toJSONText

-- | Returns black and white, grayscale, transparent, or color images.
-- Acceptable values are: * \`\"color\"\` * \`\"gray\"\` * \`\"mono\"\`:
-- black and white * \`\"trans\"\`: transparent background
data CSEListImgColorType
    = CSELICTImgColorTypeUndefined
      -- ^ @imgColorTypeUndefined@
      -- No image color type specified.
    | CSELICTMono
      -- ^ @mono@
      -- Black and white images only.
    | CSELICTGray
      -- ^ @gray@
      -- Grayscale images only.
    | CSELICTColor
      -- ^ @color@
      -- Color images only.
    | CSELICTTrans
      -- ^ @trans@
      -- Images with transparent background
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListImgColorType

instance FromHttpApiData CSEListImgColorType where
    parseQueryParam = \case
        "imgColorTypeUndefined" -> Right CSELICTImgColorTypeUndefined
        "mono" -> Right CSELICTMono
        "gray" -> Right CSELICTGray
        "color" -> Right CSELICTColor
        "trans" -> Right CSELICTTrans
        x -> Left ("Unable to parse CSEListImgColorType from: " <> x)

instance ToHttpApiData CSEListImgColorType where
    toQueryParam = \case
        CSELICTImgColorTypeUndefined -> "imgColorTypeUndefined"
        CSELICTMono -> "mono"
        CSELICTGray -> "gray"
        CSELICTColor -> "color"
        CSELICTTrans -> "trans"

instance FromJSON CSEListImgColorType where
    parseJSON = parseJSONText "CSEListImgColorType"

instance ToJSON CSEListImgColorType where
    toJSON = toJSONText

-- | Search safety level. Acceptable values are: * \`\"active\"\`: Enables
-- SafeSearch filtering. * \`\"off\"\`: Disables SafeSearch filtering.
-- (default)
data CSESiterestrictListSafe
    = CSESLSSafeUndefined
      -- ^ @safeUndefined@
      -- SafeSearch mode unspecified. (Falls back to engine\'s configuration.)
    | CSESLSActive
      -- ^ @active@
      -- Turn SafeSearch on.
    | CSESLSHigh
      -- ^ @high@
      -- Deprecated, equivalent to \"active\".
    | CSESLSMedium
      -- ^ @medium@
      -- Deprecated, equivalent to \"active\".
    | CSESLSOff
      -- ^ @off@
      -- Turn SafeSearch off.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListSafe

instance FromHttpApiData CSESiterestrictListSafe where
    parseQueryParam = \case
        "safeUndefined" -> Right CSESLSSafeUndefined
        "active" -> Right CSESLSActive
        "high" -> Right CSESLSHigh
        "medium" -> Right CSESLSMedium
        "off" -> Right CSESLSOff
        x -> Left ("Unable to parse CSESiterestrictListSafe from: " <> x)

instance ToHttpApiData CSESiterestrictListSafe where
    toQueryParam = \case
        CSESLSSafeUndefined -> "safeUndefined"
        CSESLSActive -> "active"
        CSESLSHigh -> "high"
        CSESLSMedium -> "medium"
        CSESLSOff -> "off"

instance FromJSON CSESiterestrictListSafe where
    parseJSON = parseJSONText "CSESiterestrictListSafe"

instance ToJSON CSESiterestrictListSafe where
    toJSON = toJSONText

-- | Returns images of a specific dominant color. Acceptable values are: *
-- \`\"black\"\` * \`\"blue\"\` * \`\"brown\"\` * \`\"gray\"\` *
-- \`\"green\"\` * \`\"orange\"\` * \`\"pink\"\` * \`\"purple\"\` *
-- \`\"red\"\` * \`\"teal\"\` * \`\"white\"\` * \`\"yellow\"\`
data CSESiterestrictListImgDominantColor
    = CSESLIDCImgDominantColorUndefined
      -- ^ @imgDominantColorUndefined@
      -- No dominant color specified.
    | CSESLIDCBlack
      -- ^ @black@
      -- Predominantly black images only.
    | CSESLIDCBlue
      -- ^ @blue@
      -- Predominantly blue images only.
    | CSESLIDCBrown
      -- ^ @brown@
      -- Predominantly brown images only.
    | CSESLIDCGray
      -- ^ @gray@
      -- Predominantly gray images only.
    | CSESLIDCGreen
      -- ^ @green@
      -- Predominantly green images only.
    | CSESLIDCOrange
      -- ^ @orange@
      -- Predominantly orange images only.
    | CSESLIDCPink
      -- ^ @pink@
      -- Predominantly pink images only.
    | CSESLIDCPurple
      -- ^ @purple@
      -- Predominantly purple images only.
    | CSESLIDCRed
      -- ^ @red@
      -- Predominantly red images only.
    | CSESLIDCTeal
      -- ^ @teal@
      -- Predominantly teal images only.
    | CSESLIDCWhite
      -- ^ @white@
      -- Predominantly white images only.
    | CSESLIDCYellow
      -- ^ @yellow@
      -- Predominantly yellow images only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListImgDominantColor

instance FromHttpApiData CSESiterestrictListImgDominantColor where
    parseQueryParam = \case
        "imgDominantColorUndefined" -> Right CSESLIDCImgDominantColorUndefined
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
        CSESLIDCImgDominantColorUndefined -> "imgDominantColorUndefined"
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

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Controls whether to include or exclude results from the site named in
-- the \`siteSearch\` parameter. Acceptable values are: * \`\"e\"\`:
-- exclude * \`\"i\"\`: include
data CSESiterestrictListSiteSearchFilter
    = CSESLSSFSiteSearchFilterUndefined
      -- ^ @siteSearchFilterUndefined@
      -- Filter mode unspecified.
    | CSESLSSFE
      -- ^ @e@
      -- Exclude results from the listed sites.
    | CSESLSSFI
      -- ^ @i@
      -- Include only results from the listed sites.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListSiteSearchFilter

instance FromHttpApiData CSESiterestrictListSiteSearchFilter where
    parseQueryParam = \case
        "siteSearchFilterUndefined" -> Right CSESLSSFSiteSearchFilterUndefined
        "e" -> Right CSESLSSFE
        "i" -> Right CSESLSSFI
        x -> Left ("Unable to parse CSESiterestrictListSiteSearchFilter from: " <> x)

instance ToHttpApiData CSESiterestrictListSiteSearchFilter where
    toQueryParam = \case
        CSESLSSFSiteSearchFilterUndefined -> "siteSearchFilterUndefined"
        CSESLSSFE -> "e"
        CSESLSSFI -> "i"

instance FromJSON CSESiterestrictListSiteSearchFilter where
    parseJSON = parseJSONText "CSESiterestrictListSiteSearchFilter"

instance ToJSON CSESiterestrictListSiteSearchFilter where
    toJSON = toJSONText

-- | Specifies the search type: \`image\`. If unspecified, results are
-- limited to webpages. Acceptable values are: * \`\"image\"\`: custom
-- image search.
data CSESiterestrictListSearchType
    = SearchTypeUndefined
      -- ^ @searchTypeUndefined@
      -- Search type unspecified (defaults to web search).
    | Image
      -- ^ @image@
      -- Image search.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSESiterestrictListSearchType

instance FromHttpApiData CSESiterestrictListSearchType where
    parseQueryParam = \case
        "searchTypeUndefined" -> Right SearchTypeUndefined
        "image" -> Right Image
        x -> Left ("Unable to parse CSESiterestrictListSearchType from: " <> x)

instance ToHttpApiData CSESiterestrictListSearchType where
    toQueryParam = \case
        SearchTypeUndefined -> "searchTypeUndefined"
        Image -> "image"

instance FromJSON CSESiterestrictListSearchType where
    parseJSON = parseJSONText "CSESiterestrictListSearchType"

instance ToJSON CSESiterestrictListSearchType where
    toJSON = toJSONText

-- | Specifies the search type: \`image\`. If unspecified, results are
-- limited to webpages. Acceptable values are: * \`\"image\"\`: custom
-- image search.
data CSEListSearchType
    = CSELSTSearchTypeUndefined
      -- ^ @searchTypeUndefined@
      -- Search type unspecified (defaults to web search).
    | CSELSTImage
      -- ^ @image@
      -- Image search.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListSearchType

instance FromHttpApiData CSEListSearchType where
    parseQueryParam = \case
        "searchTypeUndefined" -> Right CSELSTSearchTypeUndefined
        "image" -> Right CSELSTImage
        x -> Left ("Unable to parse CSEListSearchType from: " <> x)

instance ToHttpApiData CSEListSearchType where
    toQueryParam = \case
        CSELSTSearchTypeUndefined -> "searchTypeUndefined"
        CSELSTImage -> "image"

instance FromJSON CSEListSearchType where
    parseJSON = parseJSONText "CSEListSearchType"

instance ToJSON CSEListSearchType where
    toJSON = toJSONText

-- | Returns images of a specified size. Acceptable values are: *
-- \`\"huge\"\` * \`\"icon\"\` * \`\"large\"\` * \`\"medium\"\` *
-- \`\"small\"\` * \`\"xlarge\"\` * \`\"xxlarge\"\`
data CSEListImgSize
    = CSELISImgSizeUndefined
      -- ^ @imgSizeUndefined@
      -- No image size specified.
    | CSELISHuge
      -- ^ @HUGE@
      -- Only the largest possible images.
    | CSELISIcon
      -- ^ @ICON@
      -- Only very small icon-sized images.
    | CSELISLarge
      -- ^ @LARGE@
      -- Only large images.
    | CSELISMedium
      -- ^ @MEDIUM@
      -- Only medium images.
    | CSELISSmall
      -- ^ @SMALL@
      -- Only small images.
    | CSELISXlarge
      -- ^ @XLARGE@
      -- Only very large images.
    | CSELISXxlarge
      -- ^ @XXLARGE@
      -- Only extremely large images.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CSEListImgSize

instance FromHttpApiData CSEListImgSize where
    parseQueryParam = \case
        "imgSizeUndefined" -> Right CSELISImgSizeUndefined
        "HUGE" -> Right CSELISHuge
        "ICON" -> Right CSELISIcon
        "LARGE" -> Right CSELISLarge
        "MEDIUM" -> Right CSELISMedium
        "SMALL" -> Right CSELISSmall
        "XLARGE" -> Right CSELISXlarge
        "XXLARGE" -> Right CSELISXxlarge
        x -> Left ("Unable to parse CSEListImgSize from: " <> x)

instance ToHttpApiData CSEListImgSize where
    toQueryParam = \case
        CSELISImgSizeUndefined -> "imgSizeUndefined"
        CSELISHuge -> "HUGE"
        CSELISIcon -> "ICON"
        CSELISLarge -> "LARGE"
        CSELISMedium -> "MEDIUM"
        CSELISSmall -> "SMALL"
        CSELISXlarge -> "XLARGE"
        CSELISXxlarge -> "XXLARGE"

instance FromJSON CSEListImgSize where
    parseJSON = parseJSONText "CSEListImgSize"

instance ToJSON CSEListImgSize where
    toJSON = toJSONText
