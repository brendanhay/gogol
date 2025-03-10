{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Poly.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Poly.Types
  ( -- * Configuration
    polyService,

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

import Gogol.Poly.Internal.Product
import Gogol.Poly.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Poly API. This contains the host and root path used as a starting point for constructing service requests.
polyService :: Core.ServiceConfig
polyService =
  Core.defaultService
    (Core.ServiceId "poly:v1")
    "poly.googleapis.com"
