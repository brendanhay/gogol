{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesManagement.Achievements.ResetAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all achievements for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.achievements.resetAll@.
module Network.Google.API.GamesManagement.Achievements.ResetAll
    (
    -- * REST Resource
      AchievementsResetAllAPI

    -- * Creating a Request
    , achievementsResetAll'
    , AchievementsResetAll'

    -- * Request Lenses
    , araQuotaUser
    , araPrettyPrint
    , araUserIp
    , araKey
    , araOauthToken
    , araFields
    , araAlt
    ) where

import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

-- | A resource alias for gamesManagement.achievements.resetAll which the
-- 'AchievementsResetAll'' request conforms to.
type AchievementsResetAllAPI =
     "achievements" :>
       "reset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] AchievementResetAllResponse

-- | Resets all achievements for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ 'achievementsResetAll'' smart constructor.
data AchievementsResetAll' = AchievementsResetAll'
    { _araQuotaUser   :: !(Maybe Text)
    , _araPrettyPrint :: !Bool
    , _araUserIp      :: !(Maybe Text)
    , _araKey         :: !(Maybe Text)
    , _araOauthToken  :: !(Maybe Text)
    , _araFields      :: !(Maybe Text)
    , _araAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'araQuotaUser'
--
-- * 'araPrettyPrint'
--
-- * 'araUserIp'
--
-- * 'araKey'
--
-- * 'araOauthToken'
--
-- * 'araFields'
--
-- * 'araAlt'
achievementsResetAll'
    :: AchievementsResetAll'
achievementsResetAll' =
    AchievementsResetAll'
    { _araQuotaUser = Nothing
    , _araPrettyPrint = True
    , _araUserIp = Nothing
    , _araKey = Nothing
    , _araOauthToken = Nothing
    , _araFields = Nothing
    , _araAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
araQuotaUser :: Lens' AchievementsResetAll' (Maybe Text)
araQuotaUser
  = lens _araQuotaUser (\ s a -> s{_araQuotaUser = a})

-- | Returns response with indentations and line breaks.
araPrettyPrint :: Lens' AchievementsResetAll' Bool
araPrettyPrint
  = lens _araPrettyPrint
      (\ s a -> s{_araPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
araUserIp :: Lens' AchievementsResetAll' (Maybe Text)
araUserIp
  = lens _araUserIp (\ s a -> s{_araUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
araKey :: Lens' AchievementsResetAll' (Maybe Text)
araKey = lens _araKey (\ s a -> s{_araKey = a})

-- | OAuth 2.0 token for the current user.
araOauthToken :: Lens' AchievementsResetAll' (Maybe Text)
araOauthToken
  = lens _araOauthToken
      (\ s a -> s{_araOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
araFields :: Lens' AchievementsResetAll' (Maybe Text)
araFields
  = lens _araFields (\ s a -> s{_araFields = a})

-- | Data format for the response.
araAlt :: Lens' AchievementsResetAll' Alt
araAlt = lens _araAlt (\ s a -> s{_araAlt = a})

instance GoogleRequest AchievementsResetAll' where
        type Rs AchievementsResetAll' =
             AchievementResetAllResponse
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u AchievementsResetAll'{..}
          = go _araQuotaUser (Just _araPrettyPrint) _araUserIp
              _araKey
              _araOauthToken
              _araFields
              (Just _araAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsResetAllAPI)
                      r
                      u
