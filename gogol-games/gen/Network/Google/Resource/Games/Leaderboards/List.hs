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
-- Module      : Network.Google.Resource.Games.Leaderboards.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the leaderboard metadata for your application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.leaderboards.list@.
module Network.Google.Resource.Games.Leaderboards.List
    (
    -- * REST Resource
      LeaderboardsListResource

    -- * Creating a Request
    , leaderboardsList
    , LeaderboardsList

    -- * Request Lenses
    , llLanguage
    , llPageToken
    , llMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.leaderboards.list@ method which the
-- 'LeaderboardsList' request conforms to.
type LeaderboardsListResource =
     "games" :>
       "v1" :>
         "leaderboards" :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (Textual Int32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] LeaderboardListResponse

-- | Lists all the leaderboard metadata for your application.
--
-- /See:/ 'leaderboardsList' smart constructor.
data LeaderboardsList = LeaderboardsList
    { _llLanguage   :: !(Maybe Text)
    , _llPageToken  :: !(Maybe Text)
    , _llMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLanguage'
--
-- * 'llPageToken'
--
-- * 'llMaxResults'
leaderboardsList
    :: LeaderboardsList
leaderboardsList =
    LeaderboardsList
    { _llLanguage = Nothing
    , _llPageToken = Nothing
    , _llMaxResults = Nothing
    }

-- | The preferred language to use for strings returned by this method.
llLanguage :: Lens' LeaderboardsList (Maybe Text)
llLanguage
  = lens _llLanguage (\ s a -> s{_llLanguage = a})

-- | The token returned by the previous request.
llPageToken :: Lens' LeaderboardsList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | The maximum number of leaderboards to return in the response. For any
-- response, the actual number of leaderboards returned may be less than
-- the specified maxResults.
llMaxResults :: Lens' LeaderboardsList (Maybe Int32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})
      . mapping _Coerce

instance GoogleRequest LeaderboardsList where
        type Rs LeaderboardsList = LeaderboardListResponse
        requestClient LeaderboardsList{..}
          = go _llLanguage _llPageToken _llMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy LeaderboardsListResource)
                      mempty
