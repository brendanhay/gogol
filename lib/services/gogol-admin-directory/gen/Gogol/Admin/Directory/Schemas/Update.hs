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
-- Module      : Gogol.Admin.Directory.Schemas.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.schemas.update@.
module Gogol.Admin.Directory.Schemas.Update
  ( -- * Resource
    DirectorySchemasUpdateResource,

    -- ** Constructing a Request
    DirectorySchemasUpdate (..),
    newDirectorySchemasUpdate,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.schemas.update@ method which the
-- 'DirectorySchemasUpdate' request conforms to.
type DirectorySchemasUpdateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "schemas"
    Core.:> Core.Capture "schemaKey" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Schema
    Core.:> Core.Put '[Core.JSON] Schema

-- | Updates a schema.
--
-- /See:/ 'newDirectorySchemasUpdate' smart constructor.
data DirectorySchemasUpdate = DirectorySchemasUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable ID of the Google Workspace account.
    customerId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Schema,
    -- | Name or immutable ID of the schema.
    schemaKey :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectorySchemasUpdate' with the minimum fields required to make a request.
newDirectorySchemasUpdate ::
  -- |  Immutable ID of the Google Workspace account. See 'customerId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Schema ->
  -- |  Name or immutable ID of the schema. See 'schemaKey'.
  Core.Text ->
  DirectorySchemasUpdate
newDirectorySchemasUpdate customerId payload schemaKey =
  DirectorySchemasUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      payload = payload,
      schemaKey = schemaKey,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectorySchemasUpdate where
  type Rs DirectorySchemasUpdate = Schema
  type Scopes DirectorySchemasUpdate = '[Admin'Directory'Userschema]
  requestClient DirectorySchemasUpdate {..} =
    go
      customerId
      schemaKey
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectorySchemasUpdateResource)
          Core.mempty
