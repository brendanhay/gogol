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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.testIamPermissions@.
module Network.Google.Resource.Compute.FirewallPolicies.TestIAMPermissions
    (
    -- * REST Resource
      FirewallPoliciesTestIAMPermissionsResource

    -- * Creating a Request
    , firewallPoliciesTestIAMPermissions
    , FirewallPoliciesTestIAMPermissions

    -- * Request Lenses
    , fptipPayload
    , fptipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.testIamPermissions@ method which the
-- 'FirewallPoliciesTestIAMPermissions' request conforms to.
type FirewallPoliciesTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               Capture "resource" Text :>
                 "testIamPermissions" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestPermissionsRequest :>
                       Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'firewallPoliciesTestIAMPermissions' smart constructor.
data FirewallPoliciesTestIAMPermissions =
  FirewallPoliciesTestIAMPermissions'
    { _fptipPayload :: !TestPermissionsRequest
    , _fptipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fptipPayload'
--
-- * 'fptipResource'
firewallPoliciesTestIAMPermissions
    :: TestPermissionsRequest -- ^ 'fptipPayload'
    -> Text -- ^ 'fptipResource'
    -> FirewallPoliciesTestIAMPermissions
firewallPoliciesTestIAMPermissions pFptipPayload_ pFptipResource_ =
  FirewallPoliciesTestIAMPermissions'
    {_fptipPayload = pFptipPayload_, _fptipResource = pFptipResource_}


-- | Multipart request metadata.
fptipPayload :: Lens' FirewallPoliciesTestIAMPermissions TestPermissionsRequest
fptipPayload
  = lens _fptipPayload (\ s a -> s{_fptipPayload = a})

-- | Name or id of the resource for this request.
fptipResource :: Lens' FirewallPoliciesTestIAMPermissions Text
fptipResource
  = lens _fptipResource
      (\ s a -> s{_fptipResource = a})

instance GoogleRequest
           FirewallPoliciesTestIAMPermissions
         where
        type Rs FirewallPoliciesTestIAMPermissions =
             TestPermissionsResponse
        type Scopes FirewallPoliciesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient FirewallPoliciesTestIAMPermissions'{..}
          = go _fptipResource (Just AltJSON) _fptipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FirewallPoliciesTestIAMPermissionsResource)
                      mempty
