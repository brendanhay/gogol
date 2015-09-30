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
-- Module      : Network.Google.Resource.Games.Achievements.Unlock
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unlocks this achievement for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesAchievementsUnlock@.
module Network.Google.Resource.Games.Achievements.Unlock
    (
    -- * REST Resource
      AchievementsUnlockResource

    -- * Creating a Request
    , achievementsUnlock'
    , AchievementsUnlock'

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auAchievementId
    , auUserIp
    , auKey
    , auOauthToken
    , auFields
    , auAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementsUnlock@ which the
-- 'AchievementsUnlock'' request conforms to.
type AchievementsUnlockResource =
     "achievements" :>
       Capture "achievementId" Text :>
         "unlock" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] AchievementUnlockResponse

-- | Unlocks this achievement for the currently authenticated player.
--
-- /See:/ 'achievementsUnlock'' smart constructor.
data AchievementsUnlock' = AchievementsUnlock'
    { _auQuotaUser     :: !(Maybe Text)
    , _auPrettyPrint   :: !Bool
    , _auAchievementId :: !Text
    , _auUserIp        :: !(Maybe Text)
    , _auKey           :: !(Maybe Text)
    , _auOauthToken    :: !(Maybe Text)
    , _auFields        :: !(Maybe Text)
    , _auAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsUnlock'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auAchievementId'
--
-- * 'auUserIp'
--
-- * 'auKey'
--
-- * 'auOauthToken'
--
-- * 'auFields'
--
-- * 'auAlt'
achievementsUnlock'
    :: Text -- ^ 'achievementId'
    -> AchievementsUnlock'
achievementsUnlock' pAuAchievementId_ =
    AchievementsUnlock'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auAchievementId = pAuAchievementId_
    , _auUserIp = Nothing
    , _auKey = Nothing
    , _auOauthToken = Nothing
    , _auFields = Nothing
    , _auAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AchievementsUnlock' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AchievementsUnlock' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | The ID of the achievement used by this method.
auAchievementId :: Lens' AchievementsUnlock' Text
auAchievementId
  = lens _auAchievementId
      (\ s a -> s{_auAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIp :: Lens' AchievementsUnlock' (Maybe Text)
auUserIp = lens _auUserIp (\ s a -> s{_auUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AchievementsUnlock' (Maybe Text)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | OAuth 2.0 token for the current user.
auOauthToken :: Lens' AchievementsUnlock' (Maybe Text)
auOauthToken
  = lens _auOauthToken (\ s a -> s{_auOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AchievementsUnlock' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

-- | Data format for the response.
auAlt :: Lens' AchievementsUnlock' Alt
auAlt = lens _auAlt (\ s a -> s{_auAlt = a})

instance GoogleRequest AchievementsUnlock' where
        type Rs AchievementsUnlock' =
             AchievementUnlockResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsUnlock'{..}
          = go _auQuotaUser (Just _auPrettyPrint)
              _auAchievementId
              _auUserIp
              _auKey
              _auOauthToken
              _auFields
              (Just _auAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsUnlockResource)
                      r
                      u
