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
-- Module      : Gogol.PubSub.Projects.Schemas.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.create@.
module Gogol.PubSub.Projects.Schemas.Create
  ( -- * Resource
    PubSubProjectsSchemasCreateResource,

    -- ** Constructing a Request
    newPubSubProjectsSchemasCreate,
    PubSubProjectsSchemasCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.create@ method which the
-- 'PubSubProjectsSchemasCreate' request conforms to.
type PubSubProjectsSchemasCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "schemas"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "schemaId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Schema
    Core.:> Core.Post '[Core.JSON] Schema

-- | Creates a schema.
--
-- /See:/ 'newPubSubProjectsSchemasCreate' smart constructor.
data PubSubProjectsSchemasCreate = PubSubProjectsSchemasCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the project in which to create the schema. Format is @projects\/{project-id}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Schema,
    -- | The ID to use for the schema, which will become the final component of the schema\'s resource name. See https:\/\/cloud.google.com\/pubsub\/docs\/admin#resource_names for resource name constraints.
    schemaId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSchemasCreate' with the minimum fields required to make a request.
newPubSubProjectsSchemasCreate ::
  -- |  Required. The name of the project in which to create the schema. Format is @projects\/{project-id}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Schema ->
  PubSubProjectsSchemasCreate
newPubSubProjectsSchemasCreate parent payload =
  PubSubProjectsSchemasCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      schemaId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PubSubProjectsSchemasCreate
  where
  type Rs PubSubProjectsSchemasCreate = Schema
  type
    Scopes PubSubProjectsSchemasCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/pubsub"
       ]
  requestClient PubSubProjectsSchemasCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      schemaId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      pubSubService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PubSubProjectsSchemasCreateResource
          )
          Core.mempty
