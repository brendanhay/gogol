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
-- Module      : Gogol.Spanner.Projects.InstanceConfigs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a particular instance configuration.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instanceConfigs.get@.
module Gogol.Spanner.Projects.InstanceConfigs.Get
  ( -- * Resource
    SpannerProjectsInstanceConfigsGetResource,

    -- ** Constructing a Request
    newSpannerProjectsInstanceConfigsGet,
    SpannerProjectsInstanceConfigsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instanceConfigs.get@ method which the
-- 'SpannerProjectsInstanceConfigsGet' request conforms to.
type SpannerProjectsInstanceConfigsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InstanceConfig

-- | Gets information about a particular instance configuration.
--
-- /See:/ 'newSpannerProjectsInstanceConfigsGet' smart constructor.
data SpannerProjectsInstanceConfigsGet = SpannerProjectsInstanceConfigsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the requested instance configuration. Values are of the form @projects\/\/instanceConfigs\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstanceConfigsGet' with the minimum fields required to make a request.
newSpannerProjectsInstanceConfigsGet ::
  -- |  Required. The name of the requested instance configuration. Values are of the form @projects\/\/instanceConfigs\/@. See 'name'.
  Core.Text ->
  SpannerProjectsInstanceConfigsGet
newSpannerProjectsInstanceConfigsGet name =
  SpannerProjectsInstanceConfigsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstanceConfigsGet
  where
  type
    Rs SpannerProjectsInstanceConfigsGet =
      InstanceConfig
  type
    Scopes SpannerProjectsInstanceConfigsGet =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstanceConfigsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstanceConfigsGetResource
          )
          Core.mempty
