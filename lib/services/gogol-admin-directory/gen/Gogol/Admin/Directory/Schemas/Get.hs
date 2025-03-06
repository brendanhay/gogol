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
-- Module      : Gogol.Admin.Directory.Schemas.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.schemas.get@.
module Gogol.Admin.Directory.Schemas.Get
  ( -- * Resource
    DirectorySchemasGetResource,

    -- ** Constructing a Request
    DirectorySchemasGet (..),
    newDirectorySchemasGet,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.schemas.get@ method which the
-- 'DirectorySchemasGet' request conforms to.
type DirectorySchemasGetResource =
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
    Core.:> Core.Get '[Core.JSON] Schema

-- | Retrieves a schema.
--
-- /See:/ 'newDirectorySchemasGet' smart constructor.
data DirectorySchemasGet = DirectorySchemasGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter.
    customerId :: Core.Text,
    -- | Name or immutable ID of the schema.
    schemaKey :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectorySchemasGet' with the minimum fields required to make a request.
newDirectorySchemasGet ::
  -- |  The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter. See 'customerId'.
  Core.Text ->
  -- |  Name or immutable ID of the schema. See 'schemaKey'.
  Core.Text ->
  DirectorySchemasGet
newDirectorySchemasGet customerId schemaKey =
  DirectorySchemasGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      schemaKey = schemaKey,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectorySchemasGet where
  type Rs DirectorySchemasGet = Schema
  type
    Scopes DirectorySchemasGet =
      '[Admin'Directory'Userschema, Admin'Directory'Userschema'Readonly]
  requestClient DirectorySchemasGet {..} =
    go
      customerId
      schemaKey
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectorySchemasGetResource)
          Core.mempty
