{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    , sllQuotaUser
    , sllPrettyPrint
    , sllUserIP
    , sllCollection
    , sllTimeSpan
    , sllLeaderboardId
    , sllKey
    , sllLanguage
    , sllPageToken
    , sllOAuthToken
    , sllMaxResults
    , sllFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresList@ which the
-- 'ScoresList'' request conforms to.
type ScoresListResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           Capture "collection" ScoresListCollection :>
             QueryParam "timeSpan" ScoresListTimeSpan :>
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
    { _sllQuotaUser     :: !(Maybe Text)
    , _sllPrettyPrint   :: !Bool
    , _sllUserIP        :: !(Maybe Text)
    , _sllCollection    :: !ScoresListCollection
    , _sllTimeSpan      :: !ScoresListTimeSpan
    , _sllLeaderboardId :: !Text
    , _sllKey           :: !(Maybe Key)
    , _sllLanguage      :: !(Maybe Text)
    , _sllPageToken     :: !(Maybe Text)
    , _sllOAuthToken    :: !(Maybe OAuthToken)
    , _sllMaxResults    :: !(Maybe Int32)
    , _sllFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sllQuotaUser'
--
-- * 'sllPrettyPrint'
--
-- * 'sllUserIP'
--
-- * 'sllCollection'
--
-- * 'sllTimeSpan'
--
-- * 'sllLeaderboardId'
--
-- * 'sllKey'
--
-- * 'sllLanguage'
--
-- * 'sllPageToken'
--
-- * 'sllOAuthToken'
--
-- * 'sllMaxResults'
--
-- * 'sllFields'
scoresList'
    :: ScoresListCollection -- ^ 'collection'
    -> ScoresListTimeSpan -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> ScoresList'
scoresList' pSllCollection_ pSllTimeSpan_ pSllLeaderboardId_ =
    ScoresList'
    { _sllQuotaUser = Nothing
    , _sllPrettyPrint = True
    , _sllUserIP = Nothing
    , _sllCollection = pSllCollection_
    , _sllTimeSpan = pSllTimeSpan_
    , _sllLeaderboardId = pSllLeaderboardId_
    , _sllKey = Nothing
    , _sllLanguage = Nothing
    , _sllPageToken = Nothing
    , _sllOAuthToken = Nothing
    , _sllMaxResults = Nothing
    , _sllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sllQuotaUser :: Lens' ScoresList' (Maybe Text)
sllQuotaUser
  = lens _sllQuotaUser (\ s a -> s{_sllQuotaUser = a})

-- | Returns response with indentations and line breaks.
sllPrettyPrint :: Lens' ScoresList' Bool
sllPrettyPrint
  = lens _sllPrettyPrint
      (\ s a -> s{_sllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sllUserIP :: Lens' ScoresList' (Maybe Text)
sllUserIP
  = lens _sllUserIP (\ s a -> s{_sllUserIP = a})

-- | The collection of scores you\'re requesting.
sllCollection :: Lens' ScoresList' ScoresListCollection
sllCollection
  = lens _sllCollection
      (\ s a -> s{_sllCollection = a})

-- | The time span for the scores and ranks you\'re requesting.
sllTimeSpan :: Lens' ScoresList' ScoresListTimeSpan
sllTimeSpan
  = lens _sllTimeSpan (\ s a -> s{_sllTimeSpan = a})

-- | The ID of the leaderboard.
sllLeaderboardId :: Lens' ScoresList' Text
sllLeaderboardId
  = lens _sllLeaderboardId
      (\ s a -> s{_sllLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sllKey :: Lens' ScoresList' (Maybe Key)
sllKey = lens _sllKey (\ s a -> s{_sllKey = a})

-- | The preferred language to use for strings returned by this method.
sllLanguage :: Lens' ScoresList' (Maybe Text)
sllLanguage
  = lens _sllLanguage (\ s a -> s{_sllLanguage = a})

-- | The token returned by the previous request.
sllPageToken :: Lens' ScoresList' (Maybe Text)
sllPageToken
  = lens _sllPageToken (\ s a -> s{_sllPageToken = a})

-- | OAuth 2.0 token for the current user.
sllOAuthToken :: Lens' ScoresList' (Maybe OAuthToken)
sllOAuthToken
  = lens _sllOAuthToken
      (\ s a -> s{_sllOAuthToken = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
sllMaxResults :: Lens' ScoresList' (Maybe Int32)
sllMaxResults
  = lens _sllMaxResults
      (\ s a -> s{_sllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
sllFields :: Lens' ScoresList' (Maybe Text)
sllFields
  = lens _sllFields (\ s a -> s{_sllFields = a})

instance GoogleAuth ScoresList' where
        authKey = sllKey . _Just
        authToken = sllOAuthToken . _Just

instance GoogleRequest ScoresList' where
        type Rs ScoresList' = LeaderboardScores
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresList'{..}
          = go _sllLeaderboardId _sllCollection
              (Just _sllTimeSpan)
              _sllLanguage
              _sllPageToken
              _sllMaxResults
              _sllQuotaUser
              (Just _sllPrettyPrint)
              _sllUserIP
              _sllFields
              _sllKey
              _sllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ScoresListResource)
                      r
                      u
