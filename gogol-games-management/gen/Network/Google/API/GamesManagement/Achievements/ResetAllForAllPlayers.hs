{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesManagement.Achievements.ResetAllForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.achievements.resetAllForAllPlayers@.
module Network.Google.API.GamesManagement.Achievements.ResetAllForAllPlayers
    (
    -- * REST Resource
      AchievementsResetAllForAllPlayersAPI

    -- * Creating a Request
    , achievementsResetAllForAllPlayers'
    , AchievementsResetAllForAllPlayers'

    -- * Request Lenses
    , arafapQuotaUser
    , arafapPrettyPrint
    , arafapUserIp
    , arafapKey
    , arafapOauthToken
    , arafapFields
    , arafapAlt
    ) where

import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

-- | A resource alias for gamesManagement.achievements.resetAllForAllPlayers which the
-- 'AchievementsResetAllForAllPlayers'' request conforms to.
type AchievementsResetAllForAllPlayersAPI =
     "achievements" :>
       "resetAllForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ 'achievementsResetAllForAllPlayers'' smart constructor.
data AchievementsResetAllForAllPlayers' = AchievementsResetAllForAllPlayers'
    { _arafapQuotaUser   :: !(Maybe Text)
    , _arafapPrettyPrint :: !Bool
    , _arafapUserIp      :: !(Maybe Text)
    , _arafapKey         :: !(Maybe Text)
    , _arafapOauthToken  :: !(Maybe Text)
    , _arafapFields      :: !(Maybe Text)
    , _arafapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetAllForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arafapQuotaUser'
--
-- * 'arafapPrettyPrint'
--
-- * 'arafapUserIp'
--
-- * 'arafapKey'
--
-- * 'arafapOauthToken'
--
-- * 'arafapFields'
--
-- * 'arafapAlt'
achievementsResetAllForAllPlayers'
    :: AchievementsResetAllForAllPlayers'
achievementsResetAllForAllPlayers' =
    AchievementsResetAllForAllPlayers'
    { _arafapQuotaUser = Nothing
    , _arafapPrettyPrint = True
    , _arafapUserIp = Nothing
    , _arafapKey = Nothing
    , _arafapOauthToken = Nothing
    , _arafapFields = Nothing
    , _arafapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
arafapQuotaUser :: Lens' AchievementsResetAllForAllPlayers' (Maybe Text)
arafapQuotaUser
  = lens _arafapQuotaUser
      (\ s a -> s{_arafapQuotaUser = a})

-- | Returns response with indentations and line breaks.
arafapPrettyPrint :: Lens' AchievementsResetAllForAllPlayers' Bool
arafapPrettyPrint
  = lens _arafapPrettyPrint
      (\ s a -> s{_arafapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
arafapUserIp :: Lens' AchievementsResetAllForAllPlayers' (Maybe Text)
arafapUserIp
  = lens _arafapUserIp (\ s a -> s{_arafapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arafapKey :: Lens' AchievementsResetAllForAllPlayers' (Maybe Text)
arafapKey
  = lens _arafapKey (\ s a -> s{_arafapKey = a})

-- | OAuth 2.0 token for the current user.
arafapOauthToken :: Lens' AchievementsResetAllForAllPlayers' (Maybe Text)
arafapOauthToken
  = lens _arafapOauthToken
      (\ s a -> s{_arafapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
arafapFields :: Lens' AchievementsResetAllForAllPlayers' (Maybe Text)
arafapFields
  = lens _arafapFields (\ s a -> s{_arafapFields = a})

-- | Data format for the response.
arafapAlt :: Lens' AchievementsResetAllForAllPlayers' Alt
arafapAlt
  = lens _arafapAlt (\ s a -> s{_arafapAlt = a})

instance GoogleRequest
         AchievementsResetAllForAllPlayers' where
        type Rs AchievementsResetAllForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          AchievementsResetAllForAllPlayers'{..}
          = go _arafapQuotaUser (Just _arafapPrettyPrint)
              _arafapUserIp
              _arafapKey
              _arafapOauthToken
              _arafapFields
              (Just _arafapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsResetAllForAllPlayersAPI)
                      r
                      u
