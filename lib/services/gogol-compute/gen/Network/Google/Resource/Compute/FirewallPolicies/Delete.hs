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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.delete@.
module Network.Google.Resource.Compute.FirewallPolicies.Delete
    (
    -- * REST Resource
      FirewallPoliciesDeleteResource

    -- * Creating a Request
    , firewallPoliciesDelete
    , FirewallPoliciesDelete

    -- * Request Lenses
    , fpdRequestId
    , fpdFirewallPolicy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.delete@ method which the
-- 'FirewallPoliciesDelete' request conforms to.
type FirewallPoliciesDeleteResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified policy.
--
-- /See:/ 'firewallPoliciesDelete' smart constructor.
data FirewallPoliciesDelete =
  FirewallPoliciesDelete'
    { _fpdRequestId :: !(Maybe Text)
    , _fpdFirewallPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpdRequestId'
--
-- * 'fpdFirewallPolicy'
firewallPoliciesDelete
    :: Text -- ^ 'fpdFirewallPolicy'
    -> FirewallPoliciesDelete
firewallPoliciesDelete pFpdFirewallPolicy_ =
  FirewallPoliciesDelete'
    {_fpdRequestId = Nothing, _fpdFirewallPolicy = pFpdFirewallPolicy_}


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
fpdRequestId :: Lens' FirewallPoliciesDelete (Maybe Text)
fpdRequestId
  = lens _fpdRequestId (\ s a -> s{_fpdRequestId = a})

-- | Name of the firewall policy to delete.
fpdFirewallPolicy :: Lens' FirewallPoliciesDelete Text
fpdFirewallPolicy
  = lens _fpdFirewallPolicy
      (\ s a -> s{_fpdFirewallPolicy = a})

instance GoogleRequest FirewallPoliciesDelete where
        type Rs FirewallPoliciesDelete = Operation
        type Scopes FirewallPoliciesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesDelete'{..}
          = go _fpdFirewallPolicy _fpdRequestId (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesDeleteResource)
                      mempty
