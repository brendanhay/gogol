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
-- Module      : Gogol.Compute.RegionSecurityPolicies.AddRule
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a rule into a security policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionSecurityPolicies.addRule@.
module Gogol.Compute.RegionSecurityPolicies.AddRule
    (
    -- * Resource
      ComputeRegionSecurityPoliciesAddRuleResource

    -- ** Constructing a Request
    , ComputeRegionSecurityPoliciesAddRule (..)
    , newComputeRegionSecurityPoliciesAddRule
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionSecurityPolicies.addRule@ method which the
-- 'ComputeRegionSecurityPoliciesAddRule' request conforms to.
type ComputeRegionSecurityPoliciesAddRuleResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "securityPolicies" Core.:>
                   Core.Capture "securityPolicy" Core.Text Core.:>
                     "addRule" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "validateOnly" Core.Bool
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON]
                                       SecurityPolicyRule
                                       Core.:> Core.Post '[Core.JSON] Operation

-- | Inserts a rule into a security policy.
--
-- /See:/ 'newComputeRegionSecurityPoliciesAddRule' smart constructor.
data ComputeRegionSecurityPoliciesAddRule = ComputeRegionSecurityPoliciesAddRule
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SecurityPolicyRule
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region scoping this request.
    , region :: Core.Text
      -- | Name of the security policy to update.
    , securityPolicy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | If true, the request will not be committed.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionSecurityPoliciesAddRule' with the minimum fields required to make a request.
newComputeRegionSecurityPoliciesAddRule 
    ::  SecurityPolicyRule
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region scoping this request. See 'region'.
    -> Core.Text
       -- ^  Name of the security policy to update. See 'securityPolicy'.
    -> ComputeRegionSecurityPoliciesAddRule
newComputeRegionSecurityPoliciesAddRule payload project region securityPolicy =
  ComputeRegionSecurityPoliciesAddRule
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , region = region
    , securityPolicy = securityPolicy
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , validateOnly = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionSecurityPoliciesAddRule
         where
        type Rs ComputeRegionSecurityPoliciesAddRule =
             Operation
        type Scopes ComputeRegionSecurityPoliciesAddRule =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          ComputeRegionSecurityPoliciesAddRule{..}
          = go project region securityPolicy xgafv accessToken
              callback
              uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeRegionSecurityPoliciesAddRuleResource)
                      Core.mempty

