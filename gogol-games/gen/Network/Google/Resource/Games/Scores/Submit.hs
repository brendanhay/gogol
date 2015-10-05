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
module Network.Google.Resource.Games.Scores.Submit
    (
    -- * REST Resource
      ScoresSubmitResource

    -- * Creating a Request
    , scoresSubmit'
    , ScoresSubmit'

    -- * Request Lenses
    , ssQuotaUser
    , ssPrettyPrint
    , ssScoreTag
    , ssScore
    , ssUserIP
    , ssLeaderboardId
    , ssKey
    , ssLanguage
    , ssOAuthToken
    , ssFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresSubmit@ which the
-- 'ScoresSubmit'' request conforms to.
type ScoresSubmitResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           QueryParam "score" Int64 :>
             QueryParam "scoreTag" Text :>
               QueryParam "language" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] PlayerScoreResponse

-- | Submits a score to the specified leaderboard.
--
-- /See:/ 'scoresSubmit'' smart constructor.
data ScoresSubmit' = ScoresSubmit'
    { _ssQuotaUser     :: !(Maybe Text)
    , _ssPrettyPrint   :: !Bool
    , _ssScoreTag      :: !(Maybe Text)
    , _ssScore         :: !Int64
    , _ssUserIP        :: !(Maybe Text)
    , _ssLeaderboardId :: !Text
    , _ssKey           :: !(Maybe Key)
    , _ssLanguage      :: !(Maybe Text)
    , _ssOAuthToken    :: !(Maybe OAuthToken)
    , _ssFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresSubmit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssQuotaUser'
--
-- * 'ssPrettyPrint'
--
-- * 'ssScoreTag'
--
-- * 'ssScore'
--
-- * 'ssUserIP'
--
-- * 'ssLeaderboardId'
--
-- * 'ssKey'
--
-- * 'ssLanguage'
--
-- * 'ssOAuthToken'
--
-- * 'ssFields'
scoresSubmit'
    :: Int64 -- ^ 'score'
    -> Text -- ^ 'leaderboardId'
    -> ScoresSubmit'
scoresSubmit' pSsScore_ pSsLeaderboardId_ =
    ScoresSubmit'
    { _ssQuotaUser = Nothing
    , _ssPrettyPrint = True
    , _ssScoreTag = Nothing
    , _ssScore = pSsScore_
    , _ssUserIP = Nothing
    , _ssLeaderboardId = pSsLeaderboardId_
    , _ssKey = Nothing
    , _ssLanguage = Nothing
    , _ssOAuthToken = Nothing
    , _ssFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ssQuotaUser :: Lens' ScoresSubmit' (Maybe Text)
ssQuotaUser
  = lens _ssQuotaUser (\ s a -> s{_ssQuotaUser = a})

-- | Returns response with indentations and line breaks.
ssPrettyPrint :: Lens' ScoresSubmit' Bool
ssPrettyPrint
  = lens _ssPrettyPrint
      (\ s a -> s{_ssPrettyPrint = a})

-- | Additional information about the score you\'re submitting. Values must
-- contain no more than 64 URI-safe characters as defined by section 2.3 of
-- RFC 3986.
ssScoreTag :: Lens' ScoresSubmit' (Maybe Text)
ssScoreTag
  = lens _ssScoreTag (\ s a -> s{_ssScoreTag = a})

-- | The score you\'re submitting. The submitted score is ignored if it is
-- worse than a previously submitted score, where worse depends on the
-- leaderboard sort order. The meaning of the score value depends on the
-- leaderboard format type. For fixed-point, the score represents the raw
-- value. For time, the score represents elapsed time in milliseconds. For
-- currency, the score represents a value in micro units.
ssScore :: Lens' ScoresSubmit' Int64
ssScore = lens _ssScore (\ s a -> s{_ssScore = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ssUserIP :: Lens' ScoresSubmit' (Maybe Text)
ssUserIP = lens _ssUserIP (\ s a -> s{_ssUserIP = a})

-- | The ID of the leaderboard.
ssLeaderboardId :: Lens' ScoresSubmit' Text
ssLeaderboardId
  = lens _ssLeaderboardId
      (\ s a -> s{_ssLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssKey :: Lens' ScoresSubmit' (Maybe Key)
ssKey = lens _ssKey (\ s a -> s{_ssKey = a})

-- | The preferred language to use for strings returned by this method.
ssLanguage :: Lens' ScoresSubmit' (Maybe Text)
ssLanguage
  = lens _ssLanguage (\ s a -> s{_ssLanguage = a})

-- | OAuth 2.0 token for the current user.
ssOAuthToken :: Lens' ScoresSubmit' (Maybe OAuthToken)
ssOAuthToken
  = lens _ssOAuthToken (\ s a -> s{_ssOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ssFields :: Lens' ScoresSubmit' (Maybe Text)
ssFields = lens _ssFields (\ s a -> s{_ssFields = a})

instance GoogleAuth ScoresSubmit' where
        authKey = ssKey . _Just
        authToken = ssOAuthToken . _Just

instance GoogleRequest ScoresSubmit' where
        type Rs ScoresSubmit' = PlayerScoreResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresSubmit'{..}
          = go _ssLeaderboardId (Just _ssScore) _ssScoreTag
              _ssLanguage
              _ssQuotaUser
              (Just _ssPrettyPrint)
              _ssUserIP
              _ssFields
              _ssKey
              _ssOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresSubmitResource)
                      r
                      u
