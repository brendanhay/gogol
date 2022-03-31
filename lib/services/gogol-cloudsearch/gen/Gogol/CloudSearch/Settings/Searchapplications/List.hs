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
-- Module      : Gogol.CloudSearch.Settings.Searchapplications.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all search applications. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.list@.
module Gogol.CloudSearch.Settings.Searchapplications.List
  ( -- * Resource
    CloudSearchSettingsSearchapplicationsListResource,

    -- ** Constructing a Request
    newCloudSearchSettingsSearchapplicationsList,
    CloudSearchSettingsSearchapplicationsList,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.settings.searchapplications.list@ method which the
-- 'CloudSearchSettingsSearchapplicationsList' request conforms to.
type CloudSearchSettingsSearchapplicationsListResource =
  "v1"
    Core.:> "settings"
    Core.:> "searchapplications"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "debugOptions.enableDebugging"
              Core.Bool
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListSearchApplicationsResponse

-- | Lists all search applications. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsSearchapplicationsList' smart constructor.
data CloudSearchSettingsSearchapplicationsList = CloudSearchSettingsSearchapplicationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    debugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    -- | The maximum number of items to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous List request, if any. The default value is 10
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsSearchapplicationsList' with the minimum fields required to make a request.
newCloudSearchSettingsSearchapplicationsList ::
  CloudSearchSettingsSearchapplicationsList
newCloudSearchSettingsSearchapplicationsList =
  CloudSearchSettingsSearchapplicationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      debugOptionsEnableDebugging = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchSettingsSearchapplicationsList
  where
  type
    Rs CloudSearchSettingsSearchapplicationsList =
      ListSearchApplicationsResponse
  type
    Scopes CloudSearchSettingsSearchapplicationsList =
      '[ CloudSearch'FullControl,
         CloudSearch'Settings,
         CloudSearch'Settings'Query
       ]
  requestClient
    CloudSearchSettingsSearchapplicationsList {..} =
      go
        xgafv
        accessToken
        callback
        debugOptionsEnableDebugging
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchSettingsSearchapplicationsListResource
            )
            Core.mempty
