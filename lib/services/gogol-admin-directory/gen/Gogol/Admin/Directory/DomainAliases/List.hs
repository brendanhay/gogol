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
-- Module      : Gogol.Admin.Directory.DomainAliases.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the domain aliases of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domainAliases.list@.
module Gogol.Admin.Directory.DomainAliases.List
  ( -- * Resource
    DirectoryDomainAliasesListResource,

    -- ** Constructing a Request
    DirectoryDomainAliasesList (..),
    newDirectoryDomainAliasesList,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.domainAliases.list@ method which the
-- 'DirectoryDomainAliasesList' request conforms to.
type DirectoryDomainAliasesListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "domainaliases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parentDomainName" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DomainAliases

-- | Lists the domain aliases of the customer.
--
-- /See:/ 'newDirectoryDomainAliasesList' smart constructor.
data DirectoryDomainAliasesList = DirectoryDomainAliasesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter.
    customer :: Core.Text,
    -- | Name of the parent domain for which domain aliases are to be fetched.
    parentDomainName :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryDomainAliasesList' with the minimum fields required to make a request.
newDirectoryDomainAliasesList ::
  -- |  The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter. See 'customer'.
  Core.Text ->
  DirectoryDomainAliasesList
newDirectoryDomainAliasesList customer =
  DirectoryDomainAliasesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      parentDomainName = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryDomainAliasesList where
  type Rs DirectoryDomainAliasesList = DomainAliases
  type
    Scopes DirectoryDomainAliasesList =
      '[Admin'Directory'Domain, Admin'Directory'Domain'Readonly]
  requestClient DirectoryDomainAliasesList {..} =
    go
      customer
      xgafv
      accessToken
      callback
      parentDomainName
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryDomainAliasesListResource)
          Core.mempty
