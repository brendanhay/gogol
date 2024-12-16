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
-- Module      : Gogol.AppsReseller.Reseller.Customers.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Orders a new customer\'s account. Before ordering a new customer account, establish whether the customer account already exists using the </admin-sdk/reseller/v1/reference/customers/get customers.get> If the customer account exists as a direct Google account or as a resold customer account from another reseller, use the @customerAuthToken\\@ as described in </admin-sdk/reseller/v1/how-tos/manage_customers#create_existing_customer order a resold account for an existing customer>. For more information about ordering a new customer account, see </admin-sdk/reseller/v1/how-tos/manage_customers#create_customer order a new customer account>. After creating a new customer account, you must provision a user as an administrator. The customer\'s administrator is required to sign in to the Admin console and sign the G Suite via Reseller agreement to activate the account. Resellers are prohibited from signing the G Suite via Reseller agreement on the customer\'s behalf. For more information, see
-- </admin-sdk/reseller/v1/how-tos/manage_customers#tos order a new customer account>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.customers.insert@.
module Gogol.AppsReseller.Reseller.Customers.Insert
    (
    -- * Resource
      ResellerCustomersInsertResource

    -- ** Constructing a Request
    , ResellerCustomersInsert (..)
    , newResellerCustomersInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsReseller.Types

-- | A resource alias for @reseller.customers.insert@ method which the
-- 'ResellerCustomersInsert' request conforms to.
type ResellerCustomersInsertResource =
     "apps" Core.:>
       "reseller" Core.:>
         "v1" Core.:>
           "customers" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "customerAuthToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Customer Core.:>
                             Core.Post '[Core.JSON] Customer

-- | Orders a new customer\'s account. Before ordering a new customer account, establish whether the customer account already exists using the </admin-sdk/reseller/v1/reference/customers/get customers.get> If the customer account exists as a direct Google account or as a resold customer account from another reseller, use the @customerAuthToken\\@ as described in </admin-sdk/reseller/v1/how-tos/manage_customers#create_existing_customer order a resold account for an existing customer>. For more information about ordering a new customer account, see </admin-sdk/reseller/v1/how-tos/manage_customers#create_customer order a new customer account>. After creating a new customer account, you must provision a user as an administrator. The customer\'s administrator is required to sign in to the Admin console and sign the G Suite via Reseller agreement to activate the account. Resellers are prohibited from signing the G Suite via Reseller agreement on the customer\'s behalf. For more information, see
-- </admin-sdk/reseller/v1/how-tos/manage_customers#tos order a new customer account>.
--
-- /See:/ 'newResellerCustomersInsert' smart constructor.
data ResellerCustomersInsert = ResellerCustomersInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The @customerAuthToken@ query string is required when creating a resold account that transfers a direct customer\'s subscription or transfers another reseller customer\'s subscription to your reseller management. This is a hexadecimal authentication token needed to complete the subscription transfer. For more information, see the administrator help center.
    , customerAuthToken :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Customer
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerCustomersInsert' with the minimum fields required to make a request.
newResellerCustomersInsert 
    ::  Customer
       -- ^  Multipart request metadata. See 'payload'.
    -> ResellerCustomersInsert
newResellerCustomersInsert payload =
  ResellerCustomersInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerAuthToken = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ResellerCustomersInsert
         where
        type Rs ResellerCustomersInsert = Customer
        type Scopes ResellerCustomersInsert = '[Apps'Order]
        requestClient ResellerCustomersInsert{..}
          = go xgafv accessToken callback customerAuthToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appsResellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ResellerCustomersInsertResource)
                      Core.mempty

