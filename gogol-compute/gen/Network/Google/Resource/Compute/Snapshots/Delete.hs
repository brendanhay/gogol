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
-- Module      : Network.Google.Resource.Compute.Snapshots.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Snapshot resource. Keep in mind that deleting a
-- single snapshot might not necessarily delete all the data on that
-- snapshot. If any data on the snapshot that is marked for deletion is
-- needed for subsequent snapshots, the data will be moved to the next
-- corresponding snapshot. For more information, see Deleting snaphots.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.delete@.
module Network.Google.Resource.Compute.Snapshots.Delete
    (
    -- * REST Resource
      SnapshotsDeleteResource

    -- * Creating a Request
    , snapshotsDelete
    , SnapshotsDelete

    -- * Request Lenses
    , snaSnapshot
    , snaProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.snapshots.delete@ method which the
-- 'SnapshotsDelete' request conforms to.
type SnapshotsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 Capture "snapshot" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Snapshot resource. Keep in mind that deleting a
-- single snapshot might not necessarily delete all the data on that
-- snapshot. If any data on the snapshot that is marked for deletion is
-- needed for subsequent snapshots, the data will be moved to the next
-- corresponding snapshot. For more information, see Deleting snaphots.
--
-- /See:/ 'snapshotsDelete' smart constructor.
data SnapshotsDelete = SnapshotsDelete
    { _snaSnapshot :: !Text
    , _snaProject  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snaSnapshot'
--
-- * 'snaProject'
snapshotsDelete
    :: Text -- ^ 'snaSnapshot'
    -> Text -- ^ 'snaProject'
    -> SnapshotsDelete
snapshotsDelete pSnaSnapshot_ pSnaProject_ =
    SnapshotsDelete
    { _snaSnapshot = pSnaSnapshot_
    , _snaProject = pSnaProject_
    }

-- | Name of the Snapshot resource to delete.
snaSnapshot :: Lens' SnapshotsDelete Text
snaSnapshot
  = lens _snaSnapshot (\ s a -> s{_snaSnapshot = a})

-- | Project ID for this request.
snaProject :: Lens' SnapshotsDelete Text
snaProject
  = lens _snaProject (\ s a -> s{_snaProject = a})

instance GoogleRequest SnapshotsDelete where
        type Rs SnapshotsDelete = Operation
        type Scopes SnapshotsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SnapshotsDelete{..}
          = go _snaProject _snaSnapshot (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SnapshotsDeleteResource)
                      mempty
