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
    , ssmUserIP
    , ssmKey
    , ssmLanguage
    , ssmOAuthToken
    , ssmPlayerScoreSubmissionList
    , ssmFields
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
               QueryParam "key" Key :>
                 QueryParam "language" Text :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PlayerScoreSubmissionList :>
                           Post '[JSON] PlayerScoreListResponse

-- | Submits multiple scores to leaderboards.
--
-- /See:/ 'scoresSubmitMultiple'' smart constructor.
data ScoresSubmitMultiple' = ScoresSubmitMultiple'
    { _ssmQuotaUser                 :: !(Maybe Text)
    , _ssmPrettyPrint               :: !Bool
    , _ssmUserIP                    :: !(Maybe Text)
    , _ssmKey                       :: !(Maybe Key)
    , _ssmLanguage                  :: !(Maybe Text)
    , _ssmOAuthToken                :: !(Maybe OAuthToken)
    , _ssmPlayerScoreSubmissionList :: !PlayerScoreSubmissionList
    , _ssmFields                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresSubmitMultiple'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssmQuotaUser'
--
-- * 'ssmPrettyPrint'
--
-- * 'ssmUserIP'
--
-- * 'ssmKey'
--
-- * 'ssmLanguage'
--
-- * 'ssmOAuthToken'
--
-- * 'ssmPlayerScoreSubmissionList'
--
-- * 'ssmFields'
scoresSubmitMultiple'
    :: PlayerScoreSubmissionList -- ^ 'PlayerScoreSubmissionList'
    -> ScoresSubmitMultiple'
scoresSubmitMultiple' pSsmPlayerScoreSubmissionList_ =
    ScoresSubmitMultiple'
    { _ssmQuotaUser = Nothing
    , _ssmPrettyPrint = True
    , _ssmUserIP = Nothing
    , _ssmKey = Nothing
    , _ssmLanguage = Nothing
    , _ssmOAuthToken = Nothing
    , _ssmPlayerScoreSubmissionList = pSsmPlayerScoreSubmissionList_
    , _ssmFields = Nothing
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
ssmUserIP :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmUserIP
  = lens _ssmUserIP (\ s a -> s{_ssmUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssmKey :: Lens' ScoresSubmitMultiple' (Maybe Key)
ssmKey = lens _ssmKey (\ s a -> s{_ssmKey = a})

-- | The preferred language to use for strings returned by this method.
ssmLanguage :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmLanguage
  = lens _ssmLanguage (\ s a -> s{_ssmLanguage = a})

-- | OAuth 2.0 token for the current user.
ssmOAuthToken :: Lens' ScoresSubmitMultiple' (Maybe OAuthToken)
ssmOAuthToken
  = lens _ssmOAuthToken
      (\ s a -> s{_ssmOAuthToken = a})

-- | Multipart request metadata.
ssmPlayerScoreSubmissionList :: Lens' ScoresSubmitMultiple' PlayerScoreSubmissionList
ssmPlayerScoreSubmissionList
  = lens _ssmPlayerScoreSubmissionList
      (\ s a -> s{_ssmPlayerScoreSubmissionList = a})

-- | Selector specifying which fields to include in a partial response.
ssmFields :: Lens' ScoresSubmitMultiple' (Maybe Text)
ssmFields
  = lens _ssmFields (\ s a -> s{_ssmFields = a})

instance GoogleAuth ScoresSubmitMultiple' where
        authKey = ssmKey . _Just
        authToken = ssmOAuthToken . _Just

instance GoogleRequest ScoresSubmitMultiple' where
        type Rs ScoresSubmitMultiple' =
             PlayerScoreListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresSubmitMultiple'{..}
          = go _ssmQuotaUser (Just _ssmPrettyPrint) _ssmUserIP
              _ssmKey
              _ssmLanguage
              _ssmOAuthToken
              _ssmFields
              (Just AltJSON)
              _ssmPlayerScoreSubmissionList
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresSubmitMultipleResource)
                      r
                      u
