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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.CloneRules
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies rules to the specified firewall policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.cloneRules@.
module Network.Google.Resource.Compute.FirewallPolicies.CloneRules
    (
    -- * REST Resource
      FirewallPoliciesCloneRulesResource

    -- * Creating a Request
    , firewallPoliciesCloneRules
    , FirewallPoliciesCloneRules

    -- * Request Lenses
    , fpcrRequestId
    , fpcrSourceFirewallPolicy
    , fpcrFirewallPolicy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.cloneRules@ method which the
-- 'FirewallPoliciesCloneRules' request conforms to.
type FirewallPoliciesCloneRulesResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "cloneRules" :>
                   QueryParam "requestId" Text :>
                     QueryParam "sourceFirewallPolicy" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Copies rules to the specified firewall policy.
--
-- /See:/ 'firewallPoliciesCloneRules' smart constructor.
data FirewallPoliciesCloneRules =
  FirewallPoliciesCloneRules'
    { _fpcrRequestId :: !(Maybe Text)
    , _fpcrSourceFirewallPolicy :: !(Maybe Text)
    , _fpcrFirewallPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesCloneRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpcrRequestId'
--
-- * 'fpcrSourceFirewallPolicy'
--
-- * 'fpcrFirewallPolicy'
firewallPoliciesCloneRules
    :: Text -- ^ 'fpcrFirewallPolicy'
    -> FirewallPoliciesCloneRules
firewallPoliciesCloneRules pFpcrFirewallPolicy_ =
  FirewallPoliciesCloneRules'
    { _fpcrRequestId = Nothing
    , _fpcrSourceFirewallPolicy = Nothing
    , _fpcrFirewallPolicy = pFpcrFirewallPolicy_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
fpcrRequestId :: Lens' FirewallPoliciesCloneRules (Maybe Text)
fpcrRequestId
  = lens _fpcrRequestId
      (\ s a -> s{_fpcrRequestId = a})

-- | The firewall policy from which to copy rules.
fpcrSourceFirewallPolicy :: Lens' FirewallPoliciesCloneRules (Maybe Text)
fpcrSourceFirewallPolicy
  = lens _fpcrSourceFirewallPolicy
      (\ s a -> s{_fpcrSourceFirewallPolicy = a})

-- | Name of the firewall policy to update.
fpcrFirewallPolicy :: Lens' FirewallPoliciesCloneRules Text
fpcrFirewallPolicy
  = lens _fpcrFirewallPolicy
      (\ s a -> s{_fpcrFirewallPolicy = a})

instance GoogleRequest FirewallPoliciesCloneRules
         where
        type Rs FirewallPoliciesCloneRules = Operation
        type Scopes FirewallPoliciesCloneRules =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesCloneRules'{..}
          = go _fpcrFirewallPolicy _fpcrRequestId
              _fpcrSourceFirewallPolicy
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesCloneRulesResource)
                      mempty
