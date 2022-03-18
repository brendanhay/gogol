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
-- Module      : Network.Google.Poly.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Poly.Types
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

import Network.Google.Poly.Internal.Product
import Network.Google.Poly.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Poly API. This contains the host and root path used as a starting point for constructing service requests.
polyService :: Core.ServiceConfig
polyService =
  Core.defaultService
    (Core.ServiceId "poly:v1")
    "poly.googleapis.com"
