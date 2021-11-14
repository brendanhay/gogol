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
-- Module      : Network.Google.Resource.Compute.RegionDisks.CreateSnapshot
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of this regional disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.createSnapshot@.
module Network.Google.Resource.Compute.RegionDisks.CreateSnapshot
    (
    -- * REST Resource
      RegionDisksCreateSnapshotResource

    -- * Creating a Request
    , regionDisksCreateSnapshot
    , RegionDisksCreateSnapshot

    -- * Request Lenses
    , rdcsRequestId
    , rdcsProject
    , rdcsDisk
    , rdcsPayload
    , rdcsRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.createSnapshot@ method which the
-- 'RegionDisksCreateSnapshot' request conforms to.
type RegionDisksCreateSnapshotResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "createSnapshot" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Snapshot :> Post '[JSON] Operation

-- | Creates a snapshot of this regional disk.
--
-- /See:/ 'regionDisksCreateSnapshot' smart constructor.
data RegionDisksCreateSnapshot =
  RegionDisksCreateSnapshot'
    { _rdcsRequestId :: !(Maybe Text)
    , _rdcsProject :: !Text
    , _rdcsDisk :: !Text
    , _rdcsPayload :: !Snapshot
    , _rdcsRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksCreateSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdcsRequestId'
--
-- * 'rdcsProject'
--
-- * 'rdcsDisk'
--
-- * 'rdcsPayload'
--
-- * 'rdcsRegion'
regionDisksCreateSnapshot
    :: Text -- ^ 'rdcsProject'
    -> Text -- ^ 'rdcsDisk'
    -> Snapshot -- ^ 'rdcsPayload'
    -> Text -- ^ 'rdcsRegion'
    -> RegionDisksCreateSnapshot
regionDisksCreateSnapshot pRdcsProject_ pRdcsDisk_ pRdcsPayload_ pRdcsRegion_ =
  RegionDisksCreateSnapshot'
    { _rdcsRequestId = Nothing
    , _rdcsProject = pRdcsProject_
    , _rdcsDisk = pRdcsDisk_
    , _rdcsPayload = pRdcsPayload_
    , _rdcsRegion = pRdcsRegion_
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
rdcsRequestId :: Lens' RegionDisksCreateSnapshot (Maybe Text)
rdcsRequestId
  = lens _rdcsRequestId
      (\ s a -> s{_rdcsRequestId = a})

-- | Project ID for this request.
rdcsProject :: Lens' RegionDisksCreateSnapshot Text
rdcsProject
  = lens _rdcsProject (\ s a -> s{_rdcsProject = a})

-- | Name of the regional persistent disk to snapshot.
rdcsDisk :: Lens' RegionDisksCreateSnapshot Text
rdcsDisk = lens _rdcsDisk (\ s a -> s{_rdcsDisk = a})

-- | Multipart request metadata.
rdcsPayload :: Lens' RegionDisksCreateSnapshot Snapshot
rdcsPayload
  = lens _rdcsPayload (\ s a -> s{_rdcsPayload = a})

-- | Name of the region for this request.
rdcsRegion :: Lens' RegionDisksCreateSnapshot Text
rdcsRegion
  = lens _rdcsRegion (\ s a -> s{_rdcsRegion = a})

instance GoogleRequest RegionDisksCreateSnapshot
         where
        type Rs RegionDisksCreateSnapshot = Operation
        type Scopes RegionDisksCreateSnapshot =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionDisksCreateSnapshot'{..}
          = go _rdcsProject _rdcsRegion _rdcsDisk
              _rdcsRequestId
              (Just AltJSON)
              _rdcsPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDisksCreateSnapshotResource)
                      mempty
