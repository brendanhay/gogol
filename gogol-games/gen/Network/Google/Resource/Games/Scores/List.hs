{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Scores.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesScoresList@.
module Network.Google.Resource.Games.Scores.List
    (
    -- * REST Resource
      ScoresListResource

    -- * Creating a Request
    , scoresList'
    , ScoresList'

    -- * Request Lenses
    , scoQuotaUser
    , scoPrettyPrint
    , scoUserIP
    , scoCollection
    , scoTimeSpan
    , scoLeaderboardId
    , scoKey
    , scoLanguage
    , scoPageToken
    , scoOAuthToken
    , scoMaxResults
    , scoFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresList@ which the
-- 'ScoresList'' request conforms to.
type ScoresListResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           Capture "collection" GamesScoresListCollection :>
             QueryParam "timeSpan" TimeSpan :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] LeaderboardScores

-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ 'scoresList'' smart constructor.
data ScoresList' = ScoresList'
    { _scoQuotaUser     :: !(Maybe Text)
    , _scoPrettyPrint   :: !Bool
    , _scoUserIP        :: !(Maybe Text)
    , _scoCollection    :: !GamesScoresListCollection
    , _scoTimeSpan      :: !TimeSpan
    , _scoLeaderboardId :: !Text
    , _scoKey           :: !(Maybe Key)
    , _scoLanguage      :: !(Maybe Text)
    , _scoPageToken     :: !(Maybe Text)
    , _scoOAuthToken    :: !(Maybe OAuthToken)
    , _scoMaxResults    :: !(Maybe Int32)
    , _scoFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scoQuotaUser'
--
-- * 'scoPrettyPrint'
--
-- * 'scoUserIP'
--
-- * 'scoCollection'
--
-- * 'scoTimeSpan'
--
-- * 'scoLeaderboardId'
--
-- * 'scoKey'
--
-- * 'scoLanguage'
--
-- * 'scoPageToken'
--
-- * 'scoOAuthToken'
--
-- * 'scoMaxResults'
--
-- * 'scoFields'
scoresList'
    :: GamesScoresListCollection -- ^ 'collection'
    -> TimeSpan -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> ScoresList'
scoresList' pScoCollection_ pScoTimeSpan_ pScoLeaderboardId_ =
    ScoresList'
    { _scoQuotaUser = Nothing
    , _scoPrettyPrint = True
    , _scoUserIP = Nothing
    , _scoCollection = pScoCollection_
    , _scoTimeSpan = pScoTimeSpan_
    , _scoLeaderboardId = pScoLeaderboardId_
    , _scoKey = Nothing
    , _scoLanguage = Nothing
    , _scoPageToken = Nothing
    , _scoOAuthToken = Nothing
    , _scoMaxResults = Nothing
    , _scoFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scoQuotaUser :: Lens' ScoresList' (Maybe Text)
scoQuotaUser
  = lens _scoQuotaUser (\ s a -> s{_scoQuotaUser = a})

-- | Returns response with indentations and line breaks.
scoPrettyPrint :: Lens' ScoresList' Bool
scoPrettyPrint
  = lens _scoPrettyPrint
      (\ s a -> s{_scoPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scoUserIP :: Lens' ScoresList' (Maybe Text)
scoUserIP
  = lens _scoUserIP (\ s a -> s{_scoUserIP = a})

-- | The collection of scores you\'re requesting.
scoCollection :: Lens' ScoresList' GamesScoresListCollection
scoCollection
  = lens _scoCollection
      (\ s a -> s{_scoCollection = a})

-- | The time span for the scores and ranks you\'re requesting.
scoTimeSpan :: Lens' ScoresList' TimeSpan
scoTimeSpan
  = lens _scoTimeSpan (\ s a -> s{_scoTimeSpan = a})

-- | The ID of the leaderboard.
scoLeaderboardId :: Lens' ScoresList' Text
scoLeaderboardId
  = lens _scoLeaderboardId
      (\ s a -> s{_scoLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scoKey :: Lens' ScoresList' (Maybe Key)
scoKey = lens _scoKey (\ s a -> s{_scoKey = a})

-- | The preferred language to use for strings returned by this method.
scoLanguage :: Lens' ScoresList' (Maybe Text)
scoLanguage
  = lens _scoLanguage (\ s a -> s{_scoLanguage = a})

-- | The token returned by the previous request.
scoPageToken :: Lens' ScoresList' (Maybe Text)
scoPageToken
  = lens _scoPageToken (\ s a -> s{_scoPageToken = a})

-- | OAuth 2.0 token for the current user.
scoOAuthToken :: Lens' ScoresList' (Maybe OAuthToken)
scoOAuthToken
  = lens _scoOAuthToken
      (\ s a -> s{_scoOAuthToken = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
scoMaxResults :: Lens' ScoresList' (Maybe Int32)
scoMaxResults
  = lens _scoMaxResults
      (\ s a -> s{_scoMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
scoFields :: Lens' ScoresList' (Maybe Text)
scoFields
  = lens _scoFields (\ s a -> s{_scoFields = a})

instance GoogleAuth ScoresList' where
        authKey = scoKey . _Just
        authToken = scoOAuthToken . _Just

instance GoogleRequest ScoresList' where
        type Rs ScoresList' = LeaderboardScores
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresList'{..}
          = go _scoLeaderboardId _scoCollection
              (Just _scoTimeSpan)
              _scoLanguage
              _scoPageToken
              _scoMaxResults
              _scoQuotaUser
              (Just _scoPrettyPrint)
              _scoUserIP
              _scoFields
              _scoKey
              _scoOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ScoresListResource)
                      r
                      u
