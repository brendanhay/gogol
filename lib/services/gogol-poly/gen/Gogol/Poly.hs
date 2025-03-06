{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Poly
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Poly API provides read access to assets hosted on poly.google.com to all, and upload access to poly.google.com for whitelisted accounts.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference>
module Gogol.Poly
  ( -- * Configuration
    polyService,

    -- * Resources

    -- ** poly.assets.get
    PolyAssetsGetResource,
    PolyAssetsGet (..),
    newPolyAssetsGet,

    -- ** poly.assets.list
    PolyAssetsListResource,
    PolyAssetsList (..),
    newPolyAssetsList,

    -- ** poly.users.assets.list
    PolyUsersAssetsListResource,
    PolyUsersAssetsList (..),
    newPolyUsersAssetsList,

    -- ** poly.users.likedassets.list
    PolyUsersLikedassetsListResource,
    PolyUsersLikedassetsList (..),
    newPolyUsersLikedassetsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Asset
    Asset (..),
    newAsset,

    -- ** Asset_License
    Asset_License (..),

    -- ** Asset_Visibility
    Asset_Visibility (..),

    -- ** AssetImportMessage
    AssetImportMessage (..),
    newAssetImportMessage,

    -- ** AssetImportMessage_Code
    AssetImportMessage_Code (..),

    -- ** File
    File (..),
    newFile,

    -- ** Format
    Format (..),
    newFormat,

    -- ** FormatComplexity
    FormatComplexity (..),
    newFormatComplexity,

    -- ** ImageError
    ImageError (..),
    newImageError,

    -- ** ImageError_Code
    ImageError_Code (..),

    -- ** ListAssetsResponse
    ListAssetsResponse (..),
    newListAssetsResponse,

    -- ** ListLikedAssetsResponse
    ListLikedAssetsResponse (..),
    newListLikedAssetsResponse,

    -- ** ListUserAssetsResponse
    ListUserAssetsResponse (..),
    newListUserAssetsResponse,

    -- ** ObjParseError
    ObjParseError (..),
    newObjParseError,

    -- ** ObjParseError_Code
    ObjParseError_Code (..),

    -- ** PresentationParams
    PresentationParams (..),
    newPresentationParams,

    -- ** PresentationParams_ColorSpace
    PresentationParams_ColorSpace (..),

    -- ** Quaternion
    Quaternion (..),
    newQuaternion,

    -- ** RemixInfo
    RemixInfo (..),
    newRemixInfo,

    -- ** StartAssetImportResponse
    StartAssetImportResponse (..),
    newStartAssetImportResponse,

    -- ** UserAsset
    UserAsset (..),
    newUserAsset,

    -- ** AssetsListMaxComplexity
    AssetsListMaxComplexity (..),

    -- ** UsersAssetsListVisibility
    UsersAssetsListVisibility (..),
  )
where

import Gogol.Poly.Assets.Get
import Gogol.Poly.Assets.List
import Gogol.Poly.Types
import Gogol.Poly.Users.Assets.List
import Gogol.Poly.Users.Likedassets.List
