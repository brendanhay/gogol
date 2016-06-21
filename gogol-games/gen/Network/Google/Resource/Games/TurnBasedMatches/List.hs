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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns turn-based matches the player is or was involved in.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.list@.
module Network.Google.Resource.Games.TurnBasedMatches.List
    (
    -- * REST Resource
      TurnBasedMatchesListResource

    -- * Creating a Request
    , turnBasedMatchesList
    , TurnBasedMatchesList

    -- * Request Lenses
    , turMaxCompletedMatches
    , turConsistencyToken
    , turIncludeMatchData
    , turLanguage
    , turPageToken
    , turMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.list@ method which the
-- 'TurnBasedMatchesList' request conforms to.
type TurnBasedMatchesListResource =
     "games" :>
       "v1" :>
         "turnbasedmatches" :>
           QueryParam "maxCompletedMatches" (Textual Int32) :>
             QueryParam "consistencyToken" (Textual Int64) :>
               QueryParam "includeMatchData" Bool :>
                 QueryParam "language" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] TurnBasedMatchList

-- | Returns turn-based matches the player is or was involved in.
--
-- /See:/ 'turnBasedMatchesList' smart constructor.
data TurnBasedMatchesList = TurnBasedMatchesList'
    { _turMaxCompletedMatches :: !(Maybe (Textual Int32))
    , _turConsistencyToken    :: !(Maybe (Textual Int64))
    , _turIncludeMatchData    :: !(Maybe Bool)
    , _turLanguage            :: !(Maybe Text)
    , _turPageToken           :: !(Maybe Text)
    , _turMaxResults          :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'turMaxCompletedMatches'
--
-- * 'turConsistencyToken'
--
-- * 'turIncludeMatchData'
--
-- * 'turLanguage'
--
-- * 'turPageToken'
--
-- * 'turMaxResults'
turnBasedMatchesList
    :: TurnBasedMatchesList
turnBasedMatchesList =
    TurnBasedMatchesList'
    { _turMaxCompletedMatches = Nothing
    , _turConsistencyToken = Nothing
    , _turIncludeMatchData = Nothing
    , _turLanguage = Nothing
    , _turPageToken = Nothing
    , _turMaxResults = Nothing
    }

-- | The maximum number of completed or canceled matches to return in the
-- response. If not set, all matches returned could be completed or
-- canceled.
turMaxCompletedMatches :: Lens' TurnBasedMatchesList (Maybe Int32)
turMaxCompletedMatches
  = lens _turMaxCompletedMatches
      (\ s a -> s{_turMaxCompletedMatches = a})
      . mapping _Coerce

-- | The last-seen mutation timestamp.
turConsistencyToken :: Lens' TurnBasedMatchesList (Maybe Int64)
turConsistencyToken
  = lens _turConsistencyToken
      (\ s a -> s{_turConsistencyToken = a})
      . mapping _Coerce

-- | True if match data should be returned in the response. Note that not all
-- data will necessarily be returned if include_match_data is true; the
-- server may decide to only return data for some of the matches to limit
-- download size for the client. The remainder of the data for these
-- matches will be retrievable on request.
turIncludeMatchData :: Lens' TurnBasedMatchesList (Maybe Bool)
turIncludeMatchData
  = lens _turIncludeMatchData
      (\ s a -> s{_turIncludeMatchData = a})

-- | The preferred language to use for strings returned by this method.
turLanguage :: Lens' TurnBasedMatchesList (Maybe Text)
turLanguage
  = lens _turLanguage (\ s a -> s{_turLanguage = a})

-- | The token returned by the previous request.
turPageToken :: Lens' TurnBasedMatchesList (Maybe Text)
turPageToken
  = lens _turPageToken (\ s a -> s{_turPageToken = a})

-- | The maximum number of matches to return in the response, used for
-- paging. For any response, the actual number of matches to return may be
-- less than the specified maxResults.
turMaxResults :: Lens' TurnBasedMatchesList (Maybe Int32)
turMaxResults
  = lens _turMaxResults
      (\ s a -> s{_turMaxResults = a})
      . mapping _Coerce

instance GoogleRequest TurnBasedMatchesList where
        type Rs TurnBasedMatchesList = TurnBasedMatchList
        type Scopes TurnBasedMatchesList =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient TurnBasedMatchesList'{..}
          = go _turMaxCompletedMatches _turConsistencyToken
              _turIncludeMatchData
              _turLanguage
              _turPageToken
              _turMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesListResource)
                      mempty
