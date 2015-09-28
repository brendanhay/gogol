{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesManagement.Achievements.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets achievements with the given IDs for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements may be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.achievements.resetMultipleForAllPlayers@.
module Network.Google.API.GamesManagement.Achievements.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      AchievementsResetMultipleForAllPlayersAPI

    -- * Creating a Request
    , achievementsResetMultipleForAllPlayers'
    , AchievementsResetMultipleForAllPlayers'

    -- * Request Lenses
    , armfapQuotaUser
    , armfapPrettyPrint
    , armfapUserIp
    , armfapKey
    , armfapOauthToken
    , armfapFields
    , armfapAlt
    ) where

import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

-- | A resource alias for gamesManagement.achievements.resetMultipleForAllPlayers which the
-- 'AchievementsResetMultipleForAllPlayers'' request conforms to.
type AchievementsResetMultipleForAllPlayersAPI =
     "achievements" :>
       "resetMultipleForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets achievements with the given IDs for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements may be reset.
--
-- /See:/ 'achievementsResetMultipleForAllPlayers'' smart constructor.
data AchievementsResetMultipleForAllPlayers' = AchievementsResetMultipleForAllPlayers'
    { _armfapQuotaUser   :: !(Maybe Text)
    , _armfapPrettyPrint :: !Bool
    , _armfapUserIp      :: !(Maybe Text)
    , _armfapKey         :: !(Maybe Text)
    , _armfapOauthToken  :: !(Maybe Text)
    , _armfapFields      :: !(Maybe Text)
    , _armfapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetMultipleForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'armfapQuotaUser'
--
-- * 'armfapPrettyPrint'
--
-- * 'armfapUserIp'
--
-- * 'armfapKey'
--
-- * 'armfapOauthToken'
--
-- * 'armfapFields'
--
-- * 'armfapAlt'
achievementsResetMultipleForAllPlayers'
    :: AchievementsResetMultipleForAllPlayers'
achievementsResetMultipleForAllPlayers' =
    AchievementsResetMultipleForAllPlayers'
    { _armfapQuotaUser = Nothing
    , _armfapPrettyPrint = True
    , _armfapUserIp = Nothing
    , _armfapKey = Nothing
    , _armfapOauthToken = Nothing
    , _armfapFields = Nothing
    , _armfapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
armfapQuotaUser :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Text)
armfapQuotaUser
  = lens _armfapQuotaUser
      (\ s a -> s{_armfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
armfapPrettyPrint :: Lens' AchievementsResetMultipleForAllPlayers' Bool
armfapPrettyPrint
  = lens _armfapPrettyPrint
      (\ s a -> s{_armfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
armfapUserIp :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Text)
armfapUserIp
  = lens _armfapUserIp (\ s a -> s{_armfapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
armfapKey :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Text)
armfapKey
  = lens _armfapKey (\ s a -> s{_armfapKey = a})

-- | OAuth 2.0 token for the current user.
armfapOauthToken :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Text)
armfapOauthToken
  = lens _armfapOauthToken
      (\ s a -> s{_armfapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
armfapFields :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Text)
armfapFields
  = lens _armfapFields (\ s a -> s{_armfapFields = a})

-- | Data format for the response.
armfapAlt :: Lens' AchievementsResetMultipleForAllPlayers' Alt
armfapAlt
  = lens _armfapAlt (\ s a -> s{_armfapAlt = a})

instance GoogleRequest
         AchievementsResetMultipleForAllPlayers' where
        type Rs AchievementsResetMultipleForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          AchievementsResetMultipleForAllPlayers'{..}
          = go _armfapQuotaUser (Just _armfapPrettyPrint)
              _armfapUserIp
              _armfapKey
              _armfapOauthToken
              _armfapFields
              (Just _armfapAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AchievementsResetMultipleForAllPlayersAPI)
                      r
                      u
