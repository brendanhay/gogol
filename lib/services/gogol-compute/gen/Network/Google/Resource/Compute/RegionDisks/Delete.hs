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
-- Module      : Network.Google.Resource.Compute.RegionDisks.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified regional persistent disk. Deleting a regional disk
-- removes all the replicas of its data permanently and is irreversible.
-- However, deleting a disk does not delete any snapshots previously made
-- from the disk. You must separately delete snapshots.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.delete@.
module Network.Google.Resource.Compute.RegionDisks.Delete
    (
    -- * REST Resource
      RegionDisksDeleteResource

    -- * Creating a Request
    , regionDisksDelete
    , RegionDisksDelete

    -- * Request Lenses
    , rddRequestId
    , rddProject
    , rddDisk
    , rddRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.delete@ method which the
-- 'RegionDisksDelete' request conforms to.
type RegionDisksDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified regional persistent disk. Deleting a regional disk
-- removes all the replicas of its data permanently and is irreversible.
-- However, deleting a disk does not delete any snapshots previously made
-- from the disk. You must separately delete snapshots.
--
-- /See:/ 'regionDisksDelete' smart constructor.
data RegionDisksDelete =
  RegionDisksDelete'
    { _rddRequestId :: !(Maybe Text)
    , _rddProject :: !Text
    , _rddDisk :: !Text
    , _rddRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddRequestId'
--
-- * 'rddProject'
--
-- * 'rddDisk'
--
-- * 'rddRegion'
regionDisksDelete
    :: Text -- ^ 'rddProject'
    -> Text -- ^ 'rddDisk'
    -> Text -- ^ 'rddRegion'
    -> RegionDisksDelete
regionDisksDelete pRddProject_ pRddDisk_ pRddRegion_ =
  RegionDisksDelete'
    { _rddRequestId = Nothing
    , _rddProject = pRddProject_
    , _rddDisk = pRddDisk_
    , _rddRegion = pRddRegion_
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
rddRequestId :: Lens' RegionDisksDelete (Maybe Text)
rddRequestId
  = lens _rddRequestId (\ s a -> s{_rddRequestId = a})

-- | Project ID for this request.
rddProject :: Lens' RegionDisksDelete Text
rddProject
  = lens _rddProject (\ s a -> s{_rddProject = a})

-- | Name of the regional persistent disk to delete.
rddDisk :: Lens' RegionDisksDelete Text
rddDisk = lens _rddDisk (\ s a -> s{_rddDisk = a})

-- | Name of the region for this request.
rddRegion :: Lens' RegionDisksDelete Text
rddRegion
  = lens _rddRegion (\ s a -> s{_rddRegion = a})

instance GoogleRequest RegionDisksDelete where
        type Rs RegionDisksDelete = Operation
        type Scopes RegionDisksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionDisksDelete'{..}
          = go _rddProject _rddRegion _rddDisk _rddRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDisksDeleteResource)
                      mempty
