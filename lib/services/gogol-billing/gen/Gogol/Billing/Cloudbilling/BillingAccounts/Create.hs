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
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This method creates <https://cloud.google.com/billing/docs/concepts#subaccounts billing subaccounts>. Google Cloud resellers should use the Channel Services APIs, <https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create accounts.customers.create> and <https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create accounts.customers.entitlements.create>. When creating a subaccount, the current authenticated user must have the @billing.accounts.update@ IAM permission on the parent account, which is typically given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access administrators>. This method will return an error if the parent account has not been provisioned for subaccounts.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference> for @cloudbilling.billingAccounts.create@.
module Gogol.Billing.Cloudbilling.BillingAccounts.Create
    (
    -- * Resource
      CloudbillingBillingAccountsCreateResource

    -- ** Constructing a Request
    , CloudbillingBillingAccountsCreate (..)
    , newCloudbillingBillingAccountsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Billing.Types

-- | A resource alias for @cloudbilling.billingAccounts.create@ method which the
-- 'CloudbillingBillingAccountsCreate' request conforms to.
type CloudbillingBillingAccountsCreateResource =
     "v1" Core.:>
       "billingAccounts" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "parent" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BillingAccount Core.:>
                         Core.Post '[Core.JSON] BillingAccount

-- | This method creates <https://cloud.google.com/billing/docs/concepts#subaccounts billing subaccounts>. Google Cloud resellers should use the Channel Services APIs, <https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create accounts.customers.create> and <https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create accounts.customers.entitlements.create>. When creating a subaccount, the current authenticated user must have the @billing.accounts.update@ IAM permission on the parent account, which is typically given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access administrators>. This method will return an error if the parent account has not been provisioned for subaccounts.
--
-- /See:/ 'newCloudbillingBillingAccountsCreate' smart constructor.
data CloudbillingBillingAccountsCreate = CloudbillingBillingAccountsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The parent to create a billing account from. Format: - @billingAccounts\/{billing_account_id}@, for example, @billingAccounts\/012345-567890-ABCDEF@
    , parent :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BillingAccount
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsCreate' with the minimum fields required to make a request.
newCloudbillingBillingAccountsCreate 
    ::  BillingAccount
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbillingBillingAccountsCreate
newCloudbillingBillingAccountsCreate payload =
  CloudbillingBillingAccountsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbillingBillingAccountsCreate
         where
        type Rs CloudbillingBillingAccountsCreate =
             BillingAccount
        type Scopes CloudbillingBillingAccountsCreate =
             '[CloudBilling'FullControl,
               CloudPlatform'FullControl]
        requestClient CloudbillingBillingAccountsCreate{..}
          = go xgafv accessToken callback parent uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              billingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudbillingBillingAccountsCreateResource)
                      Core.mempty

