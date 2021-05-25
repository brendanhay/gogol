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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.AddAssociation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts an association for the specified firewall policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.addAssociation@.
module Network.Google.Resource.Compute.FirewallPolicies.AddAssociation
    (
    -- * REST Resource
      FirewallPoliciesAddAssociationResource

    -- * Creating a Request
    , firewallPoliciesAddAssociation
    , FirewallPoliciesAddAssociation

    -- * Request Lenses
    , fpaaRequestId
    , fpaaFirewallPolicy
    , fpaaPayload
    , fpaaReplaceExistingAssociation
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.addAssociation@ method which the
-- 'FirewallPoliciesAddAssociation' request conforms to.
type FirewallPoliciesAddAssociationResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "addAssociation" :>
                   QueryParam "requestId" Text :>
                     QueryParam "replaceExistingAssociation" Bool :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FirewallPolicyAssociation :>
                           Post '[JSON] Operation

-- | Inserts an association for the specified firewall policy.
--
-- /See:/ 'firewallPoliciesAddAssociation' smart constructor.
data FirewallPoliciesAddAssociation =
  FirewallPoliciesAddAssociation'
    { _fpaaRequestId :: !(Maybe Text)
    , _fpaaFirewallPolicy :: !Text
    , _fpaaPayload :: !FirewallPolicyAssociation
    , _fpaaReplaceExistingAssociation :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesAddAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpaaRequestId'
--
-- * 'fpaaFirewallPolicy'
--
-- * 'fpaaPayload'
--
-- * 'fpaaReplaceExistingAssociation'
firewallPoliciesAddAssociation
    :: Text -- ^ 'fpaaFirewallPolicy'
    -> FirewallPolicyAssociation -- ^ 'fpaaPayload'
    -> FirewallPoliciesAddAssociation
firewallPoliciesAddAssociation pFpaaFirewallPolicy_ pFpaaPayload_ =
  FirewallPoliciesAddAssociation'
    { _fpaaRequestId = Nothing
    , _fpaaFirewallPolicy = pFpaaFirewallPolicy_
    , _fpaaPayload = pFpaaPayload_
    , _fpaaReplaceExistingAssociation = Nothing
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
fpaaRequestId :: Lens' FirewallPoliciesAddAssociation (Maybe Text)
fpaaRequestId
  = lens _fpaaRequestId
      (\ s a -> s{_fpaaRequestId = a})

-- | Name of the firewall policy to update.
fpaaFirewallPolicy :: Lens' FirewallPoliciesAddAssociation Text
fpaaFirewallPolicy
  = lens _fpaaFirewallPolicy
      (\ s a -> s{_fpaaFirewallPolicy = a})

-- | Multipart request metadata.
fpaaPayload :: Lens' FirewallPoliciesAddAssociation FirewallPolicyAssociation
fpaaPayload
  = lens _fpaaPayload (\ s a -> s{_fpaaPayload = a})

-- | Indicates whether or not to replace it if an association of the
-- attachment already exists. This is false by default, in which case an
-- error will be returned if an association already exists.
fpaaReplaceExistingAssociation :: Lens' FirewallPoliciesAddAssociation (Maybe Bool)
fpaaReplaceExistingAssociation
  = lens _fpaaReplaceExistingAssociation
      (\ s a -> s{_fpaaReplaceExistingAssociation = a})

instance GoogleRequest FirewallPoliciesAddAssociation
         where
        type Rs FirewallPoliciesAddAssociation = Operation
        type Scopes FirewallPoliciesAddAssociation =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesAddAssociation'{..}
          = go _fpaaFirewallPolicy _fpaaRequestId
              _fpaaReplaceExistingAssociation
              (Just AltJSON)
              _fpaaPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FirewallPoliciesAddAssociationResource)
                      mempty
