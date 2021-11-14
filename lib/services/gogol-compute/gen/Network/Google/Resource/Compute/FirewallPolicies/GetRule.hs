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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.GetRule
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a rule of the specified priority.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.getRule@.
module Network.Google.Resource.Compute.FirewallPolicies.GetRule
    (
    -- * REST Resource
      FirewallPoliciesGetRuleResource

    -- * Creating a Request
    , firewallPoliciesGetRule
    , FirewallPoliciesGetRule

    -- * Request Lenses
    , fpgrPriority
    , fpgrFirewallPolicy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.getRule@ method which the
-- 'FirewallPoliciesGetRule' request conforms to.
type FirewallPoliciesGetRuleResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "getRule" :>
                   QueryParam "priority" (Textual Int32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] FirewallPolicyRule

-- | Gets a rule of the specified priority.
--
-- /See:/ 'firewallPoliciesGetRule' smart constructor.
data FirewallPoliciesGetRule =
  FirewallPoliciesGetRule'
    { _fpgrPriority :: !(Maybe (Textual Int32))
    , _fpgrFirewallPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesGetRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpgrPriority'
--
-- * 'fpgrFirewallPolicy'
firewallPoliciesGetRule
    :: Text -- ^ 'fpgrFirewallPolicy'
    -> FirewallPoliciesGetRule
firewallPoliciesGetRule pFpgrFirewallPolicy_ =
  FirewallPoliciesGetRule'
    {_fpgrPriority = Nothing, _fpgrFirewallPolicy = pFpgrFirewallPolicy_}


-- | The priority of the rule to get from the firewall policy.
fpgrPriority :: Lens' FirewallPoliciesGetRule (Maybe Int32)
fpgrPriority
  = lens _fpgrPriority (\ s a -> s{_fpgrPriority = a})
      . mapping _Coerce

-- | Name of the firewall policy to which the queried rule belongs.
fpgrFirewallPolicy :: Lens' FirewallPoliciesGetRule Text
fpgrFirewallPolicy
  = lens _fpgrFirewallPolicy
      (\ s a -> s{_fpgrFirewallPolicy = a})

instance GoogleRequest FirewallPoliciesGetRule where
        type Rs FirewallPoliciesGetRule = FirewallPolicyRule
        type Scopes FirewallPoliciesGetRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient FirewallPoliciesGetRule'{..}
          = go _fpgrFirewallPolicy _fpgrPriority (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesGetRuleResource)
                      mempty
