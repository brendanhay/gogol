{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Scores.SubmitMultiple
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submits multiple scores to leaderboards.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesScoresSubmitMultiple@.
module Network.Google.Resource.Games.Scores.SubmitMultiple
    (
    -- * REST Resource
      ScoresSubmitMultipleResource

    -- * Creating a Request
    , scoresSubmitMultiple'
    , ScoresSubmitMultiple'

    -- * Request Lenses
    , ssmQuotaUser
    , ssmPrettyPrint
    , ssmUserIp
    , ssmKey
    , ssmLanguage
    , ssmOauthToken
    , ssmFields
    , ssmAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresSubmitMultiple@ which the
-- 'ScoresSubmitMultiple'' request conforms to.
type ScoresSubmitMultipleResource =
     "leaderboards" :>
       "scores" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "language" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] PlayerScoreListResponse

-- | Submits multiple scores to leaderboards.
--
-- /See:/ 'scoresSubmitMultiple'' smart constructor.
data ScoresSubmitMultiple' = ScoresSubmitMultiple'
    { _ssmQuotaUser   :: !(Maybe Text)
    , _ssmPrettyPrint :: !Bool
    , _ssmUserIp      :: !(Maybe Text)
    , _ssmKey         :: !(Maybe Text)
    , _ssmLanguage    :: !(Maybe Text)
    , _ssmOauthToken  :: !(Maybe Text)
    , _ssmFields      :: !(Maybe Text)
    , _ssmAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresSubmitMultiple'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssmQuotaUser'
--
-- * 'ssmPrettyPrint'
--
-- * 'ssmUserIp'
--
-- * 'ssmKey'
--
-- * 'ssmLanguage'
--
-- * 'ssmOauthToken'
--
-- * 'ssmFields'
--
-- * 'ssmAlt'
scoresSubmitMultiple'
    :: ScoresSubmitMultiple'
scoresSubmitMultiple' =
    ScoresSubmitMultiple'
    { _ssmQuotaUser = Nothing
    , _ssmPrettyPrint = True
    , _ssmUserIp = Nothing
    , _ssmKey = Nothing
    , _ssmLanguage = Nothing
    , _ssmOauthToken = Nothing
    , _ssmFields = Nothing
    , _ssmAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ssmQuotaUser :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmQuotaUser
  = lens _ssmQuotaUser (\ s a -> s{_ssmQuotaUser = a})

-- | Returns response with indentations and line breaks.
ssmPrettyPrint :: Lens' ScoresSubmitMultiple' Bool
ssmPrettyPrint
  = lens _ssmPrettyPrint
      (\ s a -> s{_ssmPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ssmUserIp :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmUserIp
  = lens _ssmUserIp (\ s a -> s{_ssmUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssmKey :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmKey = lens _ssmKey (\ s a -> s{_ssmKey = a})

-- | The preferred language to use for strings returned by this method.
ssmLanguage :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmLanguage
  = lens _ssmLanguage (\ s a -> s{_ssmLanguage = a})

-- | OAuth 2.0 token for the current user.
ssmOauthToken :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmOauthToken
  = lens _ssmOauthToken
      (\ s a -> s{_ssmOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ssmFields :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmFields
  = lens _ssmFields (\ s a -> s{_ssmFields = a})

-- | Data format for the response.
ssmAlt :: Lens' ScoresSubmitMultiple' Alt
ssmAlt = lens _ssmAlt (\ s a -> s{_ssmAlt = a})

instance GoogleRequest ScoresSubmitMultiple' where
        type Rs ScoresSubmitMultiple' =
             PlayerScoreListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresSubmitMultiple'{..}
          = go _ssmQuotaUser (Just _ssmPrettyPrint) _ssmUserIp
              _ssmKey
              _ssmLanguage
              _ssmOauthToken
              _ssmFields
              (Just _ssmAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresSubmitMultipleResource)
                      r
                      u
