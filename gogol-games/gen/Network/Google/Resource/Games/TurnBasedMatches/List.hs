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
-- Copyright   : (c) 2015 Brendan Hay
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
    , tMaxCompletedMatches
    , tIncludeMatchData
    , tLanguage
    , tPageToken
    , tMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.list@ method which the
-- 'TurnBasedMatchesList' request conforms to.
type TurnBasedMatchesListResource =
     "games" :>
       "v1" :>
         "turnbasedmatches" :>
           QueryParam "maxCompletedMatches" (JSONText Int32) :>
             QueryParam "includeMatchData" Bool :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (JSONText Int32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] TurnBasedMatchList

-- | Returns turn-based matches the player is or was involved in.
--
-- /See:/ 'turnBasedMatchesList' smart constructor.
data TurnBasedMatchesList = TurnBasedMatchesList
    { _tMaxCompletedMatches :: !(Maybe (JSONText Int32))
    , _tIncludeMatchData    :: !(Maybe Bool)
    , _tLanguage            :: !(Maybe Text)
    , _tPageToken           :: !(Maybe Text)
    , _tMaxResults          :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tMaxCompletedMatches'
--
-- * 'tIncludeMatchData'
--
-- * 'tLanguage'
--
-- * 'tPageToken'
--
-- * 'tMaxResults'
turnBasedMatchesList
    :: TurnBasedMatchesList
turnBasedMatchesList =
    TurnBasedMatchesList
    { _tMaxCompletedMatches = Nothing
    , _tIncludeMatchData = Nothing
    , _tLanguage = Nothing
    , _tPageToken = Nothing
    , _tMaxResults = Nothing
    }

-- | The maximum number of completed or canceled matches to return in the
-- response. If not set, all matches returned could be completed or
-- canceled.
tMaxCompletedMatches :: Lens' TurnBasedMatchesList (Maybe Int32)
tMaxCompletedMatches
  = lens _tMaxCompletedMatches
      (\ s a -> s{_tMaxCompletedMatches = a})
      . mapping _Coerce

-- | True if match data should be returned in the response. Note that not all
-- data will necessarily be returned if include_match_data is true; the
-- server may decide to only return data for some of the matches to limit
-- download size for the client. The remainder of the data for these
-- matches will be retrievable on request.
tIncludeMatchData :: Lens' TurnBasedMatchesList (Maybe Bool)
tIncludeMatchData
  = lens _tIncludeMatchData
      (\ s a -> s{_tIncludeMatchData = a})

-- | The preferred language to use for strings returned by this method.
tLanguage :: Lens' TurnBasedMatchesList (Maybe Text)
tLanguage
  = lens _tLanguage (\ s a -> s{_tLanguage = a})

-- | The token returned by the previous request.
tPageToken :: Lens' TurnBasedMatchesList (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | The maximum number of matches to return in the response, used for
-- paging. For any response, the actual number of matches to return may be
-- less than the specified maxResults.
tMaxResults :: Lens' TurnBasedMatchesList (Maybe Int32)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a}) .
      mapping _Coerce

instance GoogleRequest TurnBasedMatchesList where
        type Rs TurnBasedMatchesList = TurnBasedMatchList
        requestClient TurnBasedMatchesList{..}
          = go _tMaxCompletedMatches _tIncludeMatchData
              _tLanguage
              _tPageToken
              _tMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesListResource)
                      mempty
