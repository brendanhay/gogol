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
-- Module      : Gogol.PubSub.Projects.Schemas.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists schemas in a project.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.list@.
module Gogol.PubSub.Projects.Schemas.List
  ( -- * Resource
    PubSubProjectsSchemasListResource,

    -- ** Constructing a Request
    PubSubProjectsSchemasList (..),
    newPubSubProjectsSchemasList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.list@ method which the
-- 'PubSubProjectsSchemasList' request conforms to.
type PubSubProjectsSchemasListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "schemas"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsSchemasListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSchemasResponse

-- | Lists schemas in a project.
--
-- /See:/ 'newPubSubProjectsSchemasList' smart constructor.
data PubSubProjectsSchemasList = PubSubProjectsSchemasList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of schemas to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @ListSchemasResponse@; indicates that this is a continuation of a prior @ListSchemas@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the project in which to list schemas. Format is @projects\/{project-id}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The set of Schema fields to return in the response. If not set, returns Schemas with @name@ and @type@, but not @definition@. Set to @FULL@ to retrieve all fields.
    view :: (Core.Maybe ProjectsSchemasListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSchemasList' with the minimum fields required to make a request.
newPubSubProjectsSchemasList ::
  -- |  Required. The name of the project in which to list schemas. Format is @projects\/{project-id}@. See 'parent'.
  Core.Text ->
  PubSubProjectsSchemasList
newPubSubProjectsSchemasList parent =
  PubSubProjectsSchemasList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSchemasList where
  type Rs PubSubProjectsSchemasList = ListSchemasResponse
  type
    Scopes PubSubProjectsSchemasList =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSchemasList {..} =
    go
      parent
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
          (Core.Proxy :: Core.Proxy PubSubProjectsSchemasListResource)
          Core.mempty
