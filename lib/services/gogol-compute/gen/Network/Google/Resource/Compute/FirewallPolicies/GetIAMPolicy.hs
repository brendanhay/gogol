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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.getIamPolicy@.
module Network.Google.Resource.Compute.FirewallPolicies.GetIAMPolicy
    (
    -- * REST Resource
      FirewallPoliciesGetIAMPolicyResource

    -- * Creating a Request
    , firewallPoliciesGetIAMPolicy
    , FirewallPoliciesGetIAMPolicy

    -- * Request Lenses
    , fpgipResource
    , fpgipOptionsRequestedPolicyVersion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.getIamPolicy@ method which the
-- 'FirewallPoliciesGetIAMPolicy' request conforms to.
type FirewallPoliciesGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "resource" Text :>
                 "getIamPolicy" :>
                   QueryParam "optionsRequestedPolicyVersion"
                     (Textual Int32)
                     :> QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'firewallPoliciesGetIAMPolicy' smart constructor.
data FirewallPoliciesGetIAMPolicy =
  FirewallPoliciesGetIAMPolicy'
    { _fpgipResource :: !Text
    , _fpgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpgipResource'
--
-- * 'fpgipOptionsRequestedPolicyVersion'
firewallPoliciesGetIAMPolicy
    :: Text -- ^ 'fpgipResource'
    -> FirewallPoliciesGetIAMPolicy
firewallPoliciesGetIAMPolicy pFpgipResource_ =
  FirewallPoliciesGetIAMPolicy'
    { _fpgipResource = pFpgipResource_
    , _fpgipOptionsRequestedPolicyVersion = Nothing
    }


-- | Name or id of the resource for this request.
fpgipResource :: Lens' FirewallPoliciesGetIAMPolicy Text
fpgipResource
  = lens _fpgipResource
      (\ s a -> s{_fpgipResource = a})

-- | Requested IAM Policy version.
fpgipOptionsRequestedPolicyVersion :: Lens' FirewallPoliciesGetIAMPolicy (Maybe Int32)
fpgipOptionsRequestedPolicyVersion
  = lens _fpgipOptionsRequestedPolicyVersion
      (\ s a -> s{_fpgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

instance GoogleRequest FirewallPoliciesGetIAMPolicy
         where
        type Rs FirewallPoliciesGetIAMPolicy = Policy
        type Scopes FirewallPoliciesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient FirewallPoliciesGetIAMPolicy'{..}
          = go _fpgipResource
              _fpgipOptionsRequestedPolicyVersion
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesGetIAMPolicyResource)
                      mempty
