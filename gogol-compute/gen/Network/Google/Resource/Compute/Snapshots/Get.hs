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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified Snapshot resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeSnapshotsGet@.
module Network.Google.Resource.Compute.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetResource

    -- * Creating a Request
    , snapshotsGet'
    , SnapshotsGet'

    -- * Request Lenses
    , sgSnapshot
    , sgProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeSnapshotsGet@ method which the
-- 'SnapshotsGet'' request conforms to.
type SnapshotsGetResource =
     Capture "project" Text :>
       "global" :>
         "snapshots" :>
           Capture "snapshot" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Returns the specified Snapshot resource.
--
-- /See:/ 'snapshotsGet'' smart constructor.
data SnapshotsGet' = SnapshotsGet'
    { _sgSnapshot :: !Text
    , _sgProject  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgSnapshot'
--
-- * 'sgProject'
snapshotsGet'
    :: Text -- ^ 'snapshot'
    -> Text -- ^ 'project'
    -> SnapshotsGet'
snapshotsGet' pSgSnapshot_ pSgProject_ =
    SnapshotsGet'
    { _sgSnapshot = pSgSnapshot_
    , _sgProject = pSgProject_
    }

-- | Name of the Snapshot resource to return.
sgSnapshot :: Lens' SnapshotsGet' Text
sgSnapshot
  = lens _sgSnapshot (\ s a -> s{_sgSnapshot = a})

-- | Name of the project scoping this request.
sgProject :: Lens' SnapshotsGet' Text
sgProject
  = lens _sgProject (\ s a -> s{_sgProject = a})

instance GoogleRequest SnapshotsGet' where
        type Rs SnapshotsGet' = Snapshot
        requestClient SnapshotsGet'{..}
          = go _sgProject _sgSnapshot (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy SnapshotsGetResource)
                      mempty
