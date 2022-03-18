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
-- Module      : Gogol.CloudSearch.Settings.UpdateCustomer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update customer settings. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.updateCustomer@.
module Gogol.CloudSearch.Settings.UpdateCustomer
  ( -- * Resource
    CloudSearchSettingsUpdateCustomerResource,

    -- ** Constructing a Request
    newCloudSearchSettingsUpdateCustomer,
    CloudSearchSettingsUpdateCustomer,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.settings.updateCustomer@ method which the
-- 'CloudSearchSettingsUpdateCustomer' request conforms to.
type CloudSearchSettingsUpdateCustomerResource =
  "v1"
    Core.:> "settings"
    Core.:> "customer"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomerSettings
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Update customer settings. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsUpdateCustomer' smart constructor.
data CloudSearchSettingsUpdateCustomer = CloudSearchSettingsUpdateCustomer
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CustomerSettings,
    -- | Update mask to control which fields get updated. If you specify a field in the update/mask but don\'t specify its value here, that field will be cleared. If the mask is not present or empty, all fields will be updated. Currently supported field paths: vpc/settings and audit/logging/settings
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsUpdateCustomer' with the minimum fields required to make a request.
newCloudSearchSettingsUpdateCustomer ::
  -- |  Multipart request metadata. See 'payload'.
  CustomerSettings ->
  CloudSearchSettingsUpdateCustomer
newCloudSearchSettingsUpdateCustomer payload =
  CloudSearchSettingsUpdateCustomer
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchSettingsUpdateCustomer
  where
  type Rs CloudSearchSettingsUpdateCustomer = Operation
  type
    Scopes CloudSearchSettingsUpdateCustomer =
      '[ "https://www.googleapis.com/auth/cloud_search",
         "https://www.googleapis.com/auth/cloud_search.settings",
         "https://www.googleapis.com/auth/cloud_search.settings.indexing"
       ]
  requestClient CloudSearchSettingsUpdateCustomer {..} =
    go
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudSearchSettingsUpdateCustomerResource
          )
          Core.mempty
