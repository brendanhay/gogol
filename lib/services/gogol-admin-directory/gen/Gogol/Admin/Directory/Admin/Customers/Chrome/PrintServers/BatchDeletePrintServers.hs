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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.BatchDeletePrintServers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes multiple print servers.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printServers.batchDeletePrintServers@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.BatchDeletePrintServers
    (
    -- * Resource
      AdminCustomersChromePrintServersBatchDeletePrintServersResource

    -- ** Constructing a Request
    , AdminCustomersChromePrintServersBatchDeletePrintServers (..)
    , newAdminCustomersChromePrintServersBatchDeletePrintServers
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @admin.customers.chrome.printServers.batchDeletePrintServers@ method which the
-- 'AdminCustomersChromePrintServersBatchDeletePrintServers' request conforms to.
type AdminCustomersChromePrintServersBatchDeletePrintServersResource
     =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           Core.Capture "parent" Core.Text Core.:>
             "chrome" Core.:>
               "printServers:batchDeletePrintServers" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               BatchDeletePrintServersRequest
                               Core.:>
                               Core.Post '[Core.JSON]
                                 BatchDeletePrintServersResponse

-- | Deletes multiple print servers.
--
-- /See:/ 'newAdminCustomersChromePrintServersBatchDeletePrintServers' smart constructor.
data AdminCustomersChromePrintServersBatchDeletePrintServers = AdminCustomersChromePrintServersBatchDeletePrintServers
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers unique ID> of the customer\'s Google Workspace account. Format: @customers\/{customer.id}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchDeletePrintServersRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintServersBatchDeletePrintServers' with the minimum fields required to make a request.
newAdminCustomersChromePrintServersBatchDeletePrintServers 
    ::  Core.Text
       -- ^  Required. The <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers unique ID> of the customer\'s Google Workspace account. Format: @customers\/{customer.id}@ See 'parent'.
    -> BatchDeletePrintServersRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AdminCustomersChromePrintServersBatchDeletePrintServers
newAdminCustomersChromePrintServersBatchDeletePrintServers parent payload =
  AdminCustomersChromePrintServersBatchDeletePrintServers
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdminCustomersChromePrintServersBatchDeletePrintServers
         where
        type Rs
               AdminCustomersChromePrintServersBatchDeletePrintServers
             = BatchDeletePrintServersResponse
        type Scopes
               AdminCustomersChromePrintServersBatchDeletePrintServers
             = '[Admin'Chrome'Printers]
        requestClient
          AdminCustomersChromePrintServersBatchDeletePrintServers{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdminCustomersChromePrintServersBatchDeletePrintServersResource)
                      Core.mempty

