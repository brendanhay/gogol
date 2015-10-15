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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Sync
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns turn-based matches the player is or was involved in that changed
-- since the last sync call, with the least recent changes coming first.
-- Matches that should be removed from the local cache will have a status
-- of MATCH_DELETED.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesSync@.
module Network.Google.Resource.Games.TurnBasedMatches.Sync
    (
    -- * REST Resource
      TurnBasedMatchesSyncResource

    -- * Creating a Request
    , turnBasedMatchesSync'
    , TurnBasedMatchesSync'

    -- * Request Lenses
    , tbmsMaxCompletedMatches
    , tbmsIncludeMatchData
    , tbmsLanguage
    , tbmsPageToken
    , tbmsMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesSync@ method which the
-- 'TurnBasedMatchesSync'' request conforms to.
type TurnBasedMatchesSyncResource =
     "turnbasedmatches" :>
       "sync" :>
         QueryParam "maxCompletedMatches" Int32 :>
           QueryParam "includeMatchData" Bool :>
             QueryParam "language" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TurnBasedMatchSync

-- | Returns turn-based matches the player is or was involved in that changed
-- since the last sync call, with the least recent changes coming first.
-- Matches that should be removed from the local cache will have a status
-- of MATCH_DELETED.
--
-- /See:/ 'turnBasedMatchesSync'' smart constructor.
data TurnBasedMatchesSync' = TurnBasedMatchesSync'
    { _tbmsMaxCompletedMatches :: !(Maybe Int32)
    , _tbmsIncludeMatchData    :: !(Maybe Bool)
    , _tbmsLanguage            :: !(Maybe Text)
    , _tbmsPageToken           :: !(Maybe Text)
    , _tbmsMaxResults          :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesSync'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmsMaxCompletedMatches'
--
-- * 'tbmsIncludeMatchData'
--
-- * 'tbmsLanguage'
--
-- * 'tbmsPageToken'
--
-- * 'tbmsMaxResults'
turnBasedMatchesSync'
    :: TurnBasedMatchesSync'
turnBasedMatchesSync' =
    TurnBasedMatchesSync'
    { _tbmsMaxCompletedMatches = Nothing
    , _tbmsIncludeMatchData = Nothing
    , _tbmsLanguage = Nothing
    , _tbmsPageToken = Nothing
    , _tbmsMaxResults = Nothing
    }

-- | The maximum number of completed or canceled matches to return in the
-- response. If not set, all matches returned could be completed or
-- canceled.
tbmsMaxCompletedMatches :: Lens' TurnBasedMatchesSync' (Maybe Int32)
tbmsMaxCompletedMatches
  = lens _tbmsMaxCompletedMatches
      (\ s a -> s{_tbmsMaxCompletedMatches = a})

-- | True if match data should be returned in the response. Note that not all
-- data will necessarily be returned if include_match_data is true; the
-- server may decide to only return data for some of the matches to limit
-- download size for the client. The remainder of the data for these
-- matches will be retrievable on request.
tbmsIncludeMatchData :: Lens' TurnBasedMatchesSync' (Maybe Bool)
tbmsIncludeMatchData
  = lens _tbmsIncludeMatchData
      (\ s a -> s{_tbmsIncludeMatchData = a})

-- | The preferred language to use for strings returned by this method.
tbmsLanguage :: Lens' TurnBasedMatchesSync' (Maybe Text)
tbmsLanguage
  = lens _tbmsLanguage (\ s a -> s{_tbmsLanguage = a})

-- | The token returned by the previous request.
tbmsPageToken :: Lens' TurnBasedMatchesSync' (Maybe Text)
tbmsPageToken
  = lens _tbmsPageToken
      (\ s a -> s{_tbmsPageToken = a})

-- | The maximum number of matches to return in the response, used for
-- paging. For any response, the actual number of matches to return may be
-- less than the specified maxResults.
tbmsMaxResults :: Lens' TurnBasedMatchesSync' (Maybe Int32)
tbmsMaxResults
  = lens _tbmsMaxResults
      (\ s a -> s{_tbmsMaxResults = a})

instance GoogleRequest TurnBasedMatchesSync' where
        type Rs TurnBasedMatchesSync' = TurnBasedMatchSync
        requestClient TurnBasedMatchesSync'{..}
          = go _tbmsMaxCompletedMatches _tbmsIncludeMatchData
              _tbmsLanguage
              _tbmsPageToken
              _tbmsMaxResults
              (Just AltJSON)
              games
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesSyncResource)
                      mempty
