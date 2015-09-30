{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module GamesManagement.Scores.ResetAllForAllPlayers
    (
    -- * REST Resource
      ScoresResetAllForAllPlayersAPI

    -- * Creating a Request
    , scoresResetAllForAllPlayers
    , ScoresResetAllForAllPlayers

    -- * Request Lenses
    , srafapQuotaUser
    , srafapPrettyPrint
    , srafapUserIp
    , srafapKey
    , srafapOauthToken
    , srafapFields
    , srafapAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementScoresResetAllForAllPlayers@ which the
-- 'ScoresResetAllForAllPlayers' request conforms to.
type ScoresResetAllForAllPlayersAPI =
     "scores" :>
       "resetAllForAllPlayers" :> Post '[JSON] ()

-- | Resets scores for all draft leaderboards for all players. This method is
-- only available to user accounts for your developer console.
--
-- /See:/ 'scoresResetAllForAllPlayers' smart constructor.
data ScoresResetAllForAllPlayers = ScoresResetAllForAllPlayers
    { _srafapQuotaUser   :: !(Maybe Text)
    , _srafapPrettyPrint :: !Bool
    , _srafapUserIp      :: !(Maybe Text)
    , _srafapKey         :: !(Maybe Text)
    , _srafapOauthToken  :: !(Maybe Text)
    , _srafapFields      :: !(Maybe Text)
    , _srafapAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetAllForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srafapQuotaUser'
--
-- * 'srafapPrettyPrint'
--
-- * 'srafapUserIp'
--
-- * 'srafapKey'
--
-- * 'srafapOauthToken'
--
-- * 'srafapFields'
--
-- * 'srafapAlt'
scoresResetAllForAllPlayers
    :: ScoresResetAllForAllPlayers
scoresResetAllForAllPlayers =
    ScoresResetAllForAllPlayers
    { _srafapQuotaUser = Nothing
    , _srafapPrettyPrint = True
    , _srafapUserIp = Nothing
    , _srafapKey = Nothing
    , _srafapOauthToken = Nothing
    , _srafapFields = Nothing
    , _srafapAlt = "json"
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
srafapUserIp :: Lens' ScoresResetAllForAllPlayers' (Maybe Text)
srafapUserIp
  = lens _srafapUserIp (\ s a -> s{_srafapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
srafapKey :: Lens' ScoresResetAllForAllPlayers' (Maybe Text)
srafapKey
  = lens _srafapKey (\ s a -> s{_srafapKey = a})

-- | OAuth 2.0 token for the current user.
srafapOauthToken :: Lens' ScoresResetAllForAllPlayers' (Maybe Text)
srafapOauthToken
  = lens _srafapOauthToken
      (\ s a -> s{_srafapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
srafapFields :: Lens' ScoresResetAllForAllPlayers' (Maybe Text)
srafapFields
  = lens _srafapFields (\ s a -> s{_srafapFields = a})

-- | Data format for the response.
srafapAlt :: Lens' ScoresResetAllForAllPlayers' Text
srafapAlt
  = lens _srafapAlt (\ s a -> s{_srafapAlt = a})

instance GoogleRequest ScoresResetAllForAllPlayers'
         where
        type Rs ScoresResetAllForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u ScoresResetAllForAllPlayers{..}
          = go _srafapQuotaUser _srafapPrettyPrint
              _srafapUserIp
              _srafapKey
              _srafapOauthToken
              _srafapFields
              _srafapAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresResetAllForAllPlayersAPI)
                      r
                      u
