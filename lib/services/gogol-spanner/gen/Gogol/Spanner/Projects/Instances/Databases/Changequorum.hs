{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Changequorum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- @ChangeQuorum@ is strictly restricted to databases that use dual-region instance configurations. Initiates a background operation to change the quorum of a database from dual-region mode to single-region mode or vice versa. The returned long-running operation has a name of the format @projects\/\/instances\/\/databases\/\/operations\/@ and can be used to track execution of the @ChangeQuorum@. The metadata field type is ChangeQuorumMetadata. Authorization requires @spanner.databases.changequorum@ permission on the resource database.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.changequorum@.
module Gogol.Spanner.Projects.Instances.Databases.Changequorum
  ( -- * Resource
    SpannerProjectsInstancesDatabasesChangequorumResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesChangequorum (..),
    newSpannerProjectsInstancesDatabasesChangequorum,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.changequorum@ method which the
-- 'SpannerProjectsInstancesDatabasesChangequorum' request conforms to.
type SpannerProjectsInstancesDatabasesChangequorumResource =
  "v1"
    Core.:> Core.CaptureMode "name" "changequorum" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ChangeQuorumRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | @ChangeQuorum@ is strictly restricted to databases that use dual-region instance configurations. Initiates a background operation to change the quorum of a database from dual-region mode to single-region mode or vice versa. The returned long-running operation has a name of the format @projects\/\/instances\/\/databases\/\/operations\/@ and can be used to track execution of the @ChangeQuorum@. The metadata field type is ChangeQuorumMetadata. Authorization requires @spanner.databases.changequorum@ permission on the resource database.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesChangequorum' smart constructor.
data SpannerProjectsInstancesDatabasesChangequorum = SpannerProjectsInstancesDatabasesChangequorum
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the database in which to apply @ChangeQuorum@. Values are of the form @projects\/\/instances\/\/databases\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ChangeQuorumRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesChangequorum' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesChangequorum ::
  -- |  Required. Name of the database in which to apply @ChangeQuorum@. Values are of the form @projects\/\/instances\/\/databases\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ChangeQuorumRequest ->
  SpannerProjectsInstancesDatabasesChangequorum
newSpannerProjectsInstancesDatabasesChangequorum name payload =
  SpannerProjectsInstancesDatabasesChangequorum
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesChangequorum
  where
  type Rs SpannerProjectsInstancesDatabasesChangequorum = Operation
  type
    Scopes SpannerProjectsInstancesDatabasesChangequorum =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesDatabasesChangequorum {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstancesDatabasesChangequorumResource
          )
          Core.mempty
