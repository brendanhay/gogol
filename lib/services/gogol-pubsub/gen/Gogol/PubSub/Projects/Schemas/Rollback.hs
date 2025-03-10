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
-- Module      : Gogol.PubSub.Projects.Schemas.Rollback
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new schema revision that is a copy of the provided revision_id.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.rollback@.
module Gogol.PubSub.Projects.Schemas.Rollback
  ( -- * Resource
    PubSubProjectsSchemasRollbackResource,

    -- ** Constructing a Request
    PubSubProjectsSchemasRollback (..),
    newPubSubProjectsSchemasRollback,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.rollback@ method which the
-- 'PubSubProjectsSchemasRollback' request conforms to.
type PubSubProjectsSchemasRollbackResource =
  "v1"
    Core.:> Core.CaptureMode "name" "rollback" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RollbackSchemaRequest
    Core.:> Core.Post '[Core.JSON] Schema

-- | Creates a new schema revision that is a copy of the provided revision_id.
--
-- /See:/ 'newPubSubProjectsSchemasRollback' smart constructor.
data PubSubProjectsSchemasRollback = PubSubProjectsSchemasRollback
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The schema being rolled back with revision id.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RollbackSchemaRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSchemasRollback' with the minimum fields required to make a request.
newPubSubProjectsSchemasRollback ::
  -- |  Required. The schema being rolled back with revision id. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RollbackSchemaRequest ->
  PubSubProjectsSchemasRollback
newPubSubProjectsSchemasRollback name payload =
  PubSubProjectsSchemasRollback
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSchemasRollback where
  type Rs PubSubProjectsSchemasRollback = Schema
  type
    Scopes PubSubProjectsSchemasRollback =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSchemasRollback {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      pubSubService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PubSubProjectsSchemasRollbackResource)
          Core.mempty
