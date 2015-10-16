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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified Snapshot resource. Keep in mind that deleting a
-- single snapshot might not necessarily delete all the data on that
-- snapshot. If any data on the snapshot that is marked for deletion is
-- needed for subsequent snapshots, the data will be moved to the next
-- corresponding snapshot. For more information, see Deleting snaphots.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeSnapshotsDelete@.
module Network.Google.Resource.Compute.Snapshots.Delete
    (
    -- * REST Resource
      SnapshotsDeleteResource

    -- * Creating a Request
    , snapshotsDelete'
    , SnapshotsDelete'

    -- * Request Lenses
    , sdSnapshot
    , sdProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeSnapshotsDelete@ method which the
-- 'SnapshotsDelete'' request conforms to.
type SnapshotsDeleteResource =
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
-- /See:/ 'snapshotsDelete'' smart constructor.
data SnapshotsDelete' = SnapshotsDelete'
    { _sdSnapshot :: !Text
    , _sdProject  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdSnapshot'
--
-- * 'sdProject'
snapshotsDelete'
    :: Text -- ^ 'snapshot'
    -> Text -- ^ 'project'
    -> SnapshotsDelete'
snapshotsDelete' pSdSnapshot_ pSdProject_ =
    SnapshotsDelete'
    { _sdSnapshot = pSdSnapshot_
    , _sdProject = pSdProject_
    }

-- | Name of the Snapshot resource to delete.
sdSnapshot :: Lens' SnapshotsDelete' Text
sdSnapshot
  = lens _sdSnapshot (\ s a -> s{_sdSnapshot = a})

-- | Name of the project scoping this request.
sdProject :: Lens' SnapshotsDelete' Text
sdProject
  = lens _sdProject (\ s a -> s{_sdProject = a})

instance GoogleRequest SnapshotsDelete' where
        type Rs SnapshotsDelete' = Operation
        requestClient SnapshotsDelete'{..}
          = go _sdProject _sdSnapshot (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SnapshotsDeleteResource)
                      mempty
