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
-- Module      : Gogol.CloudSearch.Settings.Searchapplications.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a search application. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.update@.
module Gogol.CloudSearch.Settings.Searchapplications.Update
  ( -- * Resource
    CloudSearchSettingsSearchapplicationsUpdateResource,

    -- ** Constructing a Request
    newCloudSearchSettingsSearchapplicationsUpdate,
    CloudSearchSettingsSearchapplicationsUpdate,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.settings.searchapplications.update@ method which the
-- 'CloudSearchSettingsSearchapplicationsUpdate' request conforms to.
type CloudSearchSettingsSearchapplicationsUpdateResource =
  "v1"
    Core.:> "settings"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SearchApplication
    Core.:> Core.Put '[Core.JSON] Operation

-- | Updates a search application. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsSearchapplicationsUpdate' smart constructor.
data CloudSearchSettingsSearchapplicationsUpdate = CloudSearchSettingsSearchapplicationsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the Search Application. Format: searchapplications\/{application_id}.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SearchApplication,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsSearchapplicationsUpdate' with the minimum fields required to make a request.
newCloudSearchSettingsSearchapplicationsUpdate ::
  -- |  Name of the Search Application. Format: searchapplications\/{application_id}. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SearchApplication ->
  CloudSearchSettingsSearchapplicationsUpdate
newCloudSearchSettingsSearchapplicationsUpdate name payload =
  CloudSearchSettingsSearchapplicationsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchSettingsSearchapplicationsUpdate
  where
  type
    Rs CloudSearchSettingsSearchapplicationsUpdate =
      Operation
  type
    Scopes
      CloudSearchSettingsSearchapplicationsUpdate =
      '[ "https://www.googleapis.com/auth/cloud_search",
         "https://www.googleapis.com/auth/cloud_search.settings",
         "https://www.googleapis.com/auth/cloud_search.settings.query"
       ]
  requestClient
    CloudSearchSettingsSearchapplicationsUpdate {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchSettingsSearchapplicationsUpdateResource
            )
            Core.mempty
