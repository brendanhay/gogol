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
-- Module      : Gogol.Admin.Directory.Domains.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a domain of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domains.insert@.
module Gogol.Admin.Directory.Domains.Insert
  ( -- * Resource
    DirectoryDomainsInsertResource,

    -- ** Constructing a Request
    DirectoryDomainsInsert (..),
    newDirectoryDomainsInsert,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.domains.insert@ method which the
-- 'DirectoryDomainsInsert' request conforms to.
type DirectoryDomainsInsertResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "domains"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Domains
    Core.:> Core.Post '[Core.JSON] Domains

-- | Inserts a domain of the customer.
--
-- /See:/ 'newDirectoryDomainsInsert' smart constructor.
data DirectoryDomainsInsert = DirectoryDomainsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable ID of the Google Workspace account.
    customer :: Core.Text,
    -- | Multipart request metadata.
    payload :: Domains,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryDomainsInsert' with the minimum fields required to make a request.
newDirectoryDomainsInsert ::
  -- |  Immutable ID of the Google Workspace account. See 'customer'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Domains ->
  DirectoryDomainsInsert
newDirectoryDomainsInsert customer payload =
  DirectoryDomainsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryDomainsInsert where
  type Rs DirectoryDomainsInsert = Domains
  type Scopes DirectoryDomainsInsert = '[Admin'Directory'Domain]
  requestClient DirectoryDomainsInsert {..} =
    go
      customer
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
          (Core.Proxy :: Core.Proxy DirectoryDomainsInsertResource)
          Core.mempty
