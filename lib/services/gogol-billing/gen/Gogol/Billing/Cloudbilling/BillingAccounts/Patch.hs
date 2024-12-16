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
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a billing account\'s fields. Currently the only field that can be edited is @display_name@. The current authenticated user must have the @billing.accounts.update@ IAM permission, which is typically given to the <https://cloud.google.com/billing/docs/how-to/billing-access administrator> of the billing account.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference> for @cloudbilling.billingAccounts.patch@.
module Gogol.Billing.Cloudbilling.BillingAccounts.Patch
    (
    -- * Resource
      CloudbillingBillingAccountsPatchResource

    -- ** Constructing a Request
    , CloudbillingBillingAccountsPatch (..)
    , newCloudbillingBillingAccountsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Billing.Types

-- | A resource alias for @cloudbilling.billingAccounts.patch@ method which the
-- 'CloudbillingBillingAccountsPatch' request conforms to.
type CloudbillingBillingAccountsPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BillingAccount Core.:>
                         Core.Patch '[Core.JSON] BillingAccount

-- | Updates a billing account\'s fields. Currently the only field that can be edited is @display_name@. The current authenticated user must have the @billing.accounts.update@ IAM permission, which is typically given to the <https://cloud.google.com/billing/docs/how-to/billing-access administrator> of the billing account.
--
-- /See:/ 'newCloudbillingBillingAccountsPatch' smart constructor.
data CloudbillingBillingAccountsPatch = CloudbillingBillingAccountsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the billing account resource to be updated.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: BillingAccount
      -- | The update mask applied to the resource. Only \"display_name\" is currently supported.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsPatch' with the minimum fields required to make a request.
newCloudbillingBillingAccountsPatch 
    ::  Core.Text
       -- ^  Required. The name of the billing account resource to be updated. See 'name'.
    -> BillingAccount
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbillingBillingAccountsPatch
newCloudbillingBillingAccountsPatch name payload =
  CloudbillingBillingAccountsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbillingBillingAccountsPatch
         where
        type Rs CloudbillingBillingAccountsPatch =
             BillingAccount
        type Scopes CloudbillingBillingAccountsPatch =
             '[CloudBilling'FullControl,
               CloudPlatform'FullControl]
        requestClient CloudbillingBillingAccountsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              billingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudbillingBillingAccountsPatchResource)
                      Core.mempty

