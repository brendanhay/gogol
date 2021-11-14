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
-- Module      : Network.Google.Resource.Compute.RegionDisks.AddResourcePolicies
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds existing resource policies to a regional disk. You can only add one
-- policy which will be applied to this disk for scheduling snapshot
-- creation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.addResourcePolicies@.
module Network.Google.Resource.Compute.RegionDisks.AddResourcePolicies
    (
    -- * REST Resource
      RegionDisksAddResourcePoliciesResource

    -- * Creating a Request
    , regionDisksAddResourcePolicies
    , RegionDisksAddResourcePolicies

    -- * Request Lenses
    , rdarpRequestId
    , rdarpProject
    , rdarpDisk
    , rdarpPayload
    , rdarpRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.addResourcePolicies@ method which the
-- 'RegionDisksAddResourcePolicies' request conforms to.
type RegionDisksAddResourcePoliciesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "addResourcePolicies" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RegionDisksAddResourcePoliciesRequest
                             :> Post '[JSON] Operation

-- | Adds existing resource policies to a regional disk. You can only add one
-- policy which will be applied to this disk for scheduling snapshot
-- creation.
--
-- /See:/ 'regionDisksAddResourcePolicies' smart constructor.
data RegionDisksAddResourcePolicies =
  RegionDisksAddResourcePolicies'
    { _rdarpRequestId :: !(Maybe Text)
    , _rdarpProject :: !Text
    , _rdarpDisk :: !Text
    , _rdarpPayload :: !RegionDisksAddResourcePoliciesRequest
    , _rdarpRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksAddResourcePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdarpRequestId'
--
-- * 'rdarpProject'
--
-- * 'rdarpDisk'
--
-- * 'rdarpPayload'
--
-- * 'rdarpRegion'
regionDisksAddResourcePolicies
    :: Text -- ^ 'rdarpProject'
    -> Text -- ^ 'rdarpDisk'
    -> RegionDisksAddResourcePoliciesRequest -- ^ 'rdarpPayload'
    -> Text -- ^ 'rdarpRegion'
    -> RegionDisksAddResourcePolicies
regionDisksAddResourcePolicies pRdarpProject_ pRdarpDisk_ pRdarpPayload_ pRdarpRegion_ =
  RegionDisksAddResourcePolicies'
    { _rdarpRequestId = Nothing
    , _rdarpProject = pRdarpProject_
    , _rdarpDisk = pRdarpDisk_
    , _rdarpPayload = pRdarpPayload_
    , _rdarpRegion = pRdarpRegion_
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
rdarpRequestId :: Lens' RegionDisksAddResourcePolicies (Maybe Text)
rdarpRequestId
  = lens _rdarpRequestId
      (\ s a -> s{_rdarpRequestId = a})

-- | Project ID for this request.
rdarpProject :: Lens' RegionDisksAddResourcePolicies Text
rdarpProject
  = lens _rdarpProject (\ s a -> s{_rdarpProject = a})

-- | The disk name for this request.
rdarpDisk :: Lens' RegionDisksAddResourcePolicies Text
rdarpDisk
  = lens _rdarpDisk (\ s a -> s{_rdarpDisk = a})

-- | Multipart request metadata.
rdarpPayload :: Lens' RegionDisksAddResourcePolicies RegionDisksAddResourcePoliciesRequest
rdarpPayload
  = lens _rdarpPayload (\ s a -> s{_rdarpPayload = a})

-- | The name of the region for this request.
rdarpRegion :: Lens' RegionDisksAddResourcePolicies Text
rdarpRegion
  = lens _rdarpRegion (\ s a -> s{_rdarpRegion = a})

instance GoogleRequest RegionDisksAddResourcePolicies
         where
        type Rs RegionDisksAddResourcePolicies = Operation
        type Scopes RegionDisksAddResourcePolicies =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionDisksAddResourcePolicies'{..}
          = go _rdarpProject _rdarpRegion _rdarpDisk
              _rdarpRequestId
              (Just AltJSON)
              _rdarpPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionDisksAddResourcePoliciesResource)
                      mempty
