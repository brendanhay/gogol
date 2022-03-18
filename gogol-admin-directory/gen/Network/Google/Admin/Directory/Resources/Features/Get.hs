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
-- Module      : Network.Google.Admin.Directory.Resources.Features.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.features.get@.
module Network.Google.Admin.Directory.Resources.Features.Get
  ( -- * Resource
    DirectoryResourcesFeaturesGetResource,

    -- ** Constructing a Request
    newDirectoryResourcesFeaturesGet,
    DirectoryResourcesFeaturesGet,
  )
where

import Network.Google.Admin.Directory.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @directory.resources.features.get@ method which the
-- 'DirectoryResourcesFeaturesGet' request conforms to.
type DirectoryResourcesFeaturesGetResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "resources"
    Core.:> "features"
    Core.:> Core.Capture "featureKey" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Feature

-- | Retrieves a feature.
--
-- /See:/ 'newDirectoryResourcesFeaturesGet' smart constructor.
data DirectoryResourcesFeaturesGet = DirectoryResourcesFeaturesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    customer :: Core.Text,
    -- | The unique ID of the feature to retrieve.
    featureKey :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesFeaturesGet' with the minimum fields required to make a request.
newDirectoryResourcesFeaturesGet ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
  Core.Text ->
  -- |  The unique ID of the feature to retrieve. See 'featureKey'.
  Core.Text ->
  DirectoryResourcesFeaturesGet
newDirectoryResourcesFeaturesGet customer featureKey =
  DirectoryResourcesFeaturesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      featureKey = featureKey,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DirectoryResourcesFeaturesGet
  where
  type Rs DirectoryResourcesFeaturesGet = Feature
  type
    Scopes DirectoryResourcesFeaturesGet =
      '[ "https://www.googleapis.com/auth/admin.directory.resource.calendar",
         "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"
       ]
  requestClient DirectoryResourcesFeaturesGet {..} =
    go
      customer
      featureKey
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryResourcesFeaturesGetResource
          )
          Core.mempty
