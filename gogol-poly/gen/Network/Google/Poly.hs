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
-- Module      : Network.Google.Poly
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Poly API provides read access to assets hosted on poly.google.com to all, and upload access to poly.google.com for whitelisted accounts.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference>
module Network.Google.Poly
  ( -- * Configuration
    polyService,

    -- * Resources

    -- ** poly.assets.get
    PolyAssetsGetResource,
    newPolyAssetsGet,
    PolyAssetsGet,

    -- ** poly.assets.list
    PolyAssetsListResource,
    newPolyAssetsList,
    PolyAssetsList,

    -- ** poly.users.assets.list
    PolyUsersAssetsListResource,
    newPolyUsersAssetsList,
    PolyUsersAssetsList,

    -- ** poly.users.likedassets.list
    PolyUsersLikedassetsListResource,
    newPolyUsersLikedassetsList,
    PolyUsersLikedassetsList,

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

import Network.Google.Poly.Assets.Get
import Network.Google.Poly.Assets.List
import Network.Google.Poly.Types
import Network.Google.Poly.Users.Assets.List
import Network.Google.Poly.Users.Likedassets.List
