{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetAllForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets scores for all draft leaderboards for all players. This method is
-- only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementScoresResetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetAllForAllPlayers
    (
    -- * REST Resource
      ScoresResetAllForAllPlayersResource

    -- * Creating a Request
    , scoresResetAllForAllPlayers'
    , ScoresResetAllForAllPlayers'

    -- * Request Lenses
    , srafapQuotaUser
    , srafapPrettyPrint
    , srafapUserIP
    , srafapKey
    , srafapOAuthToken
    , srafapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementScoresResetAllForAllPlayers@ which the
-- 'ScoresResetAllForAllPlayers'' request conforms to.
type ScoresResetAllForAllPlayersResource =
     "scores" :>
       "resetAllForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets scores for all draft leaderboards for all players. This method is
-- only available to user accounts for your developer console.
--
-- /See:/ 'scoresResetAllForAllPlayers'' smart constructor.
data ScoresResetAllForAllPlayers' = ScoresResetAllForAllPlayers'
    { _srafapQuotaUser   :: !(Maybe Text)
    , _srafapPrettyPrint :: !Bool
    , _srafapUserIP      :: !(Maybe Text)
    , _srafapKey         :: !(Maybe Key)
    , _srafapOAuthToken  :: !(Maybe OAuthToken)
    , _srafapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetAllForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srafapQuotaUser'
--
-- * 'srafapPrettyPrint'
--
-- * 'srafapUserIP'
--
-- * 'srafapKey'
--
-- * 'srafapOAuthToken'
--
-- * 'srafapFields'
scoresResetAllForAllPlayers'
    :: ScoresResetAllForAllPlayers'
scoresResetAllForAllPlayers' =
    ScoresResetAllForAllPlayers'
    { _srafapQuotaUser = Nothing
    , _srafapPrettyPrint = True
    , _srafapUserIP = Nothing
    , _srafapKey = Nothing
    , _srafapOAuthToken = Nothing
    , _srafapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
srafapQuotaUser :: Lens' ScoresResetAllForAllPlayers' (Maybe Text)
srafapQuotaUser
  = lens _srafapQuotaUser
      (\ s a -> s{_srafapQuotaUser = a})

-- | Returns response with indentations and line breaks.
srafapPrettyPrint :: Lens' ScoresResetAllForAllPlayers' Bool
srafapPrettyPrint
  = lens _srafapPrettyPrint
      (\ s a -> s{_srafapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
srafapUserIP :: Lens' ScoresResetAllForAllPlayers' (Maybe Text)
srafapUserIP
  = lens _srafapUserIP (\ s a -> s{_srafapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
srafapKey :: Lens' ScoresResetAllForAllPlayers' (Maybe Key)
srafapKey
  = lens _srafapKey (\ s a -> s{_srafapKey = a})

-- | OAuth 2.0 token for the current user.
srafapOAuthToken :: Lens' ScoresResetAllForAllPlayers' (Maybe OAuthToken)
srafapOAuthToken
  = lens _srafapOAuthToken
      (\ s a -> s{_srafapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
srafapFields :: Lens' ScoresResetAllForAllPlayers' (Maybe Text)
srafapFields
  = lens _srafapFields (\ s a -> s{_srafapFields = a})

instance GoogleAuth ScoresResetAllForAllPlayers'
         where
        authKey = srafapKey . _Just
        authToken = srafapOAuthToken . _Just

instance GoogleRequest ScoresResetAllForAllPlayers'
         where
        type Rs ScoresResetAllForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u ScoresResetAllForAllPlayers'{..}
          = go _srafapQuotaUser (Just _srafapPrettyPrint)
              _srafapUserIP
              _srafapFields
              _srafapKey
              _srafapOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresResetAllForAllPlayersResource)
                      r
                      u
