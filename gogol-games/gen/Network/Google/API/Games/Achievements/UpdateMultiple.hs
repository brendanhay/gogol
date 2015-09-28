{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Achievements.UpdateMultiple
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates multiple achievements for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.updateMultiple@.
module Network.Google.API.Games.Achievements.UpdateMultiple
    (
    -- * REST Resource
      AchievementsUpdateMultipleAPI

    -- * Creating a Request
    , achievementsUpdateMultiple'
    , AchievementsUpdateMultiple'

    -- * Request Lenses
    , aumQuotaUser
    , aumPrettyPrint
    , aumUserIp
    , aumKey
    , aumOauthToken
    , aumFields
    , aumAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.achievements.updateMultiple which the
-- 'AchievementsUpdateMultiple'' request conforms to.
type AchievementsUpdateMultipleAPI =
     "achievements" :>
       "updateMultiple" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] AchievementUpdateMultipleResponse

-- | Updates multiple achievements for the currently authenticated player.
--
-- /See:/ 'achievementsUpdateMultiple'' smart constructor.
data AchievementsUpdateMultiple' = AchievementsUpdateMultiple'
    { _aumQuotaUser   :: !(Maybe Text)
    , _aumPrettyPrint :: !Bool
    , _aumUserIp      :: !(Maybe Text)
    , _aumKey         :: !(Maybe Text)
    , _aumOauthToken  :: !(Maybe Text)
    , _aumFields      :: !(Maybe Text)
    , _aumAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsUpdateMultiple'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aumQuotaUser'
--
-- * 'aumPrettyPrint'
--
-- * 'aumUserIp'
--
-- * 'aumKey'
--
-- * 'aumOauthToken'
--
-- * 'aumFields'
--
-- * 'aumAlt'
achievementsUpdateMultiple'
    :: AchievementsUpdateMultiple'
achievementsUpdateMultiple' =
    AchievementsUpdateMultiple'
    { _aumQuotaUser = Nothing
    , _aumPrettyPrint = True
    , _aumUserIp = Nothing
    , _aumKey = Nothing
    , _aumOauthToken = Nothing
    , _aumFields = Nothing
    , _aumAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aumQuotaUser :: Lens' AchievementsUpdateMultiple' (Maybe Text)
aumQuotaUser
  = lens _aumQuotaUser (\ s a -> s{_aumQuotaUser = a})

-- | Returns response with indentations and line breaks.
aumPrettyPrint :: Lens' AchievementsUpdateMultiple' Bool
aumPrettyPrint
  = lens _aumPrettyPrint
      (\ s a -> s{_aumPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aumUserIp :: Lens' AchievementsUpdateMultiple' (Maybe Text)
aumUserIp
  = lens _aumUserIp (\ s a -> s{_aumUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aumKey :: Lens' AchievementsUpdateMultiple' (Maybe Text)
aumKey = lens _aumKey (\ s a -> s{_aumKey = a})

-- | OAuth 2.0 token for the current user.
aumOauthToken :: Lens' AchievementsUpdateMultiple' (Maybe Text)
aumOauthToken
  = lens _aumOauthToken
      (\ s a -> s{_aumOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aumFields :: Lens' AchievementsUpdateMultiple' (Maybe Text)
aumFields
  = lens _aumFields (\ s a -> s{_aumFields = a})

-- | Data format for the response.
aumAlt :: Lens' AchievementsUpdateMultiple' Alt
aumAlt = lens _aumAlt (\ s a -> s{_aumAlt = a})

instance GoogleRequest AchievementsUpdateMultiple'
         where
        type Rs AchievementsUpdateMultiple' =
             AchievementUpdateMultipleResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsUpdateMultiple'{..}
          = go _aumQuotaUser (Just _aumPrettyPrint) _aumUserIp
              _aumKey
              _aumOauthToken
              _aumFields
              (Just _aumAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsUpdateMultipleAPI)
                      r
                      u
