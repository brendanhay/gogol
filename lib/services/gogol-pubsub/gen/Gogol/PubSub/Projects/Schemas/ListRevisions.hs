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
-- Module      : Gogol.PubSub.Projects.Schemas.ListRevisions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all schema revisions for the named schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.listRevisions@.
module Gogol.PubSub.Projects.Schemas.ListRevisions
  ( -- * Resource
    PubSubProjectsSchemasListRevisionsResource,

    -- ** Constructing a Request
    PubSubProjectsSchemasListRevisions (..),
    newPubSubProjectsSchemasListRevisions,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.listRevisions@ method which the
-- 'PubSubProjectsSchemasListRevisions' request conforms to.
type PubSubProjectsSchemasListRevisionsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "listRevisions" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsSchemasListRevisionsView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSchemaRevisionsResponse

-- | Lists all schema revisions for the named schema.
--
-- /See:/ 'newPubSubProjectsSchemasListRevisions' smart constructor.
data PubSubProjectsSchemasListRevisions = PubSubProjectsSchemasListRevisions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the schema to list revisions for.
    name :: Core.Text,
    -- | The maximum number of revisions to return per page.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The page token, received from a previous ListSchemaRevisions call. Provide this to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The set of Schema fields to return in the response. If not set, returns Schemas with @name@ and @type@, but not @definition@. Set to @FULL@ to retrieve all fields.
    view :: (Core.Maybe ProjectsSchemasListRevisionsView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSchemasListRevisions' with the minimum fields required to make a request.
newPubSubProjectsSchemasListRevisions ::
  -- |  Required. The name of the schema to list revisions for. See 'name'.
  Core.Text ->
  PubSubProjectsSchemasListRevisions
newPubSubProjectsSchemasListRevisions name =
  PubSubProjectsSchemasListRevisions
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSchemasListRevisions where
  type
    Rs PubSubProjectsSchemasListRevisions =
      ListSchemaRevisionsResponse
  type
    Scopes PubSubProjectsSchemasListRevisions =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSchemasListRevisions {..} =
    go
      name
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      pubSubService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PubSubProjectsSchemasListRevisionsResource
          )
          Core.mempty
