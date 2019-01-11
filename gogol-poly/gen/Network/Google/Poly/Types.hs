{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Poly.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Poly.Types
    (
    -- * Service Configuration
      polyService

    -- * ImageErrorCode
    , ImageErrorCode (..)

    -- * ObjParseError
    , ObjParseError
    , objParseError
    , opeLineNumber
    , opeFilePath
    , opeLine
    , opeEndIndex
    , opeCode
    , opeStartIndex

    -- * PresentationParams
    , PresentationParams
    , presentationParams
    , ppBackgRoundColor
    , ppOrientingRotation
    , ppColorSpace

    -- * ListLikedAssetsResponse
    , ListLikedAssetsResponse
    , listLikedAssetsResponse
    , llarNextPageToken
    , llarTotalSize
    , llarAssets

    -- * RemixInfo
    , RemixInfo
    , remixInfo
    , riSourceAsset

    -- * Quaternion
    , Quaternion
    , quaternion
    , qW
    , qZ
    , qX
    , qY

    -- * Asset
    , Asset
    , asset
    , aThumbnail
    , aPresentationParams
    , aIsCurated
    , aAuthorName
    , aRemixInfo
    , aFormats
    , aVisibility
    , aUpdateTime
    , aName
    , aMetadata
    , aDisplayName
    , aLicense
    , aDescription
    , aCreateTime

    -- * Format
    , Format
    , format
    , fRoot
    , fResources
    , fFormatComplexity
    , fFormatType

    -- * AssetImportMessageCode
    , AssetImportMessageCode (..)

    -- * AssetImportMessage
    , AssetImportMessage
    , assetImportMessage
    , aimObjParseError
    , aimFilePath
    , aimImageError
    , aimCode

    -- * StartAssetImportResponse
    , StartAssetImportResponse
    , startAssetImportResponse
    , sairPublishURL
    , sairAssetImportMessages
    , sairAssetImportId
    , sairAssetId

    -- * AssetVisibility
    , AssetVisibility (..)

    -- * ImageError
    , ImageError
    , imageError
    , ieFilePath
    , ieCode

    -- * FormatComplexity
    , FormatComplexity
    , formatComplexity
    , fcTriangleCount
    , fcLodHint

    -- * ObjParseErrorCode
    , ObjParseErrorCode (..)

    -- * ListAssetsResponse
    , ListAssetsResponse
    , listAssetsResponse
    , larNextPageToken
    , larTotalSize
    , larAssets

    -- * Xgafv
    , Xgafv (..)

    -- * ListUserAssetsResponse
    , ListUserAssetsResponse
    , listUserAssetsResponse
    , luarNextPageToken
    , luarTotalSize
    , luarUserAssets

    -- * AssetLicense
    , AssetLicense (..)

    -- * PresentationParamsColorSpace
    , PresentationParamsColorSpace (..)

    -- * File
    , File
    , file
    , fURL
    , fRelativePath
    , fContentType

    -- * UserAsset
    , UserAsset
    , userAsset
    , uaAsset
    ) where

import           Network.Google.Poly.Types.Product
import           Network.Google.Poly.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Poly API. This contains the host and root path used as a starting point for constructing service requests.
polyService :: ServiceConfig
polyService
  = defaultService (ServiceId "poly:v1")
      "poly.googleapis.com"
