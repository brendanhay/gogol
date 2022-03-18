{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.CustomSearch.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.CustomSearch.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * CseListImgColorType
    CseListImgColorType
      ( CseListImgColorType_ImgColorTypeUndefined,
        CseListImgColorType_Mono,
        CseListImgColorType_Gray,
        CseListImgColorType_Color,
        CseListImgColorType_Trans,
        ..
      ),

    -- * CseListImgDominantColor
    CseListImgDominantColor
      ( CseListImgDominantColor_ImgDominantColorUndefined,
        CseListImgDominantColor_Black,
        CseListImgDominantColor_Blue,
        CseListImgDominantColor_Brown,
        CseListImgDominantColor_Gray,
        CseListImgDominantColor_Green,
        CseListImgDominantColor_Orange,
        CseListImgDominantColor_Pink,
        CseListImgDominantColor_Purple,
        CseListImgDominantColor_Red,
        CseListImgDominantColor_Teal,
        CseListImgDominantColor_White,
        CseListImgDominantColor_Yellow,
        ..
      ),

    -- * CseListImgSize
    CseListImgSize
      ( CseListImgSize_ImgSizeUndefined,
        CseListImgSize_Huge,
        CseListImgSize_Icon,
        CseListImgSize_Large,
        CseListImgSize_Medium,
        CseListImgSize_Small,
        CseListImgSize_Xlarge,
        CseListImgSize_Xxlarge,
        ..
      ),

    -- * CseListImgType
    CseListImgType
      ( CseListImgType_ImgTypeUndefined,
        CseListImgType_Clipart,
        CseListImgType_Face,
        CseListImgType_Lineart,
        CseListImgType_Stock,
        CseListImgType_Photo,
        CseListImgType_Animated,
        ..
      ),

    -- * CseListSafe
    CseListSafe
      ( CseListSafe_SafeUndefined,
        CseListSafe_Active,
        CseListSafe_High,
        CseListSafe_Medium,
        CseListSafe_Off,
        ..
      ),

    -- * CseListSearchType
    CseListSearchType
      ( CseListSearchType_SearchTypeUndefined,
        CseListSearchType_Image,
        ..
      ),

    -- * CseListSiteSearchFilter
    CseListSiteSearchFilter
      ( CseListSiteSearchFilter_SiteSearchFilterUndefined,
        CseListSiteSearchFilter_E,
        CseListSiteSearchFilter_I,
        ..
      ),

    -- * CseSiterestrictListImgColorType
    CseSiterestrictListImgColorType
      ( CseSiterestrictListImgColorType_ImgColorTypeUndefined,
        CseSiterestrictListImgColorType_Mono,
        CseSiterestrictListImgColorType_Gray,
        CseSiterestrictListImgColorType_Color,
        CseSiterestrictListImgColorType_Trans,
        ..
      ),

    -- * CseSiterestrictListImgDominantColor
    CseSiterestrictListImgDominantColor
      ( CseSiterestrictListImgDominantColor_ImgDominantColorUndefined,
        CseSiterestrictListImgDominantColor_Black,
        CseSiterestrictListImgDominantColor_Blue,
        CseSiterestrictListImgDominantColor_Brown,
        CseSiterestrictListImgDominantColor_Gray,
        CseSiterestrictListImgDominantColor_Green,
        CseSiterestrictListImgDominantColor_Orange,
        CseSiterestrictListImgDominantColor_Pink,
        CseSiterestrictListImgDominantColor_Purple,
        CseSiterestrictListImgDominantColor_Red,
        CseSiterestrictListImgDominantColor_Teal,
        CseSiterestrictListImgDominantColor_White,
        CseSiterestrictListImgDominantColor_Yellow,
        ..
      ),

    -- * CseSiterestrictListImgSize
    CseSiterestrictListImgSize
      ( CseSiterestrictListImgSize_ImgSizeUndefined,
        CseSiterestrictListImgSize_Huge,
        CseSiterestrictListImgSize_Icon,
        CseSiterestrictListImgSize_Large,
        CseSiterestrictListImgSize_Medium,
        CseSiterestrictListImgSize_Small,
        CseSiterestrictListImgSize_Xlarge,
        CseSiterestrictListImgSize_Xxlarge,
        ..
      ),

    -- * CseSiterestrictListImgType
    CseSiterestrictListImgType
      ( CseSiterestrictListImgType_ImgTypeUndefined,
        CseSiterestrictListImgType_Clipart,
        CseSiterestrictListImgType_Face,
        CseSiterestrictListImgType_Lineart,
        CseSiterestrictListImgType_Stock,
        CseSiterestrictListImgType_Photo,
        CseSiterestrictListImgType_Animated,
        ..
      ),

    -- * CseSiterestrictListSafe
    CseSiterestrictListSafe
      ( CseSiterestrictListSafe_SafeUndefined,
        CseSiterestrictListSafe_Active,
        CseSiterestrictListSafe_High,
        CseSiterestrictListSafe_Medium,
        CseSiterestrictListSafe_Off,
        ..
      ),

    -- * CseSiterestrictListSearchType
    CseSiterestrictListSearchType
      ( CseSiterestrictListSearchType_SearchTypeUndefined,
        CseSiterestrictListSearchType_Image,
        ..
      ),

    -- * CseSiterestrictListSiteSearchFilter
    CseSiterestrictListSiteSearchFilter
      ( CseSiterestrictListSiteSearchFilter_SiteSearchFilterUndefined,
        CseSiterestrictListSiteSearchFilter_E,
        CseSiterestrictListSiteSearchFilter_I,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Returns black and white, grayscale, transparent, or color images. Acceptable values are: * @\"color\"@ * @\"gray\"@ * @\"mono\"@: black and white * @\"trans\"@: transparent background
newtype CseListImgColorType = CseListImgColorType {fromCseListImgColorType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No image color type specified.
pattern CseListImgColorType_ImgColorTypeUndefined :: CseListImgColorType
pattern CseListImgColorType_ImgColorTypeUndefined = CseListImgColorType "imgColorTypeUndefined"

-- | Black and white images only.
pattern CseListImgColorType_Mono :: CseListImgColorType
pattern CseListImgColorType_Mono = CseListImgColorType "mono"

-- | Grayscale images only.
pattern CseListImgColorType_Gray :: CseListImgColorType
pattern CseListImgColorType_Gray = CseListImgColorType "gray"

-- | Color images only.
pattern CseListImgColorType_Color :: CseListImgColorType
pattern CseListImgColorType_Color = CseListImgColorType "color"

-- | Images with transparent background
pattern CseListImgColorType_Trans :: CseListImgColorType
pattern CseListImgColorType_Trans = CseListImgColorType "trans"

{-# COMPLETE
  CseListImgColorType_ImgColorTypeUndefined,
  CseListImgColorType_Mono,
  CseListImgColorType_Gray,
  CseListImgColorType_Color,
  CseListImgColorType_Trans,
  CseListImgColorType
  #-}

-- | Returns images of a specific dominant color. Acceptable values are: * @\"black\"@ * @\"blue\"@ * @\"brown\"@ * @\"gray\"@ * @\"green\"@ * @\"orange\"@ * @\"pink\"@ * @\"purple\"@ * @\"red\"@ * @\"teal\"@ * @\"white\"@ * @\"yellow\"@
newtype CseListImgDominantColor = CseListImgDominantColor {fromCseListImgDominantColor :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No dominant color specified.
pattern CseListImgDominantColor_ImgDominantColorUndefined :: CseListImgDominantColor
pattern CseListImgDominantColor_ImgDominantColorUndefined = CseListImgDominantColor "imgDominantColorUndefined"

-- | Predominantly black images only.
pattern CseListImgDominantColor_Black :: CseListImgDominantColor
pattern CseListImgDominantColor_Black = CseListImgDominantColor "black"

-- | Predominantly blue images only.
pattern CseListImgDominantColor_Blue :: CseListImgDominantColor
pattern CseListImgDominantColor_Blue = CseListImgDominantColor "blue"

-- | Predominantly brown images only.
pattern CseListImgDominantColor_Brown :: CseListImgDominantColor
pattern CseListImgDominantColor_Brown = CseListImgDominantColor "brown"

-- | Predominantly gray images only.
pattern CseListImgDominantColor_Gray :: CseListImgDominantColor
pattern CseListImgDominantColor_Gray = CseListImgDominantColor "gray"

-- | Predominantly green images only.
pattern CseListImgDominantColor_Green :: CseListImgDominantColor
pattern CseListImgDominantColor_Green = CseListImgDominantColor "green"

-- | Predominantly orange images only.
pattern CseListImgDominantColor_Orange :: CseListImgDominantColor
pattern CseListImgDominantColor_Orange = CseListImgDominantColor "orange"

-- | Predominantly pink images only.
pattern CseListImgDominantColor_Pink :: CseListImgDominantColor
pattern CseListImgDominantColor_Pink = CseListImgDominantColor "pink"

-- | Predominantly purple images only.
pattern CseListImgDominantColor_Purple :: CseListImgDominantColor
pattern CseListImgDominantColor_Purple = CseListImgDominantColor "purple"

-- | Predominantly red images only.
pattern CseListImgDominantColor_Red :: CseListImgDominantColor
pattern CseListImgDominantColor_Red = CseListImgDominantColor "red"

-- | Predominantly teal images only.
pattern CseListImgDominantColor_Teal :: CseListImgDominantColor
pattern CseListImgDominantColor_Teal = CseListImgDominantColor "teal"

-- | Predominantly white images only.
pattern CseListImgDominantColor_White :: CseListImgDominantColor
pattern CseListImgDominantColor_White = CseListImgDominantColor "white"

-- | Predominantly yellow images only.
pattern CseListImgDominantColor_Yellow :: CseListImgDominantColor
pattern CseListImgDominantColor_Yellow = CseListImgDominantColor "yellow"

{-# COMPLETE
  CseListImgDominantColor_ImgDominantColorUndefined,
  CseListImgDominantColor_Black,
  CseListImgDominantColor_Blue,
  CseListImgDominantColor_Brown,
  CseListImgDominantColor_Gray,
  CseListImgDominantColor_Green,
  CseListImgDominantColor_Orange,
  CseListImgDominantColor_Pink,
  CseListImgDominantColor_Purple,
  CseListImgDominantColor_Red,
  CseListImgDominantColor_Teal,
  CseListImgDominantColor_White,
  CseListImgDominantColor_Yellow,
  CseListImgDominantColor
  #-}

-- | Returns images of a specified size. Acceptable values are: * @\"huge\"@ * @\"icon\"@ * @\"large\"@ * @\"medium\"@ * @\"small\"@ * @\"xlarge\"@ * @\"xxlarge\"@
newtype CseListImgSize = CseListImgSize {fromCseListImgSize :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No image size specified.
pattern CseListImgSize_ImgSizeUndefined :: CseListImgSize
pattern CseListImgSize_ImgSizeUndefined = CseListImgSize "imgSizeUndefined"

-- | Only the largest possible images.
pattern CseListImgSize_Huge :: CseListImgSize
pattern CseListImgSize_Huge = CseListImgSize "HUGE"

-- | Only very small icon-sized images.
pattern CseListImgSize_Icon :: CseListImgSize
pattern CseListImgSize_Icon = CseListImgSize "ICON"

-- | Only large images.
pattern CseListImgSize_Large :: CseListImgSize
pattern CseListImgSize_Large = CseListImgSize "LARGE"

-- | Only medium images.
pattern CseListImgSize_Medium :: CseListImgSize
pattern CseListImgSize_Medium = CseListImgSize "MEDIUM"

-- | Only small images.
pattern CseListImgSize_Small :: CseListImgSize
pattern CseListImgSize_Small = CseListImgSize "SMALL"

-- | Only very large images.
pattern CseListImgSize_Xlarge :: CseListImgSize
pattern CseListImgSize_Xlarge = CseListImgSize "XLARGE"

-- | Only extremely large images.
pattern CseListImgSize_Xxlarge :: CseListImgSize
pattern CseListImgSize_Xxlarge = CseListImgSize "XXLARGE"

{-# COMPLETE
  CseListImgSize_ImgSizeUndefined,
  CseListImgSize_Huge,
  CseListImgSize_Icon,
  CseListImgSize_Large,
  CseListImgSize_Medium,
  CseListImgSize_Small,
  CseListImgSize_Xlarge,
  CseListImgSize_Xxlarge,
  CseListImgSize
  #-}

-- | Returns images of a type. Acceptable values are: * @\"clipart\"@ * @\"face\"@ * @\"lineart\"@ * @\"stock\"@ * @\"photo\"@ * @\"animated\"@
newtype CseListImgType = CseListImgType {fromCseListImgType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No image type specified.
pattern CseListImgType_ImgTypeUndefined :: CseListImgType
pattern CseListImgType_ImgTypeUndefined = CseListImgType "imgTypeUndefined"

-- | Clipart-style images only.
pattern CseListImgType_Clipart :: CseListImgType
pattern CseListImgType_Clipart = CseListImgType "clipart"

-- | Images of faces only.
pattern CseListImgType_Face :: CseListImgType
pattern CseListImgType_Face = CseListImgType "face"

-- | Line art images only.
pattern CseListImgType_Lineart :: CseListImgType
pattern CseListImgType_Lineart = CseListImgType "lineart"

-- | Stock images only.
pattern CseListImgType_Stock :: CseListImgType
pattern CseListImgType_Stock = CseListImgType "stock"

-- | Photo images only.
pattern CseListImgType_Photo :: CseListImgType
pattern CseListImgType_Photo = CseListImgType "photo"

-- | Animated images only.
pattern CseListImgType_Animated :: CseListImgType
pattern CseListImgType_Animated = CseListImgType "animated"

{-# COMPLETE
  CseListImgType_ImgTypeUndefined,
  CseListImgType_Clipart,
  CseListImgType_Face,
  CseListImgType_Lineart,
  CseListImgType_Stock,
  CseListImgType_Photo,
  CseListImgType_Animated,
  CseListImgType
  #-}

-- | Search safety level. Acceptable values are: * @\"active\"@: Enables SafeSearch filtering. * @\"off\"@: Disables SafeSearch filtering. (default)
newtype CseListSafe = CseListSafe {fromCseListSafe :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | SafeSearch mode unspecified. (Falls back to engine\'s configuration.)
pattern CseListSafe_SafeUndefined :: CseListSafe
pattern CseListSafe_SafeUndefined = CseListSafe "safeUndefined"

-- | Turn SafeSearch on.
pattern CseListSafe_Active :: CseListSafe
pattern CseListSafe_Active = CseListSafe "active"

-- | Deprecated, equivalent to \"active\".
pattern CseListSafe_High :: CseListSafe
pattern CseListSafe_High = CseListSafe "high"

-- | Deprecated, equivalent to \"active\".
pattern CseListSafe_Medium :: CseListSafe
pattern CseListSafe_Medium = CseListSafe "medium"

-- | Turn SafeSearch off.
pattern CseListSafe_Off :: CseListSafe
pattern CseListSafe_Off = CseListSafe "off"

{-# COMPLETE
  CseListSafe_SafeUndefined,
  CseListSafe_Active,
  CseListSafe_High,
  CseListSafe_Medium,
  CseListSafe_Off,
  CseListSafe
  #-}

-- | Specifies the search type: @image@. If unspecified, results are limited to webpages. Acceptable values are: * @\"image\"@: custom image search.
newtype CseListSearchType = CseListSearchType {fromCseListSearchType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Search type unspecified (defaults to web search).
pattern CseListSearchType_SearchTypeUndefined :: CseListSearchType
pattern CseListSearchType_SearchTypeUndefined = CseListSearchType "searchTypeUndefined"

-- | Image search.
pattern CseListSearchType_Image :: CseListSearchType
pattern CseListSearchType_Image = CseListSearchType "image"

{-# COMPLETE
  CseListSearchType_SearchTypeUndefined,
  CseListSearchType_Image,
  CseListSearchType
  #-}

-- | Controls whether to include or exclude results from the site named in the @siteSearch@ parameter. Acceptable values are: * @\"e\"@: exclude * @\"i\"@: include
newtype CseListSiteSearchFilter = CseListSiteSearchFilter {fromCseListSiteSearchFilter :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Filter mode unspecified.
pattern CseListSiteSearchFilter_SiteSearchFilterUndefined :: CseListSiteSearchFilter
pattern CseListSiteSearchFilter_SiteSearchFilterUndefined = CseListSiteSearchFilter "siteSearchFilterUndefined"

-- | Exclude results from the listed sites.
pattern CseListSiteSearchFilter_E :: CseListSiteSearchFilter
pattern CseListSiteSearchFilter_E = CseListSiteSearchFilter "e"

-- | Include only results from the listed sites.
pattern CseListSiteSearchFilter_I :: CseListSiteSearchFilter
pattern CseListSiteSearchFilter_I = CseListSiteSearchFilter "i"

{-# COMPLETE
  CseListSiteSearchFilter_SiteSearchFilterUndefined,
  CseListSiteSearchFilter_E,
  CseListSiteSearchFilter_I,
  CseListSiteSearchFilter
  #-}

-- | Returns black and white, grayscale, transparent, or color images. Acceptable values are: * @\"color\"@ * @\"gray\"@ * @\"mono\"@: black and white * @\"trans\"@: transparent background
newtype CseSiterestrictListImgColorType = CseSiterestrictListImgColorType {fromCseSiterestrictListImgColorType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No image color type specified.
pattern CseSiterestrictListImgColorType_ImgColorTypeUndefined :: CseSiterestrictListImgColorType
pattern CseSiterestrictListImgColorType_ImgColorTypeUndefined = CseSiterestrictListImgColorType "imgColorTypeUndefined"

-- | Black and white images only.
pattern CseSiterestrictListImgColorType_Mono :: CseSiterestrictListImgColorType
pattern CseSiterestrictListImgColorType_Mono = CseSiterestrictListImgColorType "mono"

-- | Grayscale images only.
pattern CseSiterestrictListImgColorType_Gray :: CseSiterestrictListImgColorType
pattern CseSiterestrictListImgColorType_Gray = CseSiterestrictListImgColorType "gray"

-- | Color images only.
pattern CseSiterestrictListImgColorType_Color :: CseSiterestrictListImgColorType
pattern CseSiterestrictListImgColorType_Color = CseSiterestrictListImgColorType "color"

-- | Images with transparent background
pattern CseSiterestrictListImgColorType_Trans :: CseSiterestrictListImgColorType
pattern CseSiterestrictListImgColorType_Trans = CseSiterestrictListImgColorType "trans"

{-# COMPLETE
  CseSiterestrictListImgColorType_ImgColorTypeUndefined,
  CseSiterestrictListImgColorType_Mono,
  CseSiterestrictListImgColorType_Gray,
  CseSiterestrictListImgColorType_Color,
  CseSiterestrictListImgColorType_Trans,
  CseSiterestrictListImgColorType
  #-}

-- | Returns images of a specific dominant color. Acceptable values are: * @\"black\"@ * @\"blue\"@ * @\"brown\"@ * @\"gray\"@ * @\"green\"@ * @\"orange\"@ * @\"pink\"@ * @\"purple\"@ * @\"red\"@ * @\"teal\"@ * @\"white\"@ * @\"yellow\"@
newtype CseSiterestrictListImgDominantColor = CseSiterestrictListImgDominantColor {fromCseSiterestrictListImgDominantColor :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No dominant color specified.
pattern CseSiterestrictListImgDominantColor_ImgDominantColorUndefined :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_ImgDominantColorUndefined = CseSiterestrictListImgDominantColor "imgDominantColorUndefined"

-- | Predominantly black images only.
pattern CseSiterestrictListImgDominantColor_Black :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Black = CseSiterestrictListImgDominantColor "black"

-- | Predominantly blue images only.
pattern CseSiterestrictListImgDominantColor_Blue :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Blue = CseSiterestrictListImgDominantColor "blue"

-- | Predominantly brown images only.
pattern CseSiterestrictListImgDominantColor_Brown :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Brown = CseSiterestrictListImgDominantColor "brown"

-- | Predominantly gray images only.
pattern CseSiterestrictListImgDominantColor_Gray :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Gray = CseSiterestrictListImgDominantColor "gray"

-- | Predominantly green images only.
pattern CseSiterestrictListImgDominantColor_Green :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Green = CseSiterestrictListImgDominantColor "green"

-- | Predominantly orange images only.
pattern CseSiterestrictListImgDominantColor_Orange :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Orange = CseSiterestrictListImgDominantColor "orange"

-- | Predominantly pink images only.
pattern CseSiterestrictListImgDominantColor_Pink :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Pink = CseSiterestrictListImgDominantColor "pink"

-- | Predominantly purple images only.
pattern CseSiterestrictListImgDominantColor_Purple :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Purple = CseSiterestrictListImgDominantColor "purple"

-- | Predominantly red images only.
pattern CseSiterestrictListImgDominantColor_Red :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Red = CseSiterestrictListImgDominantColor "red"

-- | Predominantly teal images only.
pattern CseSiterestrictListImgDominantColor_Teal :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Teal = CseSiterestrictListImgDominantColor "teal"

-- | Predominantly white images only.
pattern CseSiterestrictListImgDominantColor_White :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_White = CseSiterestrictListImgDominantColor "white"

-- | Predominantly yellow images only.
pattern CseSiterestrictListImgDominantColor_Yellow :: CseSiterestrictListImgDominantColor
pattern CseSiterestrictListImgDominantColor_Yellow = CseSiterestrictListImgDominantColor "yellow"

{-# COMPLETE
  CseSiterestrictListImgDominantColor_ImgDominantColorUndefined,
  CseSiterestrictListImgDominantColor_Black,
  CseSiterestrictListImgDominantColor_Blue,
  CseSiterestrictListImgDominantColor_Brown,
  CseSiterestrictListImgDominantColor_Gray,
  CseSiterestrictListImgDominantColor_Green,
  CseSiterestrictListImgDominantColor_Orange,
  CseSiterestrictListImgDominantColor_Pink,
  CseSiterestrictListImgDominantColor_Purple,
  CseSiterestrictListImgDominantColor_Red,
  CseSiterestrictListImgDominantColor_Teal,
  CseSiterestrictListImgDominantColor_White,
  CseSiterestrictListImgDominantColor_Yellow,
  CseSiterestrictListImgDominantColor
  #-}

-- | Returns images of a specified size. Acceptable values are: * @\"huge\"@ * @\"icon\"@ * @\"large\"@ * @\"medium\"@ * @\"small\"@ * @\"xlarge\"@ * @\"xxlarge\"@
newtype CseSiterestrictListImgSize = CseSiterestrictListImgSize {fromCseSiterestrictListImgSize :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No image size specified.
pattern CseSiterestrictListImgSize_ImgSizeUndefined :: CseSiterestrictListImgSize
pattern CseSiterestrictListImgSize_ImgSizeUndefined = CseSiterestrictListImgSize "imgSizeUndefined"

-- | Only the largest possible images.
pattern CseSiterestrictListImgSize_Huge :: CseSiterestrictListImgSize
pattern CseSiterestrictListImgSize_Huge = CseSiterestrictListImgSize "HUGE"

-- | Only very small icon-sized images.
pattern CseSiterestrictListImgSize_Icon :: CseSiterestrictListImgSize
pattern CseSiterestrictListImgSize_Icon = CseSiterestrictListImgSize "ICON"

-- | Only large images.
pattern CseSiterestrictListImgSize_Large :: CseSiterestrictListImgSize
pattern CseSiterestrictListImgSize_Large = CseSiterestrictListImgSize "LARGE"

-- | Only medium images.
pattern CseSiterestrictListImgSize_Medium :: CseSiterestrictListImgSize
pattern CseSiterestrictListImgSize_Medium = CseSiterestrictListImgSize "MEDIUM"

-- | Only small images.
pattern CseSiterestrictListImgSize_Small :: CseSiterestrictListImgSize
pattern CseSiterestrictListImgSize_Small = CseSiterestrictListImgSize "SMALL"

-- | Only very large images.
pattern CseSiterestrictListImgSize_Xlarge :: CseSiterestrictListImgSize
pattern CseSiterestrictListImgSize_Xlarge = CseSiterestrictListImgSize "XLARGE"

-- | Only extremely large images.
pattern CseSiterestrictListImgSize_Xxlarge :: CseSiterestrictListImgSize
pattern CseSiterestrictListImgSize_Xxlarge = CseSiterestrictListImgSize "XXLARGE"

{-# COMPLETE
  CseSiterestrictListImgSize_ImgSizeUndefined,
  CseSiterestrictListImgSize_Huge,
  CseSiterestrictListImgSize_Icon,
  CseSiterestrictListImgSize_Large,
  CseSiterestrictListImgSize_Medium,
  CseSiterestrictListImgSize_Small,
  CseSiterestrictListImgSize_Xlarge,
  CseSiterestrictListImgSize_Xxlarge,
  CseSiterestrictListImgSize
  #-}

-- | Returns images of a type. Acceptable values are: * @\"clipart\"@ * @\"face\"@ * @\"lineart\"@ * @\"stock\"@ * @\"photo\"@ * @\"animated\"@
newtype CseSiterestrictListImgType = CseSiterestrictListImgType {fromCseSiterestrictListImgType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No image type specified.
pattern CseSiterestrictListImgType_ImgTypeUndefined :: CseSiterestrictListImgType
pattern CseSiterestrictListImgType_ImgTypeUndefined = CseSiterestrictListImgType "imgTypeUndefined"

-- | Clipart-style images only.
pattern CseSiterestrictListImgType_Clipart :: CseSiterestrictListImgType
pattern CseSiterestrictListImgType_Clipart = CseSiterestrictListImgType "clipart"

-- | Images of faces only.
pattern CseSiterestrictListImgType_Face :: CseSiterestrictListImgType
pattern CseSiterestrictListImgType_Face = CseSiterestrictListImgType "face"

-- | Line art images only.
pattern CseSiterestrictListImgType_Lineart :: CseSiterestrictListImgType
pattern CseSiterestrictListImgType_Lineart = CseSiterestrictListImgType "lineart"

-- | Stock images only.
pattern CseSiterestrictListImgType_Stock :: CseSiterestrictListImgType
pattern CseSiterestrictListImgType_Stock = CseSiterestrictListImgType "stock"

-- | Photo images only.
pattern CseSiterestrictListImgType_Photo :: CseSiterestrictListImgType
pattern CseSiterestrictListImgType_Photo = CseSiterestrictListImgType "photo"

-- | Animated images only.
pattern CseSiterestrictListImgType_Animated :: CseSiterestrictListImgType
pattern CseSiterestrictListImgType_Animated = CseSiterestrictListImgType "animated"

{-# COMPLETE
  CseSiterestrictListImgType_ImgTypeUndefined,
  CseSiterestrictListImgType_Clipart,
  CseSiterestrictListImgType_Face,
  CseSiterestrictListImgType_Lineart,
  CseSiterestrictListImgType_Stock,
  CseSiterestrictListImgType_Photo,
  CseSiterestrictListImgType_Animated,
  CseSiterestrictListImgType
  #-}

-- | Search safety level. Acceptable values are: * @\"active\"@: Enables SafeSearch filtering. * @\"off\"@: Disables SafeSearch filtering. (default)
newtype CseSiterestrictListSafe = CseSiterestrictListSafe {fromCseSiterestrictListSafe :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | SafeSearch mode unspecified. (Falls back to engine\'s configuration.)
pattern CseSiterestrictListSafe_SafeUndefined :: CseSiterestrictListSafe
pattern CseSiterestrictListSafe_SafeUndefined = CseSiterestrictListSafe "safeUndefined"

-- | Turn SafeSearch on.
pattern CseSiterestrictListSafe_Active :: CseSiterestrictListSafe
pattern CseSiterestrictListSafe_Active = CseSiterestrictListSafe "active"

-- | Deprecated, equivalent to \"active\".
pattern CseSiterestrictListSafe_High :: CseSiterestrictListSafe
pattern CseSiterestrictListSafe_High = CseSiterestrictListSafe "high"

-- | Deprecated, equivalent to \"active\".
pattern CseSiterestrictListSafe_Medium :: CseSiterestrictListSafe
pattern CseSiterestrictListSafe_Medium = CseSiterestrictListSafe "medium"

-- | Turn SafeSearch off.
pattern CseSiterestrictListSafe_Off :: CseSiterestrictListSafe
pattern CseSiterestrictListSafe_Off = CseSiterestrictListSafe "off"

{-# COMPLETE
  CseSiterestrictListSafe_SafeUndefined,
  CseSiterestrictListSafe_Active,
  CseSiterestrictListSafe_High,
  CseSiterestrictListSafe_Medium,
  CseSiterestrictListSafe_Off,
  CseSiterestrictListSafe
  #-}

-- | Specifies the search type: @image@. If unspecified, results are limited to webpages. Acceptable values are: * @\"image\"@: custom image search.
newtype CseSiterestrictListSearchType = CseSiterestrictListSearchType {fromCseSiterestrictListSearchType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Search type unspecified (defaults to web search).
pattern CseSiterestrictListSearchType_SearchTypeUndefined :: CseSiterestrictListSearchType
pattern CseSiterestrictListSearchType_SearchTypeUndefined = CseSiterestrictListSearchType "searchTypeUndefined"

-- | Image search.
pattern CseSiterestrictListSearchType_Image :: CseSiterestrictListSearchType
pattern CseSiterestrictListSearchType_Image = CseSiterestrictListSearchType "image"

{-# COMPLETE
  CseSiterestrictListSearchType_SearchTypeUndefined,
  CseSiterestrictListSearchType_Image,
  CseSiterestrictListSearchType
  #-}

-- | Controls whether to include or exclude results from the site named in the @siteSearch@ parameter. Acceptable values are: * @\"e\"@: exclude * @\"i\"@: include
newtype CseSiterestrictListSiteSearchFilter = CseSiterestrictListSiteSearchFilter {fromCseSiterestrictListSiteSearchFilter :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Filter mode unspecified.
pattern CseSiterestrictListSiteSearchFilter_SiteSearchFilterUndefined :: CseSiterestrictListSiteSearchFilter
pattern CseSiterestrictListSiteSearchFilter_SiteSearchFilterUndefined = CseSiterestrictListSiteSearchFilter "siteSearchFilterUndefined"

-- | Exclude results from the listed sites.
pattern CseSiterestrictListSiteSearchFilter_E :: CseSiterestrictListSiteSearchFilter
pattern CseSiterestrictListSiteSearchFilter_E = CseSiterestrictListSiteSearchFilter "e"

-- | Include only results from the listed sites.
pattern CseSiterestrictListSiteSearchFilter_I :: CseSiterestrictListSiteSearchFilter
pattern CseSiterestrictListSiteSearchFilter_I = CseSiterestrictListSiteSearchFilter "i"

{-# COMPLETE
  CseSiterestrictListSiteSearchFilter_SiteSearchFilterUndefined,
  CseSiterestrictListSiteSearchFilter_E,
  CseSiterestrictListSiteSearchFilter_I,
  CseSiterestrictListSiteSearchFilter
  #-}
