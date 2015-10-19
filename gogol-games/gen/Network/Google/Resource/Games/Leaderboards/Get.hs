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
-- Module      : Network.Google.Resource.Games.Leaderboards.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesLeaderboardsGet@.
module Network.Google.Resource.Games.Leaderboards.Get
    (
    -- * REST Resource
      LeaderboardsGetResource

    -- * Creating a Request
    , leaderboardsGet'
    , LeaderboardsGet'

    -- * Request Lenses
    , lgLeaderboardId
    , lgLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesLeaderboardsGet@ method which the
-- 'LeaderboardsGet'' request conforms to.
type LeaderboardsGetResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "language" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Leaderboard

-- | Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ 'leaderboardsGet'' smart constructor.
data LeaderboardsGet' = LeaderboardsGet'
    { _lgLeaderboardId :: !Text
    , _lgLanguage      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgLeaderboardId'
--
-- * 'lgLanguage'
leaderboardsGet'
    :: Text -- ^ 'leaderboardId'
    -> LeaderboardsGet'
leaderboardsGet' pLgLeaderboardId_ =
    LeaderboardsGet'
    { _lgLeaderboardId = pLgLeaderboardId_
    , _lgLanguage = Nothing
    }

-- | The ID of the leaderboard.
lgLeaderboardId :: Lens' LeaderboardsGet' Text
lgLeaderboardId
  = lens _lgLeaderboardId
      (\ s a -> s{_lgLeaderboardId = a})

-- | The preferred language to use for strings returned by this method.
lgLanguage :: Lens' LeaderboardsGet' (Maybe Text)
lgLanguage
  = lens _lgLanguage (\ s a -> s{_lgLanguage = a})

instance GoogleRequest LeaderboardsGet' where
        type Rs LeaderboardsGet' = Leaderboard
        requestClient LeaderboardsGet'{..}
          = go _lgLeaderboardId _lgLanguage (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy LeaderboardsGetResource)
                      mempty
