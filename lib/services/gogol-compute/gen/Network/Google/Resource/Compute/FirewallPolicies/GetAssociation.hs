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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.GetAssociation
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an association with the specified name.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.getAssociation@.
module Network.Google.Resource.Compute.FirewallPolicies.GetAssociation
    (
    -- * REST Resource
      FirewallPoliciesGetAssociationResource

    -- * Creating a Request
    , firewallPoliciesGetAssociation
    , FirewallPoliciesGetAssociation

    -- * Request Lenses
    , fpgaFirewallPolicy
    , fpgaName
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.getAssociation@ method which the
-- 'FirewallPoliciesGetAssociation' request conforms to.
type FirewallPoliciesGetAssociationResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "firewallPolicy" Text :>
                 "getAssociation" :>
                   QueryParam "name" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] FirewallPolicyAssociation

-- | Gets an association with the specified name.
--
-- /See:/ 'firewallPoliciesGetAssociation' smart constructor.
data FirewallPoliciesGetAssociation =
  FirewallPoliciesGetAssociation'
    { _fpgaFirewallPolicy :: !Text
    , _fpgaName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesGetAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpgaFirewallPolicy'
--
-- * 'fpgaName'
firewallPoliciesGetAssociation
    :: Text -- ^ 'fpgaFirewallPolicy'
    -> FirewallPoliciesGetAssociation
firewallPoliciesGetAssociation pFpgaFirewallPolicy_ =
  FirewallPoliciesGetAssociation'
    {_fpgaFirewallPolicy = pFpgaFirewallPolicy_, _fpgaName = Nothing}


-- | Name of the firewall policy to which the queried rule belongs.
fpgaFirewallPolicy :: Lens' FirewallPoliciesGetAssociation Text
fpgaFirewallPolicy
  = lens _fpgaFirewallPolicy
      (\ s a -> s{_fpgaFirewallPolicy = a})

-- | The name of the association to get from the firewall policy.
fpgaName :: Lens' FirewallPoliciesGetAssociation (Maybe Text)
fpgaName = lens _fpgaName (\ s a -> s{_fpgaName = a})

instance GoogleRequest FirewallPoliciesGetAssociation
         where
        type Rs FirewallPoliciesGetAssociation =
             FirewallPolicyAssociation
        type Scopes FirewallPoliciesGetAssociation =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient FirewallPoliciesGetAssociation'{..}
          = go _fpgaFirewallPolicy _fpgaName (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FirewallPoliciesGetAssociationResource)
                      mempty
