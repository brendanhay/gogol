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
    , dcsProject
    , dcsDisk
    , dcsZone
    , dcsPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Snapshot :> Post '[JSON] Operation

-- | Creates a snapshot of a specified persistent disk.
--
-- /See:/ 'disksCreateSnapshot' smart constructor.
data DisksCreateSnapshot = DisksCreateSnapshot
    { _dcsProject :: !Text
    , _dcsDisk    :: !Text
    , _dcsZone    :: !Text
    , _dcsPayload :: !Snapshot
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksCreateSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    DisksCreateSnapshot
    { _dcsProject = pDcsProject_
    , _dcsDisk = pDcsDisk_
    , _dcsZone = pDcsZone_
    , _dcsPayload = pDcsPayload_
    }

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
        requestClient DisksCreateSnapshot{..}
          = go _dcsProject _dcsZone _dcsDisk (Just AltJSON)
              _dcsPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DisksCreateSnapshotResource)
                      mempty
