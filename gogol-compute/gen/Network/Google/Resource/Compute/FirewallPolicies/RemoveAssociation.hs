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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.RemoveAssociation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an association for the specified firewall policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.removeAssociation@.
module Network.Google.Resource.Compute.FirewallPolicies.RemoveAssociation
    (
    -- * REST Resource
      FirewallPoliciesRemoveAssociationResource

    -- * Creating a Request
    , firewallPoliciesRemoveAssociation
    , FirewallPoliciesRemoveAssociation

    -- * Request Lenses
    , fpraRequestId
    , fpraFirewallPolicy
    , fpraName
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.removeAssociation@ method which the
-- 'FirewallPoliciesRemoveAssociation' request conforms to.
type FirewallPoliciesRemoveAssociationResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "removeAssociation" :>
                   QueryParam "requestId" Text :>
                     QueryParam "name" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Removes an association for the specified firewall policy.
--
-- /See:/ 'firewallPoliciesRemoveAssociation' smart constructor.
data FirewallPoliciesRemoveAssociation =
  FirewallPoliciesRemoveAssociation'
    { _fpraRequestId :: !(Maybe Text)
    , _fpraFirewallPolicy :: !Text
    , _fpraName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesRemoveAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpraRequestId'
--
-- * 'fpraFirewallPolicy'
--
-- * 'fpraName'
firewallPoliciesRemoveAssociation
    :: Text -- ^ 'fpraFirewallPolicy'
    -> FirewallPoliciesRemoveAssociation
firewallPoliciesRemoveAssociation pFpraFirewallPolicy_ =
  FirewallPoliciesRemoveAssociation'
    { _fpraRequestId = Nothing
    , _fpraFirewallPolicy = pFpraFirewallPolicy_
    , _fpraName = Nothing
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
fpraRequestId :: Lens' FirewallPoliciesRemoveAssociation (Maybe Text)
fpraRequestId
  = lens _fpraRequestId
      (\ s a -> s{_fpraRequestId = a})

-- | Name of the firewall policy to update.
fpraFirewallPolicy :: Lens' FirewallPoliciesRemoveAssociation Text
fpraFirewallPolicy
  = lens _fpraFirewallPolicy
      (\ s a -> s{_fpraFirewallPolicy = a})

-- | Name for the attachment that will be removed.
fpraName :: Lens' FirewallPoliciesRemoveAssociation (Maybe Text)
fpraName = lens _fpraName (\ s a -> s{_fpraName = a})

instance GoogleRequest
           FirewallPoliciesRemoveAssociation
         where
        type Rs FirewallPoliciesRemoveAssociation = Operation
        type Scopes FirewallPoliciesRemoveAssociation =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesRemoveAssociation'{..}
          = go _fpraFirewallPolicy _fpraRequestId _fpraName
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FirewallPoliciesRemoveAssociationResource)
                      mempty
