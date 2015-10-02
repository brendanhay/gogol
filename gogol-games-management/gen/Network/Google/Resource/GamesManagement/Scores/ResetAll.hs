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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all scores for all leaderboards for the currently authenticated
-- players. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementScoresResetAll@.
module Network.Google.Resource.GamesManagement.Scores.ResetAll
    (
    -- * REST Resource
      ScoresResetAllResource

    -- * Creating a Request
    , scoresResetAll'
    , ScoresResetAll'

    -- * Request Lenses
    , sraQuotaUser
    , sraPrettyPrint
    , sraUserIP
    , sraKey
    , sraOAuthToken
    , sraFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementScoresResetAll@ which the
-- 'ScoresResetAll'' request conforms to.
type ScoresResetAllResource =
     "scores" :>
       "reset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       Post '[JSON] PlayerScoreResetAllResponse

-- | Resets all scores for all leaderboards for the currently authenticated
-- players. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'scoresResetAll'' smart constructor.
data ScoresResetAll' = ScoresResetAll'
    { _sraQuotaUser   :: !(Maybe Text)
    , _sraPrettyPrint :: !Bool
    , _sraUserIP      :: !(Maybe Text)
    , _sraKey         :: !(Maybe Key)
    , _sraOAuthToken  :: !(Maybe OAuthToken)
    , _sraFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sraQuotaUser'
--
-- * 'sraPrettyPrint'
--
-- * 'sraUserIP'
--
-- * 'sraKey'
--
-- * 'sraOAuthToken'
--
-- * 'sraFields'
scoresResetAll'
    :: ScoresResetAll'
scoresResetAll' =
    ScoresResetAll'
    { _sraQuotaUser = Nothing
    , _sraPrettyPrint = True
    , _sraUserIP = Nothing
    , _sraKey = Nothing
    , _sraOAuthToken = Nothing
    , _sraFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sraQuotaUser :: Lens' ScoresResetAll' (Maybe Text)
sraQuotaUser
  = lens _sraQuotaUser (\ s a -> s{_sraQuotaUser = a})

-- | Returns response with indentations and line breaks.
sraPrettyPrint :: Lens' ScoresResetAll' Bool
sraPrettyPrint
  = lens _sraPrettyPrint
      (\ s a -> s{_sraPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sraUserIP :: Lens' ScoresResetAll' (Maybe Text)
sraUserIP
  = lens _sraUserIP (\ s a -> s{_sraUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sraKey :: Lens' ScoresResetAll' (Maybe Key)
sraKey = lens _sraKey (\ s a -> s{_sraKey = a})

-- | OAuth 2.0 token for the current user.
sraOAuthToken :: Lens' ScoresResetAll' (Maybe OAuthToken)
sraOAuthToken
  = lens _sraOAuthToken
      (\ s a -> s{_sraOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sraFields :: Lens' ScoresResetAll' (Maybe Text)
sraFields
  = lens _sraFields (\ s a -> s{_sraFields = a})

instance GoogleAuth ScoresResetAll' where
        authKey = sraKey . _Just
        authToken = sraOAuthToken . _Just

instance GoogleRequest ScoresResetAll' where
        type Rs ScoresResetAll' = PlayerScoreResetAllResponse
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u ScoresResetAll'{..}
          = go _sraQuotaUser (Just _sraPrettyPrint) _sraUserIP
              _sraKey
              _sraOAuthToken
              _sraFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresResetAllResource)
                      r
                      u
