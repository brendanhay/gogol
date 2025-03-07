{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Spanner.Projects.InstanceConfigs.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the supported instance configurations for a given project. Returns both Google-managed configurations and user-managed configurations.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instanceConfigs.list@.
module Gogol.Spanner.Projects.InstanceConfigs.List
  ( -- * Resource
    SpannerProjectsInstanceConfigsListResource,

    -- ** Constructing a Request
    SpannerProjectsInstanceConfigsList (..),
    newSpannerProjectsInstanceConfigsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instanceConfigs.list@ method which the
-- 'SpannerProjectsInstanceConfigsList' request conforms to.
type SpannerProjectsInstanceConfigsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instanceConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListInstanceConfigsResponse

-- | Lists the supported instance configurations for a given project. Returns both Google-managed configurations and user-managed configurations.
--
-- /See:/ 'newSpannerProjectsInstanceConfigsList' smart constructor.
data SpannerProjectsInstanceConfigsList = SpannerProjectsInstanceConfigsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of instance configurations to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListInstanceConfigsResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the project for which a list of supported instance configurations is requested. Values are of the form @projects\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstanceConfigsList' with the minimum fields required to make a request.
newSpannerProjectsInstanceConfigsList ::
  -- |  Required. The name of the project for which a list of supported instance configurations is requested. Values are of the form @projects\/@. See 'parent'.
  Core.Text ->
  SpannerProjectsInstanceConfigsList
newSpannerProjectsInstanceConfigsList parent =
  SpannerProjectsInstanceConfigsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SpannerProjectsInstanceConfigsList where
  type
    Rs SpannerProjectsInstanceConfigsList =
      ListInstanceConfigsResponse
  type
    Scopes SpannerProjectsInstanceConfigsList =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstanceConfigsList {..} =
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
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstanceConfigsListResource
          )
          Core.mempty
