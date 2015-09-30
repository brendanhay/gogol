{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Games.Scores.List
    (
    -- * REST Resource
      ScoresListAPI

    -- * Creating a Request
    , scoresList
    , ScoresList

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sCollection
    , sTimeSpan
    , sLeaderboardId
    , sKey
    , sLanguage
    , sPageToken
    , sOauthToken
    , sMaxResults
    , sFields
    , sAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresList@ which the
-- 'ScoresList' request conforms to.
type ScoresListAPI =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           Capture "collection" Text :>
             QueryParam "timeSpan" Text :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     Get '[JSON] LeaderboardScores

-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ 'scoresList' smart constructor.
data ScoresList = ScoresList
    { _sQuotaUser     :: !(Maybe Text)
    , _sPrettyPrint   :: !Bool
    , _sUserIp        :: !(Maybe Text)
    , _sCollection    :: !Text
    , _sTimeSpan      :: !Text
    , _sLeaderboardId :: !Text
    , _sKey           :: !(Maybe Text)
    , _sLanguage      :: !(Maybe Text)
    , _sPageToken     :: !(Maybe Text)
    , _sOauthToken    :: !(Maybe Text)
    , _sMaxResults    :: !(Maybe Int32)
    , _sFields        :: !(Maybe Text)
    , _sAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIp'
--
-- * 'sCollection'
--
-- * 'sTimeSpan'
--
-- * 'sLeaderboardId'
--
-- * 'sKey'
--
-- * 'sLanguage'
--
-- * 'sPageToken'
--
-- * 'sOauthToken'
--
-- * 'sMaxResults'
--
-- * 'sFields'
--
-- * 'sAlt'
scoresList
    :: Text -- ^ 'collection'
    -> Text -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> ScoresList
scoresList pSCollection_ pSTimeSpan_ pSLeaderboardId_ =
    ScoresList
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sCollection = pSCollection_
    , _sTimeSpan = pSTimeSpan_
    , _sLeaderboardId = pSLeaderboardId_
    , _sKey = Nothing
    , _sLanguage = Nothing
    , _sPageToken = Nothing
    , _sOauthToken = Nothing
    , _sMaxResults = Nothing
    , _sFields = Nothing
    , _sAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' ScoresList' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' ScoresList' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' ScoresList' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | The collection of scores you\'re requesting.
sCollection :: Lens' ScoresList' Text
sCollection
  = lens _sCollection (\ s a -> s{_sCollection = a})

-- | The time span for the scores and ranks you\'re requesting.
sTimeSpan :: Lens' ScoresList' Text
sTimeSpan
  = lens _sTimeSpan (\ s a -> s{_sTimeSpan = a})

-- | The ID of the leaderboard.
sLeaderboardId :: Lens' ScoresList' Text
sLeaderboardId
  = lens _sLeaderboardId
      (\ s a -> s{_sLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' ScoresList' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | The preferred language to use for strings returned by this method.
sLanguage :: Lens' ScoresList' (Maybe Text)
sLanguage
  = lens _sLanguage (\ s a -> s{_sLanguage = a})

-- | The token returned by the previous request.
sPageToken :: Lens' ScoresList' (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' ScoresList' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
sMaxResults :: Lens' ScoresList' (Maybe Int32)
sMaxResults
  = lens _sMaxResults (\ s a -> s{_sMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' ScoresList' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' ScoresList' Text
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest ScoresList' where
        type Rs ScoresList' = LeaderboardScores
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresList{..}
          = go _sQuotaUser _sPrettyPrint _sUserIp _sCollection
              (Just _sTimeSpan)
              _sLeaderboardId
              _sKey
              _sLanguage
              _sPageToken
              _sOauthToken
              _sMaxResults
              _sFields
              _sAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ScoresListAPI) r u
