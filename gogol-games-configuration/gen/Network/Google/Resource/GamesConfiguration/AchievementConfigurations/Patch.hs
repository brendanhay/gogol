{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the metadata of the achievement configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsPatch@.
module GamesConfiguration.AchievementConfigurations.Patch
    (
    -- * REST Resource
      AchievementConfigurationsPatchAPI

    -- * Creating a Request
    , achievementConfigurationsPatch
    , AchievementConfigurationsPatch

    -- * Request Lenses
    , acpQuotaUser
    , acpPrettyPrint
    , acpAchievementId
    , acpUserIp
    , acpKey
    , acpOauthToken
    , acpFields
    , acpAlt
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsPatch@ which the
-- 'AchievementConfigurationsPatch' request conforms to.
type AchievementConfigurationsPatchAPI =
     "achievements" :>
       Capture "achievementId" Text :>
         Patch '[JSON] AchievementConfiguration

-- | Update the metadata of the achievement configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ 'achievementConfigurationsPatch' smart constructor.
data AchievementConfigurationsPatch = AchievementConfigurationsPatch
    { _acpQuotaUser     :: !(Maybe Text)
    , _acpPrettyPrint   :: !Bool
    , _acpAchievementId :: !Text
    , _acpUserIp        :: !(Maybe Text)
    , _acpKey           :: !(Maybe Text)
    , _acpOauthToken    :: !(Maybe Text)
    , _acpFields        :: !(Maybe Text)
    , _acpAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acpQuotaUser'
--
-- * 'acpPrettyPrint'
--
-- * 'acpAchievementId'
--
-- * 'acpUserIp'
--
-- * 'acpKey'
--
-- * 'acpOauthToken'
--
-- * 'acpFields'
--
-- * 'acpAlt'
achievementConfigurationsPatch
    :: Text -- ^ 'achievementId'
    -> AchievementConfigurationsPatch
achievementConfigurationsPatch pAcpAchievementId_ =
    AchievementConfigurationsPatch
    { _acpQuotaUser = Nothing
    , _acpPrettyPrint = True
    , _acpAchievementId = pAcpAchievementId_
    , _acpUserIp = Nothing
    , _acpKey = Nothing
    , _acpOauthToken = Nothing
    , _acpFields = Nothing
    , _acpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acpQuotaUser :: Lens' AchievementConfigurationsPatch' (Maybe Text)
acpQuotaUser
  = lens _acpQuotaUser (\ s a -> s{_acpQuotaUser = a})

-- | Returns response with indentations and line breaks.
acpPrettyPrint :: Lens' AchievementConfigurationsPatch' Bool
acpPrettyPrint
  = lens _acpPrettyPrint
      (\ s a -> s{_acpPrettyPrint = a})

-- | The ID of the achievement used by this method.
acpAchievementId :: Lens' AchievementConfigurationsPatch' Text
acpAchievementId
  = lens _acpAchievementId
      (\ s a -> s{_acpAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acpUserIp :: Lens' AchievementConfigurationsPatch' (Maybe Text)
acpUserIp
  = lens _acpUserIp (\ s a -> s{_acpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acpKey :: Lens' AchievementConfigurationsPatch' (Maybe Text)
acpKey = lens _acpKey (\ s a -> s{_acpKey = a})

-- | OAuth 2.0 token for the current user.
acpOauthToken :: Lens' AchievementConfigurationsPatch' (Maybe Text)
acpOauthToken
  = lens _acpOauthToken
      (\ s a -> s{_acpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acpFields :: Lens' AchievementConfigurationsPatch' (Maybe Text)
acpFields
  = lens _acpFields (\ s a -> s{_acpFields = a})

-- | Data format for the response.
acpAlt :: Lens' AchievementConfigurationsPatch' Text
acpAlt = lens _acpAlt (\ s a -> s{_acpAlt = a})

instance GoogleRequest
         AchievementConfigurationsPatch' where
        type Rs AchievementConfigurationsPatch' =
             AchievementConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsPatch{..}
          = go _acpQuotaUser _acpPrettyPrint _acpAchievementId
              _acpUserIp
              _acpKey
              _acpOauthToken
              _acpFields
              _acpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementConfigurationsPatchAPI)
                      r
                      u
