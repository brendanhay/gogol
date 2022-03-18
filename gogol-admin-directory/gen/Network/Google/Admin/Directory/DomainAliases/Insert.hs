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
-- Module      : Network.Google.Admin.Directory.DomainAliases.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a domain alias of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domainAliases.insert@.
module Network.Google.Admin.Directory.DomainAliases.Insert
  ( -- * Resource
    DirectoryDomainAliasesInsertResource,

    -- ** Constructing a Request
    newDirectoryDomainAliasesInsert,
    DirectoryDomainAliasesInsert,
  )
where

import Network.Google.Admin.Directory.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @directory.domainAliases.insert@ method which the
-- 'DirectoryDomainAliasesInsert' request conforms to.
type DirectoryDomainAliasesInsertResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "domainaliases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DomainAlias
    Core.:> Core.Post '[Core.JSON] DomainAlias

-- | Inserts a domain alias of the customer.
--
-- /See:/ 'newDirectoryDomainAliasesInsert' smart constructor.
data DirectoryDomainAliasesInsert = DirectoryDomainAliasesInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable ID of the Google Workspace account.
    customer :: Core.Text,
    -- | Multipart request metadata.
    payload :: DomainAlias,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryDomainAliasesInsert' with the minimum fields required to make a request.
newDirectoryDomainAliasesInsert ::
  -- |  Immutable ID of the Google Workspace account. See 'customer'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DomainAlias ->
  DirectoryDomainAliasesInsert
newDirectoryDomainAliasesInsert customer payload =
  DirectoryDomainAliasesInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DirectoryDomainAliasesInsert
  where
  type Rs DirectoryDomainAliasesInsert = DomainAlias
  type
    Scopes DirectoryDomainAliasesInsert =
      '["https://www.googleapis.com/auth/admin.directory.domain"]
  requestClient DirectoryDomainAliasesInsert {..} =
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
          ( Core.Proxy ::
              Core.Proxy DirectoryDomainAliasesInsertResource
          )
          Core.mempty
