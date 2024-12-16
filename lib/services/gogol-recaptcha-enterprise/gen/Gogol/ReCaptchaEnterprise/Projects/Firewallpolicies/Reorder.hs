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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Reorder
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reorders all firewall policies.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.firewallpolicies.reorder@.
module Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Reorder
    (
    -- * Resource
      ReCaptchaEnterpriseProjectsFirewallpoliciesReorderResource

    -- ** Constructing a Request
    , ReCaptchaEnterpriseProjectsFirewallpoliciesReorder (..)
    , newReCaptchaEnterpriseProjectsFirewallpoliciesReorder
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.firewallpolicies.reorder@ method which the
-- 'ReCaptchaEnterpriseProjectsFirewallpoliciesReorder' request conforms to.
type ReCaptchaEnterpriseProjectsFirewallpoliciesReorderResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "firewallpolicies:reorder" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
                         Core.:>
                         Core.Post '[Core.JSON]
                           GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse

-- | Reorders all firewall policies.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsFirewallpoliciesReorder' smart constructor.
data ReCaptchaEnterpriseProjectsFirewallpoliciesReorder = ReCaptchaEnterpriseProjectsFirewallpoliciesReorder
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the project to list the policies for, in the format @projects\/{project}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsFirewallpoliciesReorder' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsFirewallpoliciesReorder 
    ::  Core.Text
       -- ^  Required. The name of the project to list the policies for, in the format @projects\/{project}@. See 'parent'.
    -> GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ReCaptchaEnterpriseProjectsFirewallpoliciesReorder
newReCaptchaEnterpriseProjectsFirewallpoliciesReorder parent payload =
  ReCaptchaEnterpriseProjectsFirewallpoliciesReorder
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ReCaptchaEnterpriseProjectsFirewallpoliciesReorder
         where
        type Rs
               ReCaptchaEnterpriseProjectsFirewallpoliciesReorder
             =
             GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
        type Scopes
               ReCaptchaEnterpriseProjectsFirewallpoliciesReorder
             = '[CloudPlatform'FullControl]
        requestClient
          ReCaptchaEnterpriseProjectsFirewallpoliciesReorder{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              reCaptchaEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReCaptchaEnterpriseProjectsFirewallpoliciesReorderResource)
                      Core.mempty

