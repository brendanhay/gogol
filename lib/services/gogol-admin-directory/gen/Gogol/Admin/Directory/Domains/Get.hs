{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Directory.Domains.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a domain of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domains.get@.
module Gogol.Admin.Directory.Domains.Get
    (
    -- * Resource
      DirectoryDomainsGetResource

    -- ** Constructing a Request
    , DirectoryDomainsGet (..)
    , newDirectoryDomainsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.domains.get@ method which the
-- 'DirectoryDomainsGet' request conforms to.
type DirectoryDomainsGetResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customer" Core.Text Core.:>
               "domains" Core.:>
                 Core.Capture "domainName" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] Domains

-- | Retrieves a domain of the customer.
--
-- /See:/ 'newDirectoryDomainsGet' smart constructor.
data DirectoryDomainsGet = DirectoryDomainsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter.
    , customer :: Core.Text
      -- | Name of domain to be retrieved
    , domainName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryDomainsGet' with the minimum fields required to make a request.
newDirectoryDomainsGet 
    ::  Core.Text
       -- ^  The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter. See 'customer'.
    -> Core.Text
       -- ^  Name of domain to be retrieved See 'domainName'.
    -> DirectoryDomainsGet
newDirectoryDomainsGet customer domainName =
  DirectoryDomainsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customer = customer
    , domainName = domainName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryDomainsGet where
        type Rs DirectoryDomainsGet = Domains
        type Scopes DirectoryDomainsGet =
             '[Admin'Directory'Domain,
               Admin'Directory'Domain'Readonly]
        requestClient DirectoryDomainsGet{..}
          = go customer domainName xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryDomainsGetResource)
                      Core.mempty

