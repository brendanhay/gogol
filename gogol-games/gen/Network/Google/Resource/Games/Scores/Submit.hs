{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Scores.Submit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submits a score to the specified leaderboard.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesScoresSubmit@.
module Games.Scores.Submit
    (
    -- * REST Resource
      ScoresSubmitAPI

    -- * Creating a Request
    , scoresSubmit
    , ScoresSubmit

    -- * Request Lenses
    , sssQuotaUser
    , sssPrettyPrint
    , sssScoreTag
    , sssScore
    , sssUserIp
    , sssLeaderboardId
    , sssKey
    , sssLanguage
    , sssOauthToken
    , sssFields
    , sssAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresSubmit@ which the
-- 'ScoresSubmit' request conforms to.
type ScoresSubmitAPI =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           QueryParam "scoreTag" Text :>
             QueryParam "score" Int64 :>
               QueryParam "language" Text :>
                 Post '[JSON] PlayerScoreResponse

-- | Submits a score to the specified leaderboard.
--
-- /See:/ 'scoresSubmit' smart constructor.
data ScoresSubmit = ScoresSubmit
    { _sssQuotaUser     :: !(Maybe Text)
    , _sssPrettyPrint   :: !Bool
    , _sssScoreTag      :: !(Maybe Text)
    , _sssScore         :: !Int64
    , _sssUserIp        :: !(Maybe Text)
    , _sssLeaderboardId :: !Text
    , _sssKey           :: !(Maybe Text)
    , _sssLanguage      :: !(Maybe Text)
    , _sssOauthToken    :: !(Maybe Text)
    , _sssFields        :: !(Maybe Text)
    , _sssAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresSubmit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssQuotaUser'
--
-- * 'sssPrettyPrint'
--
-- * 'sssScoreTag'
--
-- * 'sssScore'
--
-- * 'sssUserIp'
--
-- * 'sssLeaderboardId'
--
-- * 'sssKey'
--
-- * 'sssLanguage'
--
-- * 'sssOauthToken'
--
-- * 'sssFields'
--
-- * 'sssAlt'
scoresSubmit
    :: Int64 -- ^ 'score'
    -> Text -- ^ 'leaderboardId'
    -> ScoresSubmit
scoresSubmit pSssScore_ pSssLeaderboardId_ =
    ScoresSubmit
    { _sssQuotaUser = Nothing
    , _sssPrettyPrint = True
    , _sssScoreTag = Nothing
    , _sssScore = pSssScore_
    , _sssUserIp = Nothing
    , _sssLeaderboardId = pSssLeaderboardId_
    , _sssKey = Nothing
    , _sssLanguage = Nothing
    , _sssOauthToken = Nothing
    , _sssFields = Nothing
    , _sssAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sssQuotaUser :: Lens' ScoresSubmit' (Maybe Text)
sssQuotaUser
  = lens _sssQuotaUser (\ s a -> s{_sssQuotaUser = a})

-- | Returns response with indentations and line breaks.
sssPrettyPrint :: Lens' ScoresSubmit' Bool
sssPrettyPrint
  = lens _sssPrettyPrint
      (\ s a -> s{_sssPrettyPrint = a})

-- | Additional information about the score you\'re submitting. Values must
-- contain no more than 64 URI-safe characters as defined by section 2.3 of
-- RFC 3986.
sssScoreTag :: Lens' ScoresSubmit' (Maybe Text)
sssScoreTag
  = lens _sssScoreTag (\ s a -> s{_sssScoreTag = a})

-- | The score you\'re submitting. The submitted score is ignored if it is
-- worse than a previously submitted score, where worse depends on the
-- leaderboard sort order. The meaning of the score value depends on the
-- leaderboard format type. For fixed-point, the score represents the raw
-- value. For time, the score represents elapsed time in milliseconds. For
-- currency, the score represents a value in micro units.
sssScore :: Lens' ScoresSubmit' Int64
sssScore = lens _sssScore (\ s a -> s{_sssScore = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sssUserIp :: Lens' ScoresSubmit' (Maybe Text)
sssUserIp
  = lens _sssUserIp (\ s a -> s{_sssUserIp = a})

-- | The ID of the leaderboard.
sssLeaderboardId :: Lens' ScoresSubmit' Text
sssLeaderboardId
  = lens _sssLeaderboardId
      (\ s a -> s{_sssLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sssKey :: Lens' ScoresSubmit' (Maybe Text)
sssKey = lens _sssKey (\ s a -> s{_sssKey = a})

-- | The preferred language to use for strings returned by this method.
sssLanguage :: Lens' ScoresSubmit' (Maybe Text)
sssLanguage
  = lens _sssLanguage (\ s a -> s{_sssLanguage = a})

-- | OAuth 2.0 token for the current user.
sssOauthToken :: Lens' ScoresSubmit' (Maybe Text)
sssOauthToken
  = lens _sssOauthToken
      (\ s a -> s{_sssOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sssFields :: Lens' ScoresSubmit' (Maybe Text)
sssFields
  = lens _sssFields (\ s a -> s{_sssFields = a})

-- | Data format for the response.
sssAlt :: Lens' ScoresSubmit' Text
sssAlt = lens _sssAlt (\ s a -> s{_sssAlt = a})

instance GoogleRequest ScoresSubmit' where
        type Rs ScoresSubmit' = PlayerScoreResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresSubmit{..}
          = go _sssQuotaUser _sssPrettyPrint _sssScoreTag
              (Just _sssScore)
              _sssUserIp
              _sssLeaderboardId
              _sssKey
              _sssLanguage
              _sssOauthToken
              _sssFields
              _sssAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ScoresSubmitAPI) r
                      u
