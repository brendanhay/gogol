{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.setIamPolicy@.
module Network.Google.Resource.Compute.FirewallPolicies.SetIAMPolicy
    (
    -- * REST Resource
      FirewallPoliciesSetIAMPolicyResource

    -- * Creating a Request
    , firewallPoliciesSetIAMPolicy
    , FirewallPoliciesSetIAMPolicy

    -- * Request Lenses
    , fpsipPayload
    , fpsipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.setIamPolicy@ method which the
-- 'FirewallPoliciesSetIAMPolicy' request conforms to.
type FirewallPoliciesSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "resource" Text :>
                 "setIamPolicy" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GlobalOrganizationSetPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'firewallPoliciesSetIAMPolicy' smart constructor.
data FirewallPoliciesSetIAMPolicy =
  FirewallPoliciesSetIAMPolicy'
    { _fpsipPayload :: !GlobalOrganizationSetPolicyRequest
    , _fpsipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpsipPayload'
--
-- * 'fpsipResource'
firewallPoliciesSetIAMPolicy
    :: GlobalOrganizationSetPolicyRequest -- ^ 'fpsipPayload'
    -> Text -- ^ 'fpsipResource'
    -> FirewallPoliciesSetIAMPolicy
firewallPoliciesSetIAMPolicy pFpsipPayload_ pFpsipResource_ =
  FirewallPoliciesSetIAMPolicy'
    {_fpsipPayload = pFpsipPayload_, _fpsipResource = pFpsipResource_}


-- | Multipart request metadata.
fpsipPayload :: Lens' FirewallPoliciesSetIAMPolicy GlobalOrganizationSetPolicyRequest
fpsipPayload
  = lens _fpsipPayload (\ s a -> s{_fpsipPayload = a})

-- | Name or id of the resource for this request.
fpsipResource :: Lens' FirewallPoliciesSetIAMPolicy Text
fpsipResource
  = lens _fpsipResource
      (\ s a -> s{_fpsipResource = a})

instance GoogleRequest FirewallPoliciesSetIAMPolicy
         where
        type Rs FirewallPoliciesSetIAMPolicy = Policy
        type Scopes FirewallPoliciesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesSetIAMPolicy'{..}
          = go _fpsipResource (Just AltJSON) _fpsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesSetIAMPolicyResource)
                      mempty
