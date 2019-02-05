{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.IAP
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Controls access to cloud applications running on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference>
module Network.Google.IAP
    (
    -- * Service Configuration
      iAPService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , IAPAPI

    -- * Resources

    -- ** iap.projects.iap_tunnel.getIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapTunnel.GetIAMPolicy

    -- ** iap.projects.iap_tunnel.setIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapTunnel.SetIAMPolicy

    -- ** iap.projects.iap_tunnel.testIamPermissions
    , module Network.Google.Resource.IAP.Projects.IapTunnel.TestIAMPermissions

    -- ** iap.projects.iap_tunnel.zones.getIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.GetIAMPolicy

    -- ** iap.projects.iap_tunnel.zones.instances.getIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.GetIAMPolicy

    -- ** iap.projects.iap_tunnel.zones.instances.setIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.SetIAMPolicy

    -- ** iap.projects.iap_tunnel.zones.instances.testIamPermissions
    , module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.TestIAMPermissions

    -- ** iap.projects.iap_tunnel.zones.setIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.SetIAMPolicy

    -- ** iap.projects.iap_tunnel.zones.testIamPermissions
    , module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.TestIAMPermissions

    -- ** iap.projects.iap_web.getIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapWeb.GetIAMPolicy

    -- ** iap.projects.iap_web.services.getIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapWeb.Services.GetIAMPolicy

    -- ** iap.projects.iap_web.services.setIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapWeb.Services.SetIAMPolicy

    -- ** iap.projects.iap_web.services.testIamPermissions
    , module Network.Google.Resource.IAP.Projects.IapWeb.Services.TestIAMPermissions

    -- ** iap.projects.iap_web.services.versions.getIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.GetIAMPolicy

    -- ** iap.projects.iap_web.services.versions.setIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.SetIAMPolicy

    -- ** iap.projects.iap_web.services.versions.testIamPermissions
    , module Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.TestIAMPermissions

    -- ** iap.projects.iap_web.setIamPolicy
    , module Network.Google.Resource.IAP.Projects.IapWeb.SetIAMPolicy

    -- ** iap.projects.iap_web.testIamPermissions
    , module Network.Google.Resource.IAP.Projects.IapWeb.TestIAMPermissions

    -- * Types

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude
import           Network.Google.Resource.IAP.Projects.IapTunnel.GetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapTunnel.SetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapTunnel.TestIAMPermissions
import           Network.Google.Resource.IAP.Projects.IapTunnel.Zones.GetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.GetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.SetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.TestIAMPermissions
import           Network.Google.Resource.IAP.Projects.IapTunnel.Zones.SetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapTunnel.Zones.TestIAMPermissions
import           Network.Google.Resource.IAP.Projects.IapWeb.GetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapWeb.Services.GetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapWeb.Services.SetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapWeb.Services.TestIAMPermissions
import           Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.GetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.SetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.TestIAMPermissions
import           Network.Google.Resource.IAP.Projects.IapWeb.SetIAMPolicy
import           Network.Google.Resource.IAP.Projects.IapWeb.TestIAMPermissions

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Identity-Aware Proxy API service.
type IAPAPI =
     ProjectsIapTunnelZonesInstancesGetIAMPolicyResource
       :<|>
       ProjectsIapTunnelZonesInstancesSetIAMPolicyResource
       :<|>
       ProjectsIapTunnelZonesInstancesTestIAMPermissionsResource
       :<|> ProjectsIapTunnelZonesGetIAMPolicyResource
       :<|> ProjectsIapTunnelZonesSetIAMPolicyResource
       :<|> ProjectsIapTunnelZonesTestIAMPermissionsResource
       :<|> ProjectsIapTunnelGetIAMPolicyResource
       :<|> ProjectsIapTunnelSetIAMPolicyResource
       :<|> ProjectsIapTunnelTestIAMPermissionsResource
       :<|>
       ProjectsIapWebServicesVersionsGetIAMPolicyResource
       :<|>
       ProjectsIapWebServicesVersionsSetIAMPolicyResource
       :<|>
       ProjectsIapWebServicesVersionsTestIAMPermissionsResource
       :<|> ProjectsIapWebServicesGetIAMPolicyResource
       :<|> ProjectsIapWebServicesSetIAMPolicyResource
       :<|> ProjectsIapWebServicesTestIAMPermissionsResource
       :<|> ProjectsIapWebGetIAMPolicyResource
       :<|> ProjectsIapWebSetIAMPolicyResource
       :<|> ProjectsIapWebTestIAMPermissionsResource
