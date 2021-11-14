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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.AddRule
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a rule into a firewall policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.addRule@.
module Network.Google.Resource.Compute.FirewallPolicies.AddRule
    (
    -- * REST Resource
      FirewallPoliciesAddRuleResource

    -- * Creating a Request
    , firewallPoliciesAddRule
    , FirewallPoliciesAddRule

    -- * Request Lenses
    , fparRequestId
    , fparFirewallPolicy
    , fparPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.addRule@ method which the
-- 'FirewallPoliciesAddRule' request conforms to.
type FirewallPoliciesAddRuleResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "addRule" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] FirewallPolicyRule :>
                         Post '[JSON] Operation

-- | Inserts a rule into a firewall policy.
--
-- /See:/ 'firewallPoliciesAddRule' smart constructor.
data FirewallPoliciesAddRule =
  FirewallPoliciesAddRule'
    { _fparRequestId :: !(Maybe Text)
    , _fparFirewallPolicy :: !Text
    , _fparPayload :: !FirewallPolicyRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesAddRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fparRequestId'
--
-- * 'fparFirewallPolicy'
--
-- * 'fparPayload'
firewallPoliciesAddRule
    :: Text -- ^ 'fparFirewallPolicy'
    -> FirewallPolicyRule -- ^ 'fparPayload'
    -> FirewallPoliciesAddRule
firewallPoliciesAddRule pFparFirewallPolicy_ pFparPayload_ =
  FirewallPoliciesAddRule'
    { _fparRequestId = Nothing
    , _fparFirewallPolicy = pFparFirewallPolicy_
    , _fparPayload = pFparPayload_
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
fparRequestId :: Lens' FirewallPoliciesAddRule (Maybe Text)
fparRequestId
  = lens _fparRequestId
      (\ s a -> s{_fparRequestId = a})

-- | Name of the firewall policy to update.
fparFirewallPolicy :: Lens' FirewallPoliciesAddRule Text
fparFirewallPolicy
  = lens _fparFirewallPolicy
      (\ s a -> s{_fparFirewallPolicy = a})

-- | Multipart request metadata.
fparPayload :: Lens' FirewallPoliciesAddRule FirewallPolicyRule
fparPayload
  = lens _fparPayload (\ s a -> s{_fparPayload = a})

instance GoogleRequest FirewallPoliciesAddRule where
        type Rs FirewallPoliciesAddRule = Operation
        type Scopes FirewallPoliciesAddRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesAddRule'{..}
          = go _fparFirewallPolicy _fparRequestId
              (Just AltJSON)
              _fparPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesAddRuleResource)
                      mempty
