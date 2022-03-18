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
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the access control policy for a billing account. This method takes the resource and a set of permissions as input and returns the subset of the input permissions that the caller is allowed for that resource.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.testIamPermissions@.
module Gogol.Billing.Cloudbilling.BillingAccounts.TestIamPermissions
    (
    -- * Resource
      CloudbillingBillingAccountsTestIamPermissionsResource

    -- ** Constructing a Request
    , newCloudbillingBillingAccountsTestIamPermissions
    , CloudbillingBillingAccountsTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Billing.Types

-- | A resource alias for @cloudbilling.billingAccounts.testIamPermissions@ method which the
-- 'CloudbillingBillingAccountsTestIamPermissions' request conforms to.
type CloudbillingBillingAccountsTestIamPermissionsResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "testIamPermissions"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
                       Core.:>
                       Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Tests the access control policy for a billing account. This method takes the resource and a set of permissions as input and returns the subset of the input permissions that the caller is allowed for that resource.
--
-- /See:/ 'newCloudbillingBillingAccountsTestIamPermissions' smart constructor.
data CloudbillingBillingAccountsTestIamPermissions = CloudbillingBillingAccountsTestIamPermissions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TestIamPermissionsRequest
      -- | REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsTestIamPermissions' with the minimum fields required to make a request.
newCloudbillingBillingAccountsTestIamPermissions 
    ::  TestIamPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
    -> CloudbillingBillingAccountsTestIamPermissions
newCloudbillingBillingAccountsTestIamPermissions payload resource =
  CloudbillingBillingAccountsTestIamPermissions
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbillingBillingAccountsTestIamPermissions
         where
        type Rs CloudbillingBillingAccountsTestIamPermissions
             = TestIamPermissionsResponse
        type Scopes
               CloudbillingBillingAccountsTestIamPermissions
             =
             '["https://www.googleapis.com/auth/cloud-billing",
               "https://www.googleapis.com/auth/cloud-billing.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudbillingBillingAccountsTestIamPermissions{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              billingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbillingBillingAccountsTestIamPermissionsResource)
                      Core.mempty

