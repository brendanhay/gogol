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
-- Module      : Gogol.AppsReseller.Reseller.Customers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a customer account\'s settings. This method supports patch semantics. You cannot update @customerType@ via the Reseller API, but a @\"team\"@ customer can verify their domain and become @customerType = \"domain\"@. For more information, see <https://support.google.com/a/answer/9122284 Verify your domain to unlock Essentials features>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.customers.patch@.
module Gogol.AppsReseller.Reseller.Customers.Patch
    (
    -- * Resource
      ResellerCustomersPatchResource

    -- ** Constructing a Request
    , ResellerCustomersPatch (..)
    , newResellerCustomersPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsReseller.Types

-- | A resource alias for @reseller.customers.patch@ method which the
-- 'ResellerCustomersPatch' request conforms to.
type ResellerCustomersPatchResource =
     "apps" Core.:>
       "reseller" Core.:>
         "v1" Core.:>
           "customers" Core.:>
             Core.Capture "customerId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Customer Core.:>
                             Core.Patch '[Core.JSON] Customer

-- | Updates a customer account\'s settings. This method supports patch semantics. You cannot update @customerType@ via the Reseller API, but a @\"team\"@ customer can verify their domain and become @customerType = \"domain\"@. For more information, see <https://support.google.com/a/answer/9122284 Verify your domain to unlock Essentials features>.
--
-- /See:/ 'newResellerCustomersPatch' smart constructor.
data ResellerCustomersPatch = ResellerCustomersPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    , customerId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Customer
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerCustomersPatch' with the minimum fields required to make a request.
newResellerCustomersPatch 
    ::  Core.Text
       -- ^  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
    -> Customer
       -- ^  Multipart request metadata. See 'payload'.
    -> ResellerCustomersPatch
newResellerCustomersPatch customerId payload =
  ResellerCustomersPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = customerId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ResellerCustomersPatch
         where
        type Rs ResellerCustomersPatch = Customer
        type Scopes ResellerCustomersPatch = '[Apps'Order]
        requestClient ResellerCustomersPatch{..}
          = go customerId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appsResellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ResellerCustomersPatchResource)
                      Core.mempty

