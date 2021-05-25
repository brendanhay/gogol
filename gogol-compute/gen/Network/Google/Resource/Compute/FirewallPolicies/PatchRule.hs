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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.PatchRule
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a rule of the specified priority.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.patchRule@.
module Network.Google.Resource.Compute.FirewallPolicies.PatchRule
    (
    -- * REST Resource
      FirewallPoliciesPatchRuleResource

    -- * Creating a Request
    , firewallPoliciesPatchRule
    , FirewallPoliciesPatchRule

    -- * Request Lenses
    , fpprRequestId
    , fpprPriority
    , fpprFirewallPolicy
    , fpprPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.patchRule@ method which the
-- 'FirewallPoliciesPatchRule' request conforms to.
type FirewallPoliciesPatchRuleResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "patchRule" :>
                   QueryParam "requestId" Text :>
                     QueryParam "priority" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FirewallPolicyRule :>
                           Post '[JSON] Operation

-- | Patches a rule of the specified priority.
--
-- /See:/ 'firewallPoliciesPatchRule' smart constructor.
data FirewallPoliciesPatchRule =
  FirewallPoliciesPatchRule'
    { _fpprRequestId :: !(Maybe Text)
    , _fpprPriority :: !(Maybe (Textual Int32))
    , _fpprFirewallPolicy :: !Text
    , _fpprPayload :: !FirewallPolicyRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesPatchRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpprRequestId'
--
-- * 'fpprPriority'
--
-- * 'fpprFirewallPolicy'
--
-- * 'fpprPayload'
firewallPoliciesPatchRule
    :: Text -- ^ 'fpprFirewallPolicy'
    -> FirewallPolicyRule -- ^ 'fpprPayload'
    -> FirewallPoliciesPatchRule
firewallPoliciesPatchRule pFpprFirewallPolicy_ pFpprPayload_ =
  FirewallPoliciesPatchRule'
    { _fpprRequestId = Nothing
    , _fpprPriority = Nothing
    , _fpprFirewallPolicy = pFpprFirewallPolicy_
    , _fpprPayload = pFpprPayload_
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
fpprRequestId :: Lens' FirewallPoliciesPatchRule (Maybe Text)
fpprRequestId
  = lens _fpprRequestId
      (\ s a -> s{_fpprRequestId = a})

-- | The priority of the rule to patch.
fpprPriority :: Lens' FirewallPoliciesPatchRule (Maybe Int32)
fpprPriority
  = lens _fpprPriority (\ s a -> s{_fpprPriority = a})
      . mapping _Coerce

-- | Name of the firewall policy to update.
fpprFirewallPolicy :: Lens' FirewallPoliciesPatchRule Text
fpprFirewallPolicy
  = lens _fpprFirewallPolicy
      (\ s a -> s{_fpprFirewallPolicy = a})

-- | Multipart request metadata.
fpprPayload :: Lens' FirewallPoliciesPatchRule FirewallPolicyRule
fpprPayload
  = lens _fpprPayload (\ s a -> s{_fpprPayload = a})

instance GoogleRequest FirewallPoliciesPatchRule
         where
        type Rs FirewallPoliciesPatchRule = Operation
        type Scopes FirewallPoliciesPatchRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesPatchRule'{..}
          = go _fpprFirewallPolicy _fpprRequestId _fpprPriority
              (Just AltJSON)
              _fpprPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesPatchRuleResource)
                      mempty
