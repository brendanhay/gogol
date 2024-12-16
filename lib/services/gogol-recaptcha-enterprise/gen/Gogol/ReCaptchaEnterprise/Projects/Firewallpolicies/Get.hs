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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified firewall policy.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.firewallpolicies.get@.
module Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Get
    (
    -- * Resource
      ReCaptchaEnterpriseProjectsFirewallpoliciesGetResource

    -- ** Constructing a Request
    , ReCaptchaEnterpriseProjectsFirewallpoliciesGet (..)
    , newReCaptchaEnterpriseProjectsFirewallpoliciesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.firewallpolicies.get@ method which the
-- 'ReCaptchaEnterpriseProjectsFirewallpoliciesGet' request conforms to.
type ReCaptchaEnterpriseProjectsFirewallpoliciesGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       GoogleCloudRecaptchaenterpriseV1FirewallPolicy

-- | Returns the specified firewall policy.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsFirewallpoliciesGet' smart constructor.
data ReCaptchaEnterpriseProjectsFirewallpoliciesGet = ReCaptchaEnterpriseProjectsFirewallpoliciesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the requested policy, in the format @projects\/{project}\/firewallpolicies\/{firewallpolicy}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsFirewallpoliciesGet' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsFirewallpoliciesGet 
    ::  Core.Text
       -- ^  Required. The name of the requested policy, in the format @projects\/{project}\/firewallpolicies\/{firewallpolicy}@. See 'name'.
    -> ReCaptchaEnterpriseProjectsFirewallpoliciesGet
newReCaptchaEnterpriseProjectsFirewallpoliciesGet name =
  ReCaptchaEnterpriseProjectsFirewallpoliciesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ReCaptchaEnterpriseProjectsFirewallpoliciesGet
         where
        type Rs
               ReCaptchaEnterpriseProjectsFirewallpoliciesGet
             = GoogleCloudRecaptchaenterpriseV1FirewallPolicy
        type Scopes
               ReCaptchaEnterpriseProjectsFirewallpoliciesGet
             = '[CloudPlatform'FullControl]
        requestClient
          ReCaptchaEnterpriseProjectsFirewallpoliciesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              reCaptchaEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReCaptchaEnterpriseProjectsFirewallpoliciesGetResource)
                      Core.mempty

