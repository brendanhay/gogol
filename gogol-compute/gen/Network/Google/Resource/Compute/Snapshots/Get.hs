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
-- Module      : Network.Google.Resource.Compute.Snapshots.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified Snapshot resource. Get a list of available
-- snapshots by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.get@.
module Network.Google.Resource.Compute.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetResource

    -- * Creating a Request
    , snapshotsGet
    , SnapshotsGet

    -- * Request Lenses
    , sggSnapshot
    , sggProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.snapshots.get@ method which the
-- 'SnapshotsGet' request conforms to.
type SnapshotsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 Capture "snapshot" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Returns the specified Snapshot resource. Get a list of available
-- snapshots by making a list() request.
--
-- /See:/ 'snapshotsGet' smart constructor.
data SnapshotsGet = SnapshotsGet
    { _sggSnapshot :: !Text
    , _sggProject  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sggSnapshot'
--
-- * 'sggProject'
snapshotsGet
    :: Text -- ^ 'sggSnapshot'
    -> Text -- ^ 'sggProject'
    -> SnapshotsGet
snapshotsGet pSggSnapshot_ pSggProject_ =
    SnapshotsGet
    { _sggSnapshot = pSggSnapshot_
    , _sggProject = pSggProject_
    }

-- | Name of the Snapshot resource to return.
sggSnapshot :: Lens' SnapshotsGet Text
sggSnapshot
  = lens _sggSnapshot (\ s a -> s{_sggSnapshot = a})

-- | Project ID for this request.
sggProject :: Lens' SnapshotsGet Text
sggProject
  = lens _sggProject (\ s a -> s{_sggProject = a})

instance GoogleRequest SnapshotsGet where
        type Rs SnapshotsGet = Snapshot
        requestClient SnapshotsGet{..}
          = go _sggProject _sggSnapshot (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy SnapshotsGetResource)
                      mempty
