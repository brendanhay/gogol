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
-- Module      : Network.Google.TPU.Projects.Locations.RuntimeVersions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists runtime versions supported by this API.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.runtimeVersions.list@.
module Network.Google.TPU.Projects.Locations.RuntimeVersions.List
  ( -- * Resource
    TPUProjectsLocationsRuntimeVersionsListResource,

    -- ** Constructing a Request
    newTPUProjectsLocationsRuntimeVersionsList,
    TPUProjectsLocationsRuntimeVersionsList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.runtimeVersions.list@ method which the
-- 'TPUProjectsLocationsRuntimeVersionsList' request conforms to.
type TPUProjectsLocationsRuntimeVersionsListResource =
  "v2alpha1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "runtimeVersions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListRuntimeVersionsResponse

-- | Lists runtime versions supported by this API.
--
-- /See:/ 'newTPUProjectsLocationsRuntimeVersionsList' smart constructor.
data TPUProjectsLocationsRuntimeVersionsList = TPUProjectsLocationsRuntimeVersionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | List filter.
    filter :: (Core.Maybe Core.Text),
    -- | Sort results.
    orderBy :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsRuntimeVersionsList' with the minimum fields required to make a request.
newTPUProjectsLocationsRuntimeVersionsList ::
  -- |  Required. The parent resource name. See 'parent'.
  Core.Text ->
  TPUProjectsLocationsRuntimeVersionsList
newTPUProjectsLocationsRuntimeVersionsList parent =
  TPUProjectsLocationsRuntimeVersionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TPUProjectsLocationsRuntimeVersionsList
  where
  type
    Rs TPUProjectsLocationsRuntimeVersionsList =
      ListRuntimeVersionsResponse
  type
    Scopes TPUProjectsLocationsRuntimeVersionsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    TPUProjectsLocationsRuntimeVersionsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        orderBy
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tPUService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TPUProjectsLocationsRuntimeVersionsListResource
            )
            Core.mempty
