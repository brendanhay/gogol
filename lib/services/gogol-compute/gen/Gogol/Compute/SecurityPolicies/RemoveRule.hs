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
-- Module      : Gogol.Compute.SecurityPolicies.RemoveRule
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a rule at the specified priority.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.securityPolicies.removeRule@.
module Gogol.Compute.SecurityPolicies.RemoveRule
    (
    -- * Resource
      ComputeSecurityPoliciesRemoveRuleResource

    -- ** Constructing a Request
    , newComputeSecurityPoliciesRemoveRule
    , ComputeSecurityPoliciesRemoveRule
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.securityPolicies.removeRule@ method which the
-- 'ComputeSecurityPoliciesRemoveRule' request conforms to.
type ComputeSecurityPoliciesRemoveRuleResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "securityPolicies" Core.:>
                 Core.Capture "securityPolicy" Core.Text Core.:>
                   "removeRule" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "priority" Core.Int32 Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Post '[Core.JSON] Operation

-- | Deletes a rule at the specified priority.
--
-- /See:/ 'newComputeSecurityPoliciesRemoveRule' smart constructor.
data ComputeSecurityPoliciesRemoveRule = ComputeSecurityPoliciesRemoveRule
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The priority of the rule to remove from the security policy.
    , priority :: (Core.Maybe Core.Int32)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the security policy to update.
    , securityPolicy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeSecurityPoliciesRemoveRule' with the minimum fields required to make a request.
newComputeSecurityPoliciesRemoveRule 
    ::  Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the security policy to update. See 'securityPolicy'.
    -> ComputeSecurityPoliciesRemoveRule
newComputeSecurityPoliciesRemoveRule project securityPolicy =
  ComputeSecurityPoliciesRemoveRule
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , priority = Core.Nothing
    , project = project
    , securityPolicy = securityPolicy
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeSecurityPoliciesRemoveRule
         where
        type Rs ComputeSecurityPoliciesRemoveRule = Operation
        type Scopes ComputeSecurityPoliciesRemoveRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ComputeSecurityPoliciesRemoveRule{..}
          = go project securityPolicy xgafv accessToken
              callback
              priority
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeSecurityPoliciesRemoveRuleResource)
                      Core.mempty

