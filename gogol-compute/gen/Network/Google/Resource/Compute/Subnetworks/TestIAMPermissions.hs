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
-- Module      : Network.Google.Resource.Compute.Subnetworks.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.testIamPermissions@.
module Network.Google.Resource.Compute.Subnetworks.TestIAMPermissions
    (
    -- * REST Resource
      SubnetworksTestIAMPermissionsResource

    -- * Creating a Request
    , subnetworksTestIAMPermissions
    , SubnetworksTestIAMPermissions

    -- * Request Lenses
    , stiampProject
    , stiampPayload
    , stiampResource
    , stiampRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.testIamPermissions@ method which the
-- 'SubnetworksTestIAMPermissions' request conforms to.
type SubnetworksTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'subnetworksTestIAMPermissions' smart constructor.
data SubnetworksTestIAMPermissions = SubnetworksTestIAMPermissions'
    { _stiampProject  :: !Text
    , _stiampPayload  :: !TestPermissionsRequest
    , _stiampResource :: !Text
    , _stiampRegion   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stiampProject'
--
-- * 'stiampPayload'
--
-- * 'stiampResource'
--
-- * 'stiampRegion'
subnetworksTestIAMPermissions
    :: Text -- ^ 'stiampProject'
    -> TestPermissionsRequest -- ^ 'stiampPayload'
    -> Text -- ^ 'stiampResource'
    -> Text -- ^ 'stiampRegion'
    -> SubnetworksTestIAMPermissions
subnetworksTestIAMPermissions pStiampProject_ pStiampPayload_ pStiampResource_ pStiampRegion_ =
    SubnetworksTestIAMPermissions'
    { _stiampProject = pStiampProject_
    , _stiampPayload = pStiampPayload_
    , _stiampResource = pStiampResource_
    , _stiampRegion = pStiampRegion_
    }

-- | Project ID for this request.
stiampProject :: Lens' SubnetworksTestIAMPermissions Text
stiampProject
  = lens _stiampProject
      (\ s a -> s{_stiampProject = a})

-- | Multipart request metadata.
stiampPayload :: Lens' SubnetworksTestIAMPermissions TestPermissionsRequest
stiampPayload
  = lens _stiampPayload
      (\ s a -> s{_stiampPayload = a})

-- | Name or id of the resource for this request.
stiampResource :: Lens' SubnetworksTestIAMPermissions Text
stiampResource
  = lens _stiampResource
      (\ s a -> s{_stiampResource = a})

-- | The name of the region for this request.
stiampRegion :: Lens' SubnetworksTestIAMPermissions Text
stiampRegion
  = lens _stiampRegion (\ s a -> s{_stiampRegion = a})

instance GoogleRequest SubnetworksTestIAMPermissions
         where
        type Rs SubnetworksTestIAMPermissions =
             TestPermissionsResponse
        type Scopes SubnetworksTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SubnetworksTestIAMPermissions'{..}
          = go _stiampProject _stiampRegion _stiampResource
              (Just AltJSON)
              _stiampPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SubnetworksTestIAMPermissionsResource)
                      mempty
