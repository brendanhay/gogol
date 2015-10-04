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
    , sQuotaUser
    , sPrettyPrint
    , sScoreTag
    , sScore
    , sUserIP
    , sLeaderboardId
    , sKey
    , sLanguage
    , sOAuthToken
    , sFields
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
    { _sQuotaUser     :: !(Maybe Text)
    , _sPrettyPrint   :: !Bool
    , _sScoreTag      :: !(Maybe Text)
    , _sScore         :: !Int64
    , _sUserIP        :: !(Maybe Text)
    , _sLeaderboardId :: !Text
    , _sKey           :: !(Maybe Key)
    , _sLanguage      :: !(Maybe Text)
    , _sOAuthToken    :: !(Maybe OAuthToken)
    , _sFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresSubmit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sScoreTag'
--
-- * 'sScore'
--
-- * 'sUserIP'
--
-- * 'sLeaderboardId'
--
-- * 'sKey'
--
-- * 'sLanguage'
--
-- * 'sOAuthToken'
--
-- * 'sFields'
scoresSubmit'
    :: Int64 -- ^ 'score'
    -> Text -- ^ 'leaderboardId'
    -> ScoresSubmit'
scoresSubmit' pSScore_ pSLeaderboardId_ =
    ScoresSubmit'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sScoreTag = Nothing
    , _sScore = pSScore_
    , _sUserIP = Nothing
    , _sLeaderboardId = pSLeaderboardId_
    , _sKey = Nothing
    , _sLanguage = Nothing
    , _sOAuthToken = Nothing
    , _sFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' ScoresSubmit' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' ScoresSubmit' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | Additional information about the score you\'re submitting. Values must
-- contain no more than 64 URI-safe characters as defined by section 2.3 of
-- RFC 3986.
sScoreTag :: Lens' ScoresSubmit' (Maybe Text)
sScoreTag
  = lens _sScoreTag (\ s a -> s{_sScoreTag = a})

-- | The score you\'re submitting. The submitted score is ignored if it is
-- worse than a previously submitted score, where worse depends on the
-- leaderboard sort order. The meaning of the score value depends on the
-- leaderboard format type. For fixed-point, the score represents the raw
-- value. For time, the score represents elapsed time in milliseconds. For
-- currency, the score represents a value in micro units.
sScore :: Lens' ScoresSubmit' Int64
sScore = lens _sScore (\ s a -> s{_sScore = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIP :: Lens' ScoresSubmit' (Maybe Text)
sUserIP = lens _sUserIP (\ s a -> s{_sUserIP = a})

-- | The ID of the leaderboard.
sLeaderboardId :: Lens' ScoresSubmit' Text
sLeaderboardId
  = lens _sLeaderboardId
      (\ s a -> s{_sLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' ScoresSubmit' (Maybe Key)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | The preferred language to use for strings returned by this method.
sLanguage :: Lens' ScoresSubmit' (Maybe Text)
sLanguage
  = lens _sLanguage (\ s a -> s{_sLanguage = a})

-- | OAuth 2.0 token for the current user.
sOAuthToken :: Lens' ScoresSubmit' (Maybe OAuthToken)
sOAuthToken
  = lens _sOAuthToken (\ s a -> s{_sOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' ScoresSubmit' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

instance GoogleAuth ScoresSubmit' where
        authKey = sKey . _Just
        authToken = sOAuthToken . _Just

instance GoogleRequest ScoresSubmit' where
        type Rs ScoresSubmit' = PlayerScoreResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresSubmit'{..}
          = go _sLeaderboardId (Just _sScore) _sScoreTag
              _sLanguage
              _sQuotaUser
              (Just _sPrettyPrint)
              _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresSubmitResource)
                      r
                      u
