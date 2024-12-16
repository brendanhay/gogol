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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a print server.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printServers.delete@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.Delete
    (
    -- * Resource
      AdminCustomersChromePrintServersDeleteResource

    -- ** Constructing a Request
    , AdminCustomersChromePrintServersDelete (..)
    , newAdminCustomersChromePrintServersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @admin.customers.chrome.printServers.delete@ method which the
-- 'AdminCustomersChromePrintServersDelete' request conforms to.
type AdminCustomersChromePrintServersDeleteResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           Core.Capture "name" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] Empty

-- | Deletes a print server.
--
-- /See:/ 'newAdminCustomersChromePrintServersDelete' smart constructor.
data AdminCustomersChromePrintServersDelete = AdminCustomersChromePrintServersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the print server to be deleted. Format: @customers\/{customer.id}\/chrome\/printServers\/{print_server.id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintServersDelete' with the minimum fields required to make a request.
newAdminCustomersChromePrintServersDelete 
    ::  Core.Text
       -- ^  Required. The name of the print server to be deleted. Format: @customers\/{customer.id}\/chrome\/printServers\/{print_server.id}@ See 'name'.
    -> AdminCustomersChromePrintServersDelete
newAdminCustomersChromePrintServersDelete name =
  AdminCustomersChromePrintServersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdminCustomersChromePrintServersDelete
         where
        type Rs AdminCustomersChromePrintServersDelete =
             Empty
        type Scopes AdminCustomersChromePrintServersDelete =
             '[Admin'Chrome'Printers]
        requestClient
          AdminCustomersChromePrintServersDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdminCustomersChromePrintServersDeleteResource)
                      Core.mempty

