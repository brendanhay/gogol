{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Poly
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Poly API provides read access to assets hosted on
-- <https://poly.google.com poly.google.com> to all, and upload access to
-- <https://poly.google.com poly.google.com> for whitelisted accounts.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference>
module Network.Google.Poly
    (
    -- * Service Configuration
      polyService

    -- * API Declaration
    , PolyAPI

    -- * Resources

    -- ** poly.assets.get
    , module Network.Google.Resource.Poly.Assets.Get

    -- ** poly.assets.list
    , module Network.Google.Resource.Poly.Assets.List

    -- ** poly.users.assets.list
    , module Network.Google.Resource.Poly.Users.Assets.List

    -- ** poly.users.likedassets.list
    , module Network.Google.Resource.Poly.Users.Likedassets.List

    -- * Types

    -- ** ImageErrorCode
    , ImageErrorCode (..)

    -- ** ObjParseError
    , ObjParseError
    , objParseError
    , opeLineNumber
    , opeFilePath
    , opeLine
    , opeEndIndex
    , opeCode
    , opeStartIndex

    -- ** PresentationParams
    , PresentationParams
    , presentationParams
    , ppBackgRoundColor
    , ppOrientingRotation
    , ppColorSpace

    -- ** ListLikedAssetsResponse
    , ListLikedAssetsResponse
    , listLikedAssetsResponse
    , llarNextPageToken
    , llarTotalSize
    , llarAssets

    -- ** RemixInfo
    , RemixInfo
    , remixInfo
    , riSourceAsset

    -- ** Quaternion
    , Quaternion
    , quaternion
    , qW
    , qZ
    , qX
    , qY

    -- ** Asset
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

    -- ** Format
    , Format
    , format
    , fRoot
    , fResources
    , fFormatComplexity
    , fFormatType

    -- ** AssetImportMessageCode
    , AssetImportMessageCode (..)

    -- ** AssetImportMessage
    , AssetImportMessage
    , assetImportMessage
    , aimObjParseError
    , aimFilePath
    , aimImageError
    , aimCode

    -- ** StartAssetImportResponse
    , StartAssetImportResponse
    , startAssetImportResponse
    , sairPublishURL
    , sairAssetImportMessages
    , sairAssetImportId
    , sairAssetId

    -- ** AssetVisibility
    , AssetVisibility (..)

    -- ** ImageError
    , ImageError
    , imageError
    , ieFilePath
    , ieCode

    -- ** FormatComplexity
    , FormatComplexity
    , formatComplexity
    , fcTriangleCount
    , fcLodHint

    -- ** ObjParseErrorCode
    , ObjParseErrorCode (..)

    -- ** ListAssetsResponse
    , ListAssetsResponse
    , listAssetsResponse
    , larNextPageToken
    , larTotalSize
    , larAssets

    -- ** Xgafv
    , Xgafv (..)

    -- ** ListUserAssetsResponse
    , ListUserAssetsResponse
    , listUserAssetsResponse
    , luarNextPageToken
    , luarTotalSize
    , luarUserAssets

    -- ** AssetLicense
    , AssetLicense (..)

    -- ** PresentationParamsColorSpace
    , PresentationParamsColorSpace (..)

    -- ** File
    , File
    , file
    , fURL
    , fRelativePath
    , fContentType

    -- ** UserAsset
    , UserAsset
    , userAsset
    , uaAsset
    ) where

import           Network.Google.Poly.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Poly.Assets.Get
import           Network.Google.Resource.Poly.Assets.List
import           Network.Google.Resource.Poly.Users.Assets.List
import           Network.Google.Resource.Poly.Users.Likedassets.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Poly API service.
type PolyAPI =
     UsersLikedassetsListResource :<|>
       UsersAssetsListResource
       :<|> AssetsListResource
       :<|> AssetsGetResource
