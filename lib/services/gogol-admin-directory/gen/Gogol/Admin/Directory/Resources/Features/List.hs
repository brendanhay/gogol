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
-- Module      : Gogol.Admin.Directory.Resources.Features.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of features for an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.features.list@.
module Gogol.Admin.Directory.Resources.Features.List
  ( -- * Resource
    DirectoryResourcesFeaturesListResource,

    -- ** Constructing a Request
    DirectoryResourcesFeaturesList (..),
    newDirectoryResourcesFeaturesList,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.resources.features.list@ method which the
-- 'DirectoryResourcesFeaturesList' request conforms to.
type DirectoryResourcesFeaturesListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "resources"
    Core.:> "features"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Features

-- | Retrieves a list of features for an account.
--
-- /See:/ 'newDirectoryResourcesFeaturesList' smart constructor.
data DirectoryResourcesFeaturesList = DirectoryResourcesFeaturesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    customer :: Core.Text,
    -- | Maximum number of results to return.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Token to specify the next page in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesFeaturesList' with the minimum fields required to make a request.
newDirectoryResourcesFeaturesList ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
  Core.Text ->
  DirectoryResourcesFeaturesList
newDirectoryResourcesFeaturesList customer =
  DirectoryResourcesFeaturesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DirectoryResourcesFeaturesList
  where
  type Rs DirectoryResourcesFeaturesList = Features
  type
    Scopes DirectoryResourcesFeaturesList =
      '[ Admin'Directory'Resource'Calendar,
         Admin'Directory'Resource'Calendar'Readonly
       ]
  requestClient DirectoryResourcesFeaturesList {..} =
    go
      customer
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryResourcesFeaturesListResource
          )
          Core.mempty
