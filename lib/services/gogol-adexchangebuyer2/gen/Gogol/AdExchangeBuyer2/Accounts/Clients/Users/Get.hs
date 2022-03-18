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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.Users.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an existing client user.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.users.get@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.Users.Get
    (
    -- * Resource
      AdExchangeBuyer2AccountsClientsUsersGetResource

    -- ** Constructing a Request
    , newAdExchangeBuyer2AccountsClientsUsersGet
    , AdExchangeBuyer2AccountsClientsUsersGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer2.Types

-- | A resource alias for @adexchangebuyer2.accounts.clients.users.get@ method which the
-- 'AdExchangeBuyer2AccountsClientsUsersGet' request conforms to.
type AdExchangeBuyer2AccountsClientsUsersGetResource
     =
     "v2beta1" Core.:>
       "accounts" Core.:>
         Core.Capture "accountId" Core.Int64 Core.:>
           "clients" Core.:>
             Core.Capture "clientAccountId" Core.Int64 Core.:>
               "users" Core.:>
                 Core.Capture "userId" Core.Int64 Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ClientUser

-- | Retrieves an existing client user.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsUsersGet' smart constructor.
data AdExchangeBuyer2AccountsClientsUsersGet = AdExchangeBuyer2AccountsClientsUsersGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Numerical account ID of the client\'s sponsor buyer. (required)
    , accountId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Numerical account ID of the client buyer that the user to be retrieved is associated with. (required)
    , clientAccountId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Numerical identifier of the user to retrieve. (required)
    , userId :: Core.Int64
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsUsersGet' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsUsersGet 
    ::  Core.Int64
       -- ^  Numerical account ID of the client\'s sponsor buyer. (required) See 'accountId'.
    -> Core.Int64
       -- ^  Numerical account ID of the client buyer that the user to be retrieved is associated with. (required) See 'clientAccountId'.
    -> Core.Int64
       -- ^  Numerical identifier of the user to retrieve. (required) See 'userId'.
    -> AdExchangeBuyer2AccountsClientsUsersGet
newAdExchangeBuyer2AccountsClientsUsersGet accountId clientAccountId userId =
  AdExchangeBuyer2AccountsClientsUsersGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , clientAccountId = clientAccountId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest
           AdExchangeBuyer2AccountsClientsUsersGet
         where
        type Rs AdExchangeBuyer2AccountsClientsUsersGet =
             ClientUser
        type Scopes AdExchangeBuyer2AccountsClientsUsersGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AdExchangeBuyer2AccountsClientsUsersGet{..}
          = go accountId clientAccountId userId xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adExchangeBuyer2Service
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyer2AccountsClientsUsersGetResource)
                      Core.mempty

