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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.ListAssociations
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists associations of a specified target, i.e., organization or folder.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.listAssociations@.
module Network.Google.Resource.Compute.FirewallPolicies.ListAssociations
    (
    -- * REST Resource
      FirewallPoliciesListAssociationsResource

    -- * Creating a Request
    , firewallPoliciesListAssociations
    , FirewallPoliciesListAssociations

    -- * Request Lenses
    , fplaTargetResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.listAssociations@ method which the
-- 'FirewallPoliciesListAssociations' request conforms to.
type FirewallPoliciesListAssociationsResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               "listAssociations" :>
                 QueryParam "targetResource" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] FirewallPoliciesListAssociationsResponse

-- | Lists associations of a specified target, i.e., organization or folder.
--
-- /See:/ 'firewallPoliciesListAssociations' smart constructor.
newtype FirewallPoliciesListAssociations =
  FirewallPoliciesListAssociations'
    { _fplaTargetResource :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesListAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fplaTargetResource'
firewallPoliciesListAssociations
    :: FirewallPoliciesListAssociations
firewallPoliciesListAssociations =
  FirewallPoliciesListAssociations' {_fplaTargetResource = Nothing}


-- | The target resource to list associations. It is an organization, or a
-- folder.
fplaTargetResource :: Lens' FirewallPoliciesListAssociations (Maybe Text)
fplaTargetResource
  = lens _fplaTargetResource
      (\ s a -> s{_fplaTargetResource = a})

instance GoogleRequest
           FirewallPoliciesListAssociations
         where
        type Rs FirewallPoliciesListAssociations =
             FirewallPoliciesListAssociationsResponse
        type Scopes FirewallPoliciesListAssociations =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallPoliciesListAssociations'{..}
          = go _fplaTargetResource (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FirewallPoliciesListAssociationsResource)
                      mempty
