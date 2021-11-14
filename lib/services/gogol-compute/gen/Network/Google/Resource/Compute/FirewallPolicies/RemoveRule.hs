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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.RemoveRule
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a rule of the specified priority.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.removeRule@.
module Network.Google.Resource.Compute.FirewallPolicies.RemoveRule
    (
    -- * REST Resource
      FirewallPoliciesRemoveRuleResource

    -- * Creating a Request
    , firewallPoliciesRemoveRule
    , FirewallPoliciesRemoveRule

    -- * Request Lenses
    , fprrRequestId
    , fprrPriority
    , fprrFirewallPolicy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.removeRule@ method which the
-- 'FirewallPoliciesRemoveRule' request conforms to.
type FirewallPoliciesRemoveRuleResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "removeRule" :>
                   QueryParam "requestId" Text :>
                     QueryParam "priority" (Textual Int32) :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Deletes a rule of the specified priority.
--
-- /See:/ 'firewallPoliciesRemoveRule' smart constructor.
data FirewallPoliciesRemoveRule =
  FirewallPoliciesRemoveRule'
    { _fprrRequestId :: !(Maybe Text)
    , _fprrPriority :: !(Maybe (Textual Int32))
    , _fprrFirewallPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesRemoveRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fprrRequestId'
--
-- * 'fprrPriority'
--
-- * 'fprrFirewallPolicy'
firewallPoliciesRemoveRule
    :: Text -- ^ 'fprrFirewallPolicy'
    -> FirewallPoliciesRemoveRule
firewallPoliciesRemoveRule pFprrFirewallPolicy_ =
  FirewallPoliciesRemoveRule'
    { _fprrRequestId = Nothing
    , _fprrPriority = Nothing
    , _fprrFirewallPolicy = pFprrFirewallPolicy_
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
fprrRequestId :: Lens' FirewallPoliciesRemoveRule (Maybe Text)
fprrRequestId
  = lens _fprrRequestId
      (\ s a -> s{_fprrRequestId = a})

-- | The priority of the rule to remove from the firewall policy.
fprrPriority :: Lens' FirewallPoliciesRemoveRule (Maybe Int32)
fprrPriority
  = lens _fprrPriority (\ s a -> s{_fprrPriority = a})
      . mapping _Coerce

-- | Name of the firewall policy to update.
fprrFirewallPolicy :: Lens' FirewallPoliciesRemoveRule Text
fprrFirewallPolicy
  = lens _fprrFirewallPolicy
      (\ s a -> s{_fprrFirewallPolicy = a})

instance GoogleRequest FirewallPoliciesRemoveRule
         where
        type Rs FirewallPoliciesRemoveRule = Operation
        type Scopes FirewallPoliciesRemoveRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesRemoveRule'{..}
          = go _fprrFirewallPolicy _fprrRequestId _fprrPriority
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesRemoveRuleResource)
                      mempty
