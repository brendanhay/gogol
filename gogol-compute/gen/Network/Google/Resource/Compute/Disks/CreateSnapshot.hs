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
-- Module      : Network.Google.Resource.Compute.Disks.CreateSnapshot
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of a specified persistent disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.createSnapshot@.
module Network.Google.Resource.Compute.Disks.CreateSnapshot
    (
    -- * REST Resource
      DisksCreateSnapshotResource

    -- * Creating a Request
    , disksCreateSnapshot
    , DisksCreateSnapshot

    -- * Request Lenses
    , dcsGuestFlush
    , dcsRequestId
    , dcsProject
    , dcsDisk
    , dcsZone
    , dcsPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.disks.createSnapshot@ method which the
-- 'DisksCreateSnapshot' request conforms to.
type DisksCreateSnapshotResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "createSnapshot" :>
                       QueryParam "guestFlush" Bool :>
                         QueryParam "requestId" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Snapshot :> Post '[JSON] Operation

-- | Creates a snapshot of a specified persistent disk.
--
-- /See:/ 'disksCreateSnapshot' smart constructor.
data DisksCreateSnapshot =
  DisksCreateSnapshot'
    { _dcsGuestFlush :: !(Maybe Bool)
    , _dcsRequestId :: !(Maybe Text)
    , _dcsProject :: !Text
    , _dcsDisk :: !Text
    , _dcsZone :: !Text
    , _dcsPayload :: !Snapshot
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksCreateSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsGuestFlush'
--
-- * 'dcsRequestId'
--
-- * 'dcsProject'
--
-- * 'dcsDisk'
--
-- * 'dcsZone'
--
-- * 'dcsPayload'
disksCreateSnapshot
    :: Text -- ^ 'dcsProject'
    -> Text -- ^ 'dcsDisk'
    -> Text -- ^ 'dcsZone'
    -> Snapshot -- ^ 'dcsPayload'
    -> DisksCreateSnapshot
disksCreateSnapshot pDcsProject_ pDcsDisk_ pDcsZone_ pDcsPayload_ =
  DisksCreateSnapshot'
    { _dcsGuestFlush = Nothing
    , _dcsRequestId = Nothing
    , _dcsProject = pDcsProject_
    , _dcsDisk = pDcsDisk_
    , _dcsZone = pDcsZone_
    , _dcsPayload = pDcsPayload_
    }


-- | [Input Only] Whether to attempt an application consistent snapshot by
-- informing the OS to prepare for the snapshot process. Currently only
-- supported on Windows instances using the Volume Shadow Copy Service
-- (VSS).
dcsGuestFlush :: Lens' DisksCreateSnapshot (Maybe Bool)
dcsGuestFlush
  = lens _dcsGuestFlush
      (\ s a -> s{_dcsGuestFlush = a})

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
dcsRequestId :: Lens' DisksCreateSnapshot (Maybe Text)
dcsRequestId
  = lens _dcsRequestId (\ s a -> s{_dcsRequestId = a})

-- | Project ID for this request.
dcsProject :: Lens' DisksCreateSnapshot Text
dcsProject
  = lens _dcsProject (\ s a -> s{_dcsProject = a})

-- | Name of the persistent disk to snapshot.
dcsDisk :: Lens' DisksCreateSnapshot Text
dcsDisk = lens _dcsDisk (\ s a -> s{_dcsDisk = a})

-- | The name of the zone for this request.
dcsZone :: Lens' DisksCreateSnapshot Text
dcsZone = lens _dcsZone (\ s a -> s{_dcsZone = a})

-- | Multipart request metadata.
dcsPayload :: Lens' DisksCreateSnapshot Snapshot
dcsPayload
  = lens _dcsPayload (\ s a -> s{_dcsPayload = a})

instance GoogleRequest DisksCreateSnapshot where
        type Rs DisksCreateSnapshot = Operation
        type Scopes DisksCreateSnapshot =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient DisksCreateSnapshot'{..}
          = go _dcsProject _dcsZone _dcsDisk _dcsGuestFlush
              _dcsRequestId
              (Just AltJSON)
              _dcsPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DisksCreateSnapshotResource)
                      mempty
