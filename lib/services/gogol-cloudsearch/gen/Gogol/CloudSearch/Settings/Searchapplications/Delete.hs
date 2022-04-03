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
-- Module      : Gogol.CloudSearch.Settings.Searchapplications.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a search application. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.delete@.
module Gogol.CloudSearch.Settings.Searchapplications.Delete
  ( -- * Resource
    CloudSearchSettingsSearchapplicationsDeleteResource,

    -- ** Constructing a Request
    CloudSearchSettingsSearchapplicationsDelete (..),
    newCloudSearchSettingsSearchapplicationsDelete,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.settings.searchapplications.delete@ method which the
-- 'CloudSearchSettingsSearchapplicationsDelete' request conforms to.
type CloudSearchSettingsSearchapplicationsDeleteResource =
  "v1"
    Core.:> "settings"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "debugOptions.enableDebugging"
              Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a search application. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsSearchapplicationsDelete' smart constructor.
data CloudSearchSettingsSearchapplicationsDelete = CloudSearchSettingsSearchapplicationsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    debugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    -- | The name of the search application to be deleted. Format: applications\/{application_id}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsSearchapplicationsDelete' with the minimum fields required to make a request.
newCloudSearchSettingsSearchapplicationsDelete ::
  -- |  The name of the search application to be deleted. Format: applications\/{application_id}. See 'name'.
  Core.Text ->
  CloudSearchSettingsSearchapplicationsDelete
newCloudSearchSettingsSearchapplicationsDelete name =
  CloudSearchSettingsSearchapplicationsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      debugOptionsEnableDebugging = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchSettingsSearchapplicationsDelete
  where
  type
    Rs CloudSearchSettingsSearchapplicationsDelete =
      Operation
  type
    Scopes
      CloudSearchSettingsSearchapplicationsDelete =
      '[ CloudSearch'FullControl,
         CloudSearch'Settings,
         CloudSearch'Settings'Query
       ]
  requestClient
    CloudSearchSettingsSearchapplicationsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        debugOptionsEnableDebugging
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchSettingsSearchapplicationsDeleteResource
            )
            Core.mempty
