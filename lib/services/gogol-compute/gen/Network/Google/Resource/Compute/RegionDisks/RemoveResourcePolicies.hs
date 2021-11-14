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
-- Module      : Network.Google.Resource.Compute.RegionDisks.RemoveResourcePolicies
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes resource policies from a regional disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.removeResourcePolicies@.
module Network.Google.Resource.Compute.RegionDisks.RemoveResourcePolicies
    (
    -- * REST Resource
      RegionDisksRemoveResourcePoliciesResource

    -- * Creating a Request
    , regionDisksRemoveResourcePolicies
    , RegionDisksRemoveResourcePolicies

    -- * Request Lenses
    , rdrrpRequestId
    , rdrrpProject
    , rdrrpDisk
    , rdrrpPayload
    , rdrrpRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.removeResourcePolicies@ method which the
-- 'RegionDisksRemoveResourcePolicies' request conforms to.
type RegionDisksRemoveResourcePoliciesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "removeResourcePolicies" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionDisksRemoveResourcePoliciesRequest
                             :> Post '[JSON] Operation

-- | Removes resource policies from a regional disk.
--
-- /See:/ 'regionDisksRemoveResourcePolicies' smart constructor.
data RegionDisksRemoveResourcePolicies =
  RegionDisksRemoveResourcePolicies'
    { _rdrrpRequestId :: !(Maybe Text)
    , _rdrrpProject :: !Text
    , _rdrrpDisk :: !Text
    , _rdrrpPayload :: !RegionDisksRemoveResourcePoliciesRequest
    , _rdrrpRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksRemoveResourcePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrrpRequestId'
--
-- * 'rdrrpProject'
--
-- * 'rdrrpDisk'
--
-- * 'rdrrpPayload'
--
-- * 'rdrrpRegion'
regionDisksRemoveResourcePolicies
    :: Text -- ^ 'rdrrpProject'
    -> Text -- ^ 'rdrrpDisk'
    -> RegionDisksRemoveResourcePoliciesRequest -- ^ 'rdrrpPayload'
    -> Text -- ^ 'rdrrpRegion'
    -> RegionDisksRemoveResourcePolicies
regionDisksRemoveResourcePolicies pRdrrpProject_ pRdrrpDisk_ pRdrrpPayload_ pRdrrpRegion_ =
  RegionDisksRemoveResourcePolicies'
    { _rdrrpRequestId = Nothing
    , _rdrrpProject = pRdrrpProject_
    , _rdrrpDisk = pRdrrpDisk_
    , _rdrrpPayload = pRdrrpPayload_
    , _rdrrpRegion = pRdrrpRegion_
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
rdrrpRequestId :: Lens' RegionDisksRemoveResourcePolicies (Maybe Text)
rdrrpRequestId
  = lens _rdrrpRequestId
      (\ s a -> s{_rdrrpRequestId = a})

-- | Project ID for this request.
rdrrpProject :: Lens' RegionDisksRemoveResourcePolicies Text
rdrrpProject
  = lens _rdrrpProject (\ s a -> s{_rdrrpProject = a})

-- | The disk name for this request.
rdrrpDisk :: Lens' RegionDisksRemoveResourcePolicies Text
rdrrpDisk
  = lens _rdrrpDisk (\ s a -> s{_rdrrpDisk = a})

-- | Multipart request metadata.
rdrrpPayload :: Lens' RegionDisksRemoveResourcePolicies RegionDisksRemoveResourcePoliciesRequest
rdrrpPayload
  = lens _rdrrpPayload (\ s a -> s{_rdrrpPayload = a})

-- | The name of the region for this request.
rdrrpRegion :: Lens' RegionDisksRemoveResourcePolicies Text
rdrrpRegion
  = lens _rdrrpRegion (\ s a -> s{_rdrrpRegion = a})

instance GoogleRequest
           RegionDisksRemoveResourcePolicies
         where
        type Rs RegionDisksRemoveResourcePolicies = Operation
        type Scopes RegionDisksRemoveResourcePolicies =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionDisksRemoveResourcePolicies'{..}
          = go _rdrrpProject _rdrrpRegion _rdrrpDisk
              _rdrrpRequestId
              (Just AltJSON)
              _rdrrpPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionDisksRemoveResourcePoliciesResource)
                      mempty
