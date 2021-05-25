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
-- corresponding snapshot. For more information, see Deleting snapshots.
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
    , sddRequestId
    , sddSnapshot
    , sddProject
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

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
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Snapshot resource. Keep in mind that deleting a
-- single snapshot might not necessarily delete all the data on that
-- snapshot. If any data on the snapshot that is marked for deletion is
-- needed for subsequent snapshots, the data will be moved to the next
-- corresponding snapshot. For more information, see Deleting snapshots.
--
-- /See:/ 'snapshotsDelete' smart constructor.
data SnapshotsDelete =
  SnapshotsDelete'
    { _sddRequestId :: !(Maybe Text)
    , _sddSnapshot :: !Text
    , _sddProject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sddRequestId'
--
-- * 'sddSnapshot'
--
-- * 'sddProject'
snapshotsDelete
    :: Text -- ^ 'sddSnapshot'
    -> Text -- ^ 'sddProject'
    -> SnapshotsDelete
snapshotsDelete pSddSnapshot_ pSddProject_ =
  SnapshotsDelete'
    { _sddRequestId = Nothing
    , _sddSnapshot = pSddSnapshot_
    , _sddProject = pSddProject_
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
sddRequestId :: Lens' SnapshotsDelete (Maybe Text)
sddRequestId
  = lens _sddRequestId (\ s a -> s{_sddRequestId = a})

-- | Name of the Snapshot resource to delete.
sddSnapshot :: Lens' SnapshotsDelete Text
sddSnapshot
  = lens _sddSnapshot (\ s a -> s{_sddSnapshot = a})

-- | Project ID for this request.
sddProject :: Lens' SnapshotsDelete Text
sddProject
  = lens _sddProject (\ s a -> s{_sddProject = a})

instance GoogleRequest SnapshotsDelete where
        type Rs SnapshotsDelete = Operation
        type Scopes SnapshotsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SnapshotsDelete'{..}
          = go _sddProject _sddSnapshot _sddRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SnapshotsDeleteResource)
                      mempty
