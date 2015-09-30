{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the metadata of the achievement configuration with the given
-- ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsGet@.
module GamesConfiguration.AchievementConfigurations.Get
    (
    -- * REST Resource
      AchievementConfigurationsGetAPI

    -- * Creating a Request
    , achievementConfigurationsGet
    , AchievementConfigurationsGet

    -- * Request Lenses
    , acgQuotaUser
    , acgPrettyPrint
    , acgAchievementId
    , acgUserIp
    , acgKey
    , acgOauthToken
    , acgFields
    , acgAlt
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsGet@ which the
-- 'AchievementConfigurationsGet' request conforms to.
type AchievementConfigurationsGetAPI =
     "achievements" :>
       Capture "achievementId" Text :>
         Get '[JSON] AchievementConfiguration

-- | Retrieves the metadata of the achievement configuration with the given
-- ID.
--
-- /See:/ 'achievementConfigurationsGet' smart constructor.
data AchievementConfigurationsGet = AchievementConfigurationsGet
    { _acgQuotaUser     :: !(Maybe Text)
    , _acgPrettyPrint   :: !Bool
    , _acgAchievementId :: !Text
    , _acgUserIp        :: !(Maybe Text)
    , _acgKey           :: !(Maybe Text)
    , _acgOauthToken    :: !(Maybe Text)
    , _acgFields        :: !(Maybe Text)
    , _acgAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgQuotaUser'
--
-- * 'acgPrettyPrint'
--
-- * 'acgAchievementId'
--
-- * 'acgUserIp'
--
-- * 'acgKey'
--
-- * 'acgOauthToken'
--
-- * 'acgFields'
--
-- * 'acgAlt'
achievementConfigurationsGet
    :: Text -- ^ 'achievementId'
    -> AchievementConfigurationsGet
achievementConfigurationsGet pAcgAchievementId_ =
    AchievementConfigurationsGet
    { _acgQuotaUser = Nothing
    , _acgPrettyPrint = True
    , _acgAchievementId = pAcgAchievementId_
    , _acgUserIp = Nothing
    , _acgKey = Nothing
    , _acgOauthToken = Nothing
    , _acgFields = Nothing
    , _acgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acgQuotaUser :: Lens' AchievementConfigurationsGet' (Maybe Text)
acgQuotaUser
  = lens _acgQuotaUser (\ s a -> s{_acgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acgPrettyPrint :: Lens' AchievementConfigurationsGet' Bool
acgPrettyPrint
  = lens _acgPrettyPrint
      (\ s a -> s{_acgPrettyPrint = a})

-- | The ID of the achievement used by this method.
acgAchievementId :: Lens' AchievementConfigurationsGet' Text
acgAchievementId
  = lens _acgAchievementId
      (\ s a -> s{_acgAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acgUserIp :: Lens' AchievementConfigurationsGet' (Maybe Text)
acgUserIp
  = lens _acgUserIp (\ s a -> s{_acgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acgKey :: Lens' AchievementConfigurationsGet' (Maybe Text)
acgKey = lens _acgKey (\ s a -> s{_acgKey = a})

-- | OAuth 2.0 token for the current user.
acgOauthToken :: Lens' AchievementConfigurationsGet' (Maybe Text)
acgOauthToken
  = lens _acgOauthToken
      (\ s a -> s{_acgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acgFields :: Lens' AchievementConfigurationsGet' (Maybe Text)
acgFields
  = lens _acgFields (\ s a -> s{_acgFields = a})

-- | Data format for the response.
acgAlt :: Lens' AchievementConfigurationsGet' Text
acgAlt = lens _acgAlt (\ s a -> s{_acgAlt = a})

instance GoogleRequest AchievementConfigurationsGet'
         where
        type Rs AchievementConfigurationsGet' =
             AchievementConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u AchievementConfigurationsGet{..}
          = go _acgQuotaUser _acgPrettyPrint _acgAchievementId
              _acgUserIp
              _acgKey
              _acgOauthToken
              _acgFields
              _acgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementConfigurationsGetAPI)
                      r
                      u
