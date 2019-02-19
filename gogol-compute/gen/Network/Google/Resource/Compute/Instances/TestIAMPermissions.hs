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
-- Module      : Network.Google.Resource.Compute.Instances.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.testIamPermissions@.
module Network.Google.Resource.Compute.Instances.TestIAMPermissions
    (
    -- * REST Resource
      InstancesTestIAMPermissionsResource

    -- * Creating a Request
    , instancesTestIAMPermissions
    , InstancesTestIAMPermissions

    -- * Request Lenses
    , itipProject
    , itipZone
    , itipPayload
    , itipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.testIamPermissions@ method which the
-- 'InstancesTestIAMPermissions' request conforms to.
type InstancesTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'instancesTestIAMPermissions' smart constructor.
data InstancesTestIAMPermissions =
  InstancesTestIAMPermissions'
    { _itipProject  :: !Text
    , _itipZone     :: !Text
    , _itipPayload  :: !TestPermissionsRequest
    , _itipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itipProject'
--
-- * 'itipZone'
--
-- * 'itipPayload'
--
-- * 'itipResource'
instancesTestIAMPermissions
    :: Text -- ^ 'itipProject'
    -> Text -- ^ 'itipZone'
    -> TestPermissionsRequest -- ^ 'itipPayload'
    -> Text -- ^ 'itipResource'
    -> InstancesTestIAMPermissions
instancesTestIAMPermissions pItipProject_ pItipZone_ pItipPayload_ pItipResource_ =
  InstancesTestIAMPermissions'
    { _itipProject = pItipProject_
    , _itipZone = pItipZone_
    , _itipPayload = pItipPayload_
    , _itipResource = pItipResource_
    }

-- | Project ID for this request.
itipProject :: Lens' InstancesTestIAMPermissions Text
itipProject
  = lens _itipProject (\ s a -> s{_itipProject = a})

-- | The name of the zone for this request.
itipZone :: Lens' InstancesTestIAMPermissions Text
itipZone = lens _itipZone (\ s a -> s{_itipZone = a})

-- | Multipart request metadata.
itipPayload :: Lens' InstancesTestIAMPermissions TestPermissionsRequest
itipPayload
  = lens _itipPayload (\ s a -> s{_itipPayload = a})

-- | Name or id of the resource for this request.
itipResource :: Lens' InstancesTestIAMPermissions Text
itipResource
  = lens _itipResource (\ s a -> s{_itipResource = a})

instance GoogleRequest InstancesTestIAMPermissions
         where
        type Rs InstancesTestIAMPermissions =
             TestPermissionsResponse
        type Scopes InstancesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesTestIAMPermissions'{..}
          = go _itipProject _itipZone _itipResource
              (Just AltJSON)
              _itipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesTestIAMPermissionsResource)
                      mempty
