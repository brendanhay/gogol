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
-- Module      : Gogol.IAM.Policies.CreatePolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a policy.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.policies.createPolicy@.
module Gogol.IAM.Policies.CreatePolicy
    (
    -- * Resource
      IAMPoliciesCreatePolicyResource

    -- ** Constructing a Request
    , IAMPoliciesCreatePolicy (..)
    , newIAMPoliciesCreatePolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAM.Types

-- | A resource alias for @iam.policies.createPolicy@ method which the
-- 'IAMPoliciesCreatePolicy' request conforms to.
type IAMPoliciesCreatePolicyResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "policyId" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] GoogleIamV2Policy Core.:>
                         Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates a policy.
--
-- /See:/ 'newIAMPoliciesCreatePolicy' smart constructor.
data IAMPoliciesCreatePolicy = IAMPoliciesCreatePolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource that the policy is attached to, along with the kind of policy to create. Format: @policies\/{attachment_point}\/denypolicies@ The attachment point is identified by its URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies@. For organizations and folders, use the numeric ID in the full resource name. For projects, you can use the alphanumeric or the numeric ID.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleIamV2Policy
      -- | The ID to use for this policy, which will become the final component of the policy\'s resource name. The ID must contain 3 to 63 characters. It can contain lowercase letters and numbers, as well as dashes (@-@) and periods (@.@). The first character must be a lowercase letter.
    , policyId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMPoliciesCreatePolicy' with the minimum fields required to make a request.
newIAMPoliciesCreatePolicy 
    ::  Core.Text
       -- ^  Required. The resource that the policy is attached to, along with the kind of policy to create. Format: @policies\/{attachment_point}\/denypolicies@ The attachment point is identified by its URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies@. For organizations and folders, use the numeric ID in the full resource name. For projects, you can use the alphanumeric or the numeric ID. See 'parent'.
    -> GoogleIamV2Policy
       -- ^  Multipart request metadata. See 'payload'.
    -> IAMPoliciesCreatePolicy
newIAMPoliciesCreatePolicy parent payload =
  IAMPoliciesCreatePolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , policyId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAMPoliciesCreatePolicy
         where
        type Rs IAMPoliciesCreatePolicy =
             GoogleLongrunningOperation
        type Scopes IAMPoliciesCreatePolicy =
             '[CloudPlatform'FullControl]
        requestClient IAMPoliciesCreatePolicy{..}
          = go parent xgafv accessToken callback policyId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              iAMService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy IAMPoliciesCreatePolicyResource)
                      Core.mempty

