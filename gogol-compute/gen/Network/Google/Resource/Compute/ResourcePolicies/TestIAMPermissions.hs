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
-- Module      : Network.Google.Resource.Compute.ResourcePolicies.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.resourcePolicies.testIamPermissions@.
module Network.Google.Resource.Compute.ResourcePolicies.TestIAMPermissions
    (
    -- * REST Resource
      ResourcePoliciesTestIAMPermissionsResource

    -- * Creating a Request
    , resourcePoliciesTestIAMPermissions
    , ResourcePoliciesTestIAMPermissions

    -- * Request Lenses
    , rptipProject
    , rptipPayload
    , rptipResource
    , rptipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.resourcePolicies.testIamPermissions@ method which the
-- 'ResourcePoliciesTestIAMPermissions' request conforms to.
type ResourcePoliciesTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "resourcePolicies" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'resourcePoliciesTestIAMPermissions' smart constructor.
data ResourcePoliciesTestIAMPermissions =
  ResourcePoliciesTestIAMPermissions'
    { _rptipProject :: !Text
    , _rptipPayload :: !TestPermissionsRequest
    , _rptipResource :: !Text
    , _rptipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePoliciesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rptipProject'
--
-- * 'rptipPayload'
--
-- * 'rptipResource'
--
-- * 'rptipRegion'
resourcePoliciesTestIAMPermissions
    :: Text -- ^ 'rptipProject'
    -> TestPermissionsRequest -- ^ 'rptipPayload'
    -> Text -- ^ 'rptipResource'
    -> Text -- ^ 'rptipRegion'
    -> ResourcePoliciesTestIAMPermissions
resourcePoliciesTestIAMPermissions pRptipProject_ pRptipPayload_ pRptipResource_ pRptipRegion_ =
  ResourcePoliciesTestIAMPermissions'
    { _rptipProject = pRptipProject_
    , _rptipPayload = pRptipPayload_
    , _rptipResource = pRptipResource_
    , _rptipRegion = pRptipRegion_
    }


-- | Project ID for this request.
rptipProject :: Lens' ResourcePoliciesTestIAMPermissions Text
rptipProject
  = lens _rptipProject (\ s a -> s{_rptipProject = a})

-- | Multipart request metadata.
rptipPayload :: Lens' ResourcePoliciesTestIAMPermissions TestPermissionsRequest
rptipPayload
  = lens _rptipPayload (\ s a -> s{_rptipPayload = a})

-- | Name or id of the resource for this request.
rptipResource :: Lens' ResourcePoliciesTestIAMPermissions Text
rptipResource
  = lens _rptipResource
      (\ s a -> s{_rptipResource = a})

-- | The name of the region for this request.
rptipRegion :: Lens' ResourcePoliciesTestIAMPermissions Text
rptipRegion
  = lens _rptipRegion (\ s a -> s{_rptipRegion = a})

instance GoogleRequest
           ResourcePoliciesTestIAMPermissions
         where
        type Rs ResourcePoliciesTestIAMPermissions =
             TestPermissionsResponse
        type Scopes ResourcePoliciesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ResourcePoliciesTestIAMPermissions'{..}
          = go _rptipProject _rptipRegion _rptipResource
              (Just AltJSON)
              _rptipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ResourcePoliciesTestIAMPermissionsResource)
                      mempty
