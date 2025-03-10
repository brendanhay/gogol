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
-- Module      : Gogol.PubSub.Projects.Schemas.Commit
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits a new schema revision to an existing schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.commit@.
module Gogol.PubSub.Projects.Schemas.Commit
  ( -- * Resource
    PubSubProjectsSchemasCommitResource,

    -- ** Constructing a Request
    PubSubProjectsSchemasCommit (..),
    newPubSubProjectsSchemasCommit,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.commit@ method which the
-- 'PubSubProjectsSchemasCommit' request conforms to.
type PubSubProjectsSchemasCommitResource =
  "v1"
    Core.:> Core.CaptureMode "name" "commit" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CommitSchemaRequest
    Core.:> Core.Post '[Core.JSON] Schema

-- | Commits a new schema revision to an existing schema.
--
-- /See:/ 'newPubSubProjectsSchemasCommit' smart constructor.
data PubSubProjectsSchemasCommit = PubSubProjectsSchemasCommit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the schema we are revising. Format is @projects\/{project}\/schemas\/{schema}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CommitSchemaRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSchemasCommit' with the minimum fields required to make a request.
newPubSubProjectsSchemasCommit ::
  -- |  Required. The name of the schema we are revising. Format is @projects\/{project}\/schemas\/{schema}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CommitSchemaRequest ->
  PubSubProjectsSchemasCommit
newPubSubProjectsSchemasCommit name payload =
  PubSubProjectsSchemasCommit
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSchemasCommit where
  type Rs PubSubProjectsSchemasCommit = Schema
  type
    Scopes PubSubProjectsSchemasCommit =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSchemasCommit {..} =
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
          (Core.Proxy :: Core.Proxy PubSubProjectsSchemasCommitResource)
          Core.mempty
