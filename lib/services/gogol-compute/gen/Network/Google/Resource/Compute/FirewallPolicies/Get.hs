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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified firewall policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.get@.
module Network.Google.Resource.Compute.FirewallPolicies.Get
    (
    -- * REST Resource
      FirewallPoliciesGetResource

    -- * Creating a Request
    , firewallPoliciesGet
    , FirewallPoliciesGet

    -- * Request Lenses
    , fpgFirewallPolicy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.get@ method which the
-- 'FirewallPoliciesGet' request conforms to.
type FirewallPoliciesGetResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] FirewallPolicy

-- | Returns the specified firewall policy.
--
-- /See:/ 'firewallPoliciesGet' smart constructor.
newtype FirewallPoliciesGet =
  FirewallPoliciesGet'
    { _fpgFirewallPolicy :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpgFirewallPolicy'
firewallPoliciesGet
    :: Text -- ^ 'fpgFirewallPolicy'
    -> FirewallPoliciesGet
firewallPoliciesGet pFpgFirewallPolicy_ =
  FirewallPoliciesGet' {_fpgFirewallPolicy = pFpgFirewallPolicy_}


-- | Name of the firewall policy to get.
fpgFirewallPolicy :: Lens' FirewallPoliciesGet Text
fpgFirewallPolicy
  = lens _fpgFirewallPolicy
      (\ s a -> s{_fpgFirewallPolicy = a})

instance GoogleRequest FirewallPoliciesGet where
        type Rs FirewallPoliciesGet = FirewallPolicy
        type Scopes FirewallPoliciesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient FirewallPoliciesGet'{..}
          = go _fpgFirewallPolicy (Just AltJSON) computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesGetResource)
                      mempty
