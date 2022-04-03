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
-- Module      : Gogol.Admin.Directory.Schemas.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.schemas.patch@.
module Gogol.Admin.Directory.Schemas.Patch
  ( -- * Resource
    DirectorySchemasPatchResource,

    -- ** Constructing a Request
    DirectorySchemasPatch (..),
    newDirectorySchemasPatch,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.schemas.patch@ method which the
-- 'DirectorySchemasPatch' request conforms to.
type DirectorySchemasPatchResource =
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
    Core.:> Core.Patch '[Core.JSON] Schema

-- | Patches a schema.
--
-- /See:/ 'newDirectorySchemasPatch' smart constructor.
data DirectorySchemasPatch = DirectorySchemasPatch
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

-- | Creates a value of 'DirectorySchemasPatch' with the minimum fields required to make a request.
newDirectorySchemasPatch ::
  -- |  Immutable ID of the Google Workspace account. See 'customerId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Schema ->
  -- |  Name or immutable ID of the schema. See 'schemaKey'.
  Core.Text ->
  DirectorySchemasPatch
newDirectorySchemasPatch customerId payload schemaKey =
  DirectorySchemasPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      payload = payload,
      schemaKey = schemaKey,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectorySchemasPatch where
  type Rs DirectorySchemasPatch = Schema
  type
    Scopes DirectorySchemasPatch =
      '[Admin'Directory'Userschema]
  requestClient DirectorySchemasPatch {..} =
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
          ( Core.Proxy ::
              Core.Proxy DirectorySchemasPatchResource
          )
          Core.mempty
