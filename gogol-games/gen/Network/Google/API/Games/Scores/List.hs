{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Scores.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.scores.list@.
module Network.Google.API.Games.Scores.List
    (
    -- * REST Resource
      ScoresListAPI

    -- * Creating a Request
    , scoresList'
    , ScoresList'

    -- * Request Lenses
    , scoQuotaUser
    , scoPrettyPrint
    , scoUserIp
    , scoCollection
    , scoTimeSpan
    , scoLeaderboardId
    , scoKey
    , scoLanguage
    , scoPageToken
    , scoOauthToken
    , scoMaxResults
    , scoFields
    , scoAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.scores.list which the
-- 'ScoresList'' request conforms to.
type ScoresListAPI =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           Capture "collection" ScoresList'Collection :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "timeSpan" ScoresList'TimeSpan :>
                     QueryParam "key" Text :>
                       QueryParam "language" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Nat :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Get '[JSON] LeaderboardScores

-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ 'scoresList'' smart constructor.
data ScoresList' = ScoresList'
    { _scoQuotaUser     :: !(Maybe Text)
    , _scoPrettyPrint   :: !Bool
    , _scoUserIp        :: !(Maybe Text)
    , _scoCollection    :: !ScoresList'Collection
    , _scoTimeSpan      :: !ScoresList'TimeSpan
    , _scoLeaderboardId :: !Text
    , _scoKey           :: !(Maybe Text)
    , _scoLanguage      :: !(Maybe Text)
    , _scoPageToken     :: !(Maybe Text)
    , _scoOauthToken    :: !(Maybe Text)
    , _scoMaxResults    :: !(Maybe Nat)
    , _scoFields        :: !(Maybe Text)
    , _scoAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scoQuotaUser'
--
-- * 'scoPrettyPrint'
--
-- * 'scoUserIp'
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
-- * 'scoOauthToken'
--
-- * 'scoMaxResults'
--
-- * 'scoFields'
--
-- * 'scoAlt'
scoresList'
    :: ScoresList'Collection -- ^ 'collection'
    -> ScoresList'TimeSpan -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> ScoresList'
scoresList' pScoCollection_ pScoTimeSpan_ pScoLeaderboardId_ =
    ScoresList'
    { _scoQuotaUser = Nothing
    , _scoPrettyPrint = True
    , _scoUserIp = Nothing
    , _scoCollection = pScoCollection_
    , _scoTimeSpan = pScoTimeSpan_
    , _scoLeaderboardId = pScoLeaderboardId_
    , _scoKey = Nothing
    , _scoLanguage = Nothing
    , _scoPageToken = Nothing
    , _scoOauthToken = Nothing
    , _scoMaxResults = Nothing
    , _scoFields = Nothing
    , _scoAlt = JSON
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
scoUserIp :: Lens' ScoresList' (Maybe Text)
scoUserIp
  = lens _scoUserIp (\ s a -> s{_scoUserIp = a})

-- | The collection of scores you\'re requesting.
scoCollection :: Lens' ScoresList' ScoresList'Collection
scoCollection
  = lens _scoCollection
      (\ s a -> s{_scoCollection = a})

-- | The time span for the scores and ranks you\'re requesting.
scoTimeSpan :: Lens' ScoresList' ScoresList'TimeSpan
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
scoKey :: Lens' ScoresList' (Maybe Text)
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
scoOauthToken :: Lens' ScoresList' (Maybe Text)
scoOauthToken
  = lens _scoOauthToken
      (\ s a -> s{_scoOauthToken = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
scoMaxResults :: Lens' ScoresList' (Maybe Natural)
scoMaxResults
  = lens _scoMaxResults
      (\ s a -> s{_scoMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
scoFields :: Lens' ScoresList' (Maybe Text)
scoFields
  = lens _scoFields (\ s a -> s{_scoFields = a})

-- | Data format for the response.
scoAlt :: Lens' ScoresList' Alt
scoAlt = lens _scoAlt (\ s a -> s{_scoAlt = a})

instance GoogleRequest ScoresList' where
        type Rs ScoresList' = LeaderboardScores
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresList'{..}
          = go _scoQuotaUser (Just _scoPrettyPrint) _scoUserIp
              _scoCollection
              (Just _scoTimeSpan)
              _scoLeaderboardId
              _scoKey
              _scoLanguage
              _scoPageToken
              _scoOauthToken
              _scoMaxResults
              _scoFields
              (Just _scoAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ScoresListAPI) r u
