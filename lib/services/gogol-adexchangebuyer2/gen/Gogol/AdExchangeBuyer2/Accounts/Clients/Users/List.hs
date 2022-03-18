{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.Users.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the known client users for a specified sponsor buyer account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.users.list@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.Users.List
    (
    -- * Resource
      AdExchangeBuyer2AccountsClientsUsersListResource

    -- ** Constructing a Request
    , newAdExchangeBuyer2AccountsClientsUsersList
    , AdExchangeBuyer2AccountsClientsUsersList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer2.Types

-- | A resource alias for @adexchangebuyer2.accounts.clients.users.list@ method which the
-- 'AdExchangeBuyer2AccountsClientsUsersList' request conforms to.
type AdExchangeBuyer2AccountsClientsUsersListResource
     =
     "v2beta1" Core.:>
       "accounts" Core.:>
         Core.Capture "accountId" Core.Int64 Core.:>
           "clients" Core.:>
             Core.Capture "clientAccountId" Core.Text Core.:>
               "users" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "pageSize" Core.Int32 Core.:>
                         Core.QueryParam "pageToken" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] ListClientUsersResponse

-- | Lists all the known client users for a specified sponsor buyer account ID.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsUsersList' smart constructor.
data AdExchangeBuyer2AccountsClientsUsersList = AdExchangeBuyer2AccountsClientsUsersList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Numerical account ID of the sponsor buyer of the client to list users for. (required)
    , accountId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The account ID of the client buyer to list users for. (required) You must specify either a string representation of a numerical account identifier or the @-@ character to list all the client users for all the clients of a given sponsor buyer.
    , clientAccountId :: Core.Text
      -- | Requested page size. The server may return fewer clients than requested. If unspecified, the server will pick an appropriate default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token identifying a page of results the server should return. Typically, this is the value of ListClientUsersResponse.nextPageToken returned from the previous call to the accounts.clients.users.list method.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsUsersList' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsUsersList 
    ::  Core.Int64
       -- ^  Numerical account ID of the sponsor buyer of the client to list users for. (required) See 'accountId'.
    -> Core.Text
       -- ^  The account ID of the client buyer to list users for. (required) You must specify either a string representation of a numerical account identifier or the @-@ character to list all the client users for all the clients of a given sponsor buyer. See 'clientAccountId'.
    -> AdExchangeBuyer2AccountsClientsUsersList
newAdExchangeBuyer2AccountsClientsUsersList accountId clientAccountId =
  AdExchangeBuyer2AccountsClientsUsersList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , clientAccountId = clientAccountId
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdExchangeBuyer2AccountsClientsUsersList
         where
        type Rs AdExchangeBuyer2AccountsClientsUsersList =
             ListClientUsersResponse
        type Scopes AdExchangeBuyer2AccountsClientsUsersList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AdExchangeBuyer2AccountsClientsUsersList{..}
          = go accountId clientAccountId xgafv accessToken
              callback
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adExchangeBuyer2Service
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyer2AccountsClientsUsersListResource)
                      Core.mempty

