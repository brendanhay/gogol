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
-- Module      : Gogol.Spanner.Projects.Instances.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a particular instance.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.get@.
module Gogol.Spanner.Projects.Instances.Get
  ( -- * Resource
    SpannerProjectsInstancesGetResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesGet (..),
    newSpannerProjectsInstancesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.get@ method which the
-- 'SpannerProjectsInstancesGet' request conforms to.
type SpannerProjectsInstancesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fieldMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Instance

-- | Gets information about a particular instance.
--
-- /See:/ 'newSpannerProjectsInstancesGet' smart constructor.
data SpannerProjectsInstancesGet = SpannerProjectsInstancesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If field_mask is present, specifies the subset of Instance fields that should be returned. If absent, all Instance fields are returned.
    fieldMask :: (Core.Maybe Core.FieldMask),
    -- | Required. The name of the requested instance. Values are of the form @projects\/\/instances\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesGet' with the minimum fields required to make a request.
newSpannerProjectsInstancesGet ::
  -- |  Required. The name of the requested instance. Values are of the form @projects\/\/instances\/@. See 'name'.
  Core.Text ->
  SpannerProjectsInstancesGet
newSpannerProjectsInstancesGet name =
  SpannerProjectsInstancesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fieldMask = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesGet
  where
  type Rs SpannerProjectsInstancesGet = Instance
  type
    Scopes SpannerProjectsInstancesGet =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      fieldMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstancesGetResource
          )
          Core.mempty
