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
-- Module      : Network.Google.Resource.Games.Snapshots.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata for a given snapshot ID.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.snapshots.get@.
module Network.Google.Resource.Games.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetResource

    -- * Creating a Request
    , snapshotsGet
    , SnapshotsGet

    -- * Request Lenses
    , sLanguage
    , sSnapshotId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.snapshots.get@ method which the
-- 'SnapshotsGet' request conforms to.
type SnapshotsGetResource =
     "games" :>
       "v1" :>
         "snapshots" :>
           Capture "snapshotId" Text :>
             QueryParam "language" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Retrieves the metadata for a given snapshot ID.
--
-- /See:/ 'snapshotsGet' smart constructor.
data SnapshotsGet = SnapshotsGet'
    { _sLanguage   :: !(Maybe Text)
    , _sSnapshotId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sLanguage'
--
-- * 'sSnapshotId'
snapshotsGet
    :: Text -- ^ 'sSnapshotId'
    -> SnapshotsGet
snapshotsGet pSSnapshotId_ =
    SnapshotsGet'
    { _sLanguage = Nothing
    , _sSnapshotId = pSSnapshotId_
    }

-- | The preferred language to use for strings returned by this method.
sLanguage :: Lens' SnapshotsGet (Maybe Text)
sLanguage
  = lens _sLanguage (\ s a -> s{_sLanguage = a})

-- | The ID of the snapshot.
sSnapshotId :: Lens' SnapshotsGet Text
sSnapshotId
  = lens _sSnapshotId (\ s a -> s{_sSnapshotId = a})

instance GoogleRequest SnapshotsGet where
        type Rs SnapshotsGet = Snapshot
        type Scopes SnapshotsGet =
             '["https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient SnapshotsGet'{..}
          = go _sSnapshotId _sLanguage (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy SnapshotsGetResource)
                      mempty
