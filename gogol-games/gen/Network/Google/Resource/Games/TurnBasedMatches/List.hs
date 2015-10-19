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
    , turnBasedMatchesList'
    , TurnBasedMatchesList'

    -- * Request Lenses
    , tbmlMaxCompletedMatches
    , tbmlIncludeMatchData
    , tbmlLanguage
    , tbmlPageToken
    , tbmlMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.list@ method which the
-- 'TurnBasedMatchesList'' request conforms to.
type TurnBasedMatchesListResource =
     "turnbasedmatches" :>
       QueryParam "maxCompletedMatches" Int32 :>
         QueryParam "includeMatchData" Bool :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] TurnBasedMatchList

-- | Returns turn-based matches the player is or was involved in.
--
-- /See:/ 'turnBasedMatchesList'' smart constructor.
data TurnBasedMatchesList' = TurnBasedMatchesList'
    { _tbmlMaxCompletedMatches :: !(Maybe Int32)
    , _tbmlIncludeMatchData    :: !(Maybe Bool)
    , _tbmlLanguage            :: !(Maybe Text)
    , _tbmlPageToken           :: !(Maybe Text)
    , _tbmlMaxResults          :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmlMaxCompletedMatches'
--
-- * 'tbmlIncludeMatchData'
--
-- * 'tbmlLanguage'
--
-- * 'tbmlPageToken'
--
-- * 'tbmlMaxResults'
turnBasedMatchesList'
    :: TurnBasedMatchesList'
turnBasedMatchesList' =
    TurnBasedMatchesList'
    { _tbmlMaxCompletedMatches = Nothing
    , _tbmlIncludeMatchData = Nothing
    , _tbmlLanguage = Nothing
    , _tbmlPageToken = Nothing
    , _tbmlMaxResults = Nothing
    }

-- | The maximum number of completed or canceled matches to return in the
-- response. If not set, all matches returned could be completed or
-- canceled.
tbmlMaxCompletedMatches :: Lens' TurnBasedMatchesList' (Maybe Int32)
tbmlMaxCompletedMatches
  = lens _tbmlMaxCompletedMatches
      (\ s a -> s{_tbmlMaxCompletedMatches = a})

-- | True if match data should be returned in the response. Note that not all
-- data will necessarily be returned if include_match_data is true; the
-- server may decide to only return data for some of the matches to limit
-- download size for the client. The remainder of the data for these
-- matches will be retrievable on request.
tbmlIncludeMatchData :: Lens' TurnBasedMatchesList' (Maybe Bool)
tbmlIncludeMatchData
  = lens _tbmlIncludeMatchData
      (\ s a -> s{_tbmlIncludeMatchData = a})

-- | The preferred language to use for strings returned by this method.
tbmlLanguage :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlLanguage
  = lens _tbmlLanguage (\ s a -> s{_tbmlLanguage = a})

-- | The token returned by the previous request.
tbmlPageToken :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlPageToken
  = lens _tbmlPageToken
      (\ s a -> s{_tbmlPageToken = a})

-- | The maximum number of matches to return in the response, used for
-- paging. For any response, the actual number of matches to return may be
-- less than the specified maxResults.
tbmlMaxResults :: Lens' TurnBasedMatchesList' (Maybe Int32)
tbmlMaxResults
  = lens _tbmlMaxResults
      (\ s a -> s{_tbmlMaxResults = a})

instance GoogleRequest TurnBasedMatchesList' where
        type Rs TurnBasedMatchesList' = TurnBasedMatchList
        requestClient TurnBasedMatchesList'{..}
          = go _tbmlMaxCompletedMatches _tbmlIncludeMatchData
              _tbmlLanguage
              _tbmlPageToken
              _tbmlMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesListResource)
                      mempty
