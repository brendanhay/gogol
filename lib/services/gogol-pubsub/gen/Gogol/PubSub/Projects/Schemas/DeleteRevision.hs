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
-- Module      : Gogol.PubSub.Projects.Schemas.DeleteRevision
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific schema revision.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.deleteRevision@.
module Gogol.PubSub.Projects.Schemas.DeleteRevision
  ( -- * Resource
    PubSubProjectsSchemasDeleteRevisionResource,

    -- ** Constructing a Request
    PubSubProjectsSchemasDeleteRevision (..),
    newPubSubProjectsSchemasDeleteRevision,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.deleteRevision@ method which the
-- 'PubSubProjectsSchemasDeleteRevision' request conforms to.
type PubSubProjectsSchemasDeleteRevisionResource =
  "v1"
    Core.:> Core.CaptureMode "name" "deleteRevision" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "revisionId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Schema

-- | Deletes a specific schema revision.
--
-- /See:/ 'newPubSubProjectsSchemasDeleteRevision' smart constructor.
data PubSubProjectsSchemasDeleteRevision = PubSubProjectsSchemasDeleteRevision
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the schema revision to be deleted, with a revision ID explicitly included. Example: @projects\/123\/schemas\/my-schema\@c7cfa2a8@
    name :: Core.Text,
    -- | Optional. This field is deprecated and should not be used for specifying the revision ID. The revision ID should be specified via the @name@ parameter.
    revisionId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSchemasDeleteRevision' with the minimum fields required to make a request.
newPubSubProjectsSchemasDeleteRevision ::
  -- |  Required. The name of the schema revision to be deleted, with a revision ID explicitly included. Example: @projects\/123\/schemas\/my-schema\@c7cfa2a8@ See 'name'.
  Core.Text ->
  PubSubProjectsSchemasDeleteRevision
newPubSubProjectsSchemasDeleteRevision name =
  PubSubProjectsSchemasDeleteRevision
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      revisionId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSchemasDeleteRevision where
  type Rs PubSubProjectsSchemasDeleteRevision = Schema
  type
    Scopes PubSubProjectsSchemasDeleteRevision =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSchemasDeleteRevision {..} =
    go
      name
      xgafv
      accessToken
      callback
      revisionId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      pubSubService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PubSubProjectsSchemasDeleteRevisionResource
          )
          Core.mempty
