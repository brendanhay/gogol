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
-- Module      : Network.Google.Resource.Games.Snapshots.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of snapshots created by your application for the player
-- corresponding to the player ID.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.snapshots.list@.
module Network.Google.Resource.Games.Snapshots.List
    (
    -- * REST Resource
      SnapshotsListResource

    -- * Creating a Request
    , snapshotsList
    , SnapshotsList

    -- * Request Lenses
    , slLanguage
    , slPageToken
    , slPlayerId
    , slMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.snapshots.list@ method which the
-- 'SnapshotsList' request conforms to.
type SnapshotsListResource =
     "games" :>
       "v1" :>
         "players" :>
           Capture "playerId" Text :>
             "snapshots" :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Int32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] SnapshotListResponse

-- | Retrieves a list of snapshots created by your application for the player
-- corresponding to the player ID.
--
-- /See:/ 'snapshotsList' smart constructor.
data SnapshotsList =
  SnapshotsList'
    { _slLanguage   :: !(Maybe Text)
    , _slPageToken  :: !(Maybe Text)
    , _slPlayerId   :: !Text
    , _slMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slLanguage'
--
-- * 'slPageToken'
--
-- * 'slPlayerId'
--
-- * 'slMaxResults'
snapshotsList
    :: Text -- ^ 'slPlayerId'
    -> SnapshotsList
snapshotsList pSlPlayerId_ =
  SnapshotsList'
    { _slLanguage = Nothing
    , _slPageToken = Nothing
    , _slPlayerId = pSlPlayerId_
    , _slMaxResults = Nothing
    }


-- | The preferred language to use for strings returned by this method.
slLanguage :: Lens' SnapshotsList (Maybe Text)
slLanguage
  = lens _slLanguage (\ s a -> s{_slLanguage = a})

-- | The token returned by the previous request.
slPageToken :: Lens' SnapshotsList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
slPlayerId :: Lens' SnapshotsList Text
slPlayerId
  = lens _slPlayerId (\ s a -> s{_slPlayerId = a})

-- | The maximum number of snapshot resources to return in the response, used
-- for paging. For any response, the actual number of snapshot resources
-- returned may be less than the specified maxResults.
slMaxResults :: Lens' SnapshotsList (Maybe Int32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Coerce

instance GoogleRequest SnapshotsList where
        type Rs SnapshotsList = SnapshotListResponse
        type Scopes SnapshotsList =
             '["https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient SnapshotsList'{..}
          = go _slPlayerId _slLanguage _slPageToken
              _slMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy SnapshotsListResource)
                      mempty
