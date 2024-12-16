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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.BatchCreatePrintServers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates multiple print servers.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printServers.batchCreatePrintServers@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.BatchCreatePrintServers
    (
    -- * Resource
      AdminCustomersChromePrintServersBatchCreatePrintServersResource

    -- ** Constructing a Request
    , AdminCustomersChromePrintServersBatchCreatePrintServers (..)
    , newAdminCustomersChromePrintServersBatchCreatePrintServers
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @admin.customers.chrome.printServers.batchCreatePrintServers@ method which the
-- 'AdminCustomersChromePrintServersBatchCreatePrintServers' request conforms to.
type AdminCustomersChromePrintServersBatchCreatePrintServersResource
     =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           Core.Capture "parent" Core.Text Core.:>
             "chrome" Core.:>
               "printServers:batchCreatePrintServers" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               BatchCreatePrintServersRequest
                               Core.:>
                               Core.Post '[Core.JSON]
                                 BatchCreatePrintServersResponse

-- | Creates multiple print servers.
--
-- /See:/ 'newAdminCustomersChromePrintServersBatchCreatePrintServers' smart constructor.
data AdminCustomersChromePrintServersBatchCreatePrintServers = AdminCustomersChromePrintServersBatchCreatePrintServers
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers unique ID> of the customer\'s Google Workspace account. Format: @customers\/{id}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchCreatePrintServersRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintServersBatchCreatePrintServers' with the minimum fields required to make a request.
newAdminCustomersChromePrintServersBatchCreatePrintServers 
    ::  Core.Text
       -- ^  Required. The <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers unique ID> of the customer\'s Google Workspace account. Format: @customers\/{id}@ See 'parent'.
    -> BatchCreatePrintServersRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AdminCustomersChromePrintServersBatchCreatePrintServers
newAdminCustomersChromePrintServersBatchCreatePrintServers parent payload =
  AdminCustomersChromePrintServersBatchCreatePrintServers
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdminCustomersChromePrintServersBatchCreatePrintServers
         where
        type Rs
               AdminCustomersChromePrintServersBatchCreatePrintServers
             = BatchCreatePrintServersResponse
        type Scopes
               AdminCustomersChromePrintServersBatchCreatePrintServers
             = '[Admin'Chrome'Printers]
        requestClient
          AdminCustomersChromePrintServersBatchCreatePrintServers{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdminCustomersChromePrintServersBatchCreatePrintServersResource)
                      Core.mempty

