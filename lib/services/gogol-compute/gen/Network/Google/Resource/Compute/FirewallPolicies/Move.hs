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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.Move
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified firewall policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.move@.
module Network.Google.Resource.Compute.FirewallPolicies.Move
    (
    -- * REST Resource
      FirewallPoliciesMoveResource

    -- * Creating a Request
    , firewallPoliciesMove
    , FirewallPoliciesMove

    -- * Request Lenses
    , fpmRequestId
    , fpmFirewallPolicy
    , fpmParentId
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.move@ method which the
-- 'FirewallPoliciesMove' request conforms to.
type FirewallPoliciesMoveResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "move" :>
                   QueryParam "requestId" Text :>
                     QueryParam "parentId" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Moves the specified firewall policy.
--
-- /See:/ 'firewallPoliciesMove' smart constructor.
data FirewallPoliciesMove =
  FirewallPoliciesMove'
    { _fpmRequestId :: !(Maybe Text)
    , _fpmFirewallPolicy :: !Text
    , _fpmParentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesMove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpmRequestId'
--
-- * 'fpmFirewallPolicy'
--
-- * 'fpmParentId'
firewallPoliciesMove
    :: Text -- ^ 'fpmFirewallPolicy'
    -> FirewallPoliciesMove
firewallPoliciesMove pFpmFirewallPolicy_ =
  FirewallPoliciesMove'
    { _fpmRequestId = Nothing
    , _fpmFirewallPolicy = pFpmFirewallPolicy_
    , _fpmParentId = Nothing
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
fpmRequestId :: Lens' FirewallPoliciesMove (Maybe Text)
fpmRequestId
  = lens _fpmRequestId (\ s a -> s{_fpmRequestId = a})

-- | Name of the firewall policy to update.
fpmFirewallPolicy :: Lens' FirewallPoliciesMove Text
fpmFirewallPolicy
  = lens _fpmFirewallPolicy
      (\ s a -> s{_fpmFirewallPolicy = a})

-- | The new parent of the firewall policy.
fpmParentId :: Lens' FirewallPoliciesMove (Maybe Text)
fpmParentId
  = lens _fpmParentId (\ s a -> s{_fpmParentId = a})

instance GoogleRequest FirewallPoliciesMove where
        type Rs FirewallPoliciesMove = Operation
        type Scopes FirewallPoliciesMove =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesMove'{..}
          = go _fpmFirewallPolicy _fpmRequestId _fpmParentId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesMoveResource)
                      mempty
