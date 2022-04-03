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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists device registries.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.list@.
module Gogol.CloudIOT.Projects.Locations.Registries.List
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesListResource,

    -- ** Constructing a Request
    CloudIOTProjectsLocationsRegistriesList (..),
    newCloudIOTProjectsLocationsRegistriesList,
  )
where

import Gogol.CloudIOT.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudiot.projects.locations.registries.list@ method which the
-- 'CloudIOTProjectsLocationsRegistriesList' request conforms to.
type CloudIOTProjectsLocationsRegistriesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "registries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDeviceRegistriesResponse

-- | Lists device registries.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesList' smart constructor.
data CloudIOTProjectsLocationsRegistriesList = CloudIOTProjectsLocationsRegistriesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of registries to return in the response. If this value is zero, the service will select a default size. A call may return fewer objects than requested. A non-empty @next_page_token@ in the response indicates that more data is available.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @ListDeviceRegistriesResponse@; indicates that this is a continuation of a prior @ListDeviceRegistries@ call and the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The project and cloud region path. For example, @projects\/example-project\/locations\/us-central1@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesList' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesList ::
  -- |  Required. The project and cloud region path. For example, @projects\/example-project\/locations\/us-central1@. See 'parent'.
  Core.Text ->
  CloudIOTProjectsLocationsRegistriesList
newCloudIOTProjectsLocationsRegistriesList parent =
  CloudIOTProjectsLocationsRegistriesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesList
  where
  type
    Rs CloudIOTProjectsLocationsRegistriesList =
      ListDeviceRegistriesResponse
  type
    Scopes CloudIOTProjectsLocationsRegistriesList =
      '[CloudPlatform'FullControl, Cloudiot'FullControl]
  requestClient
    CloudIOTProjectsLocationsRegistriesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudIOTService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIOTProjectsLocationsRegistriesListResource
            )
            Core.mempty
