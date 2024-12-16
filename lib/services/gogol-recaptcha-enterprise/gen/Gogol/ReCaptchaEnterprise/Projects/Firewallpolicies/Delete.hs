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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified firewall policy.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.firewallpolicies.delete@.
module Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Delete
    (
    -- * Resource
      ReCaptchaEnterpriseProjectsFirewallpoliciesDeleteResource

    -- ** Constructing a Request
    , ReCaptchaEnterpriseProjectsFirewallpoliciesDelete (..)
    , newReCaptchaEnterpriseProjectsFirewallpoliciesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.firewallpolicies.delete@ method which the
-- 'ReCaptchaEnterpriseProjectsFirewallpoliciesDelete' request conforms to.
type ReCaptchaEnterpriseProjectsFirewallpoliciesDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes the specified firewall policy.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsFirewallpoliciesDelete' smart constructor.
data ReCaptchaEnterpriseProjectsFirewallpoliciesDelete = ReCaptchaEnterpriseProjectsFirewallpoliciesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the policy to be deleted, in the format @projects\/{project}\/firewallpolicies\/{firewallpolicy}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsFirewallpoliciesDelete' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsFirewallpoliciesDelete 
    ::  Core.Text
       -- ^  Required. The name of the policy to be deleted, in the format @projects\/{project}\/firewallpolicies\/{firewallpolicy}@. See 'name'.
    -> ReCaptchaEnterpriseProjectsFirewallpoliciesDelete
newReCaptchaEnterpriseProjectsFirewallpoliciesDelete name =
  ReCaptchaEnterpriseProjectsFirewallpoliciesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ReCaptchaEnterpriseProjectsFirewallpoliciesDelete
         where
        type Rs
               ReCaptchaEnterpriseProjectsFirewallpoliciesDelete
             = GoogleProtobufEmpty
        type Scopes
               ReCaptchaEnterpriseProjectsFirewallpoliciesDelete
             = '[CloudPlatform'FullControl]
        requestClient
          ReCaptchaEnterpriseProjectsFirewallpoliciesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              reCaptchaEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReCaptchaEnterpriseProjectsFirewallpoliciesDeleteResource)
                      Core.mempty

