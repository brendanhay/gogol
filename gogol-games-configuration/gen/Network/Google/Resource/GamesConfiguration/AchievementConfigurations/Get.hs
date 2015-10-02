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
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get
    (
    -- * REST Resource
      AchievementConfigurationsGetResource

    -- * Creating a Request
    , achievementConfigurationsGet'
    , AchievementConfigurationsGet'

    -- * Request Lenses
    , acgQuotaUser
    , acgPrettyPrint
    , acgAchievementId
    , acgUserIP
    , acgKey
    , acgOAuthToken
    , acgFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsGet@ which the
-- 'AchievementConfigurationsGet'' request conforms to.
type AchievementConfigurationsGetResource =
     "achievements" :>
       Capture "achievementId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] AchievementConfiguration

-- | Retrieves the metadata of the achievement configuration with the given
-- ID.
--
-- /See:/ 'achievementConfigurationsGet'' smart constructor.
data AchievementConfigurationsGet' = AchievementConfigurationsGet'
    { _acgQuotaUser     :: !(Maybe Text)
    , _acgPrettyPrint   :: !Bool
    , _acgAchievementId :: !Text
    , _acgUserIP        :: !(Maybe Text)
    , _acgKey           :: !(Maybe Key)
    , _acgOAuthToken    :: !(Maybe OAuthToken)
    , _acgFields        :: !(Maybe Text)
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
-- * 'acgUserIP'
--
-- * 'acgKey'
--
-- * 'acgOAuthToken'
--
-- * 'acgFields'
achievementConfigurationsGet'
    :: Text -- ^ 'achievementId'
    -> AchievementConfigurationsGet'
achievementConfigurationsGet' pAcgAchievementId_ =
    AchievementConfigurationsGet'
    { _acgQuotaUser = Nothing
    , _acgPrettyPrint = True
    , _acgAchievementId = pAcgAchievementId_
    , _acgUserIP = Nothing
    , _acgKey = Nothing
    , _acgOAuthToken = Nothing
    , _acgFields = Nothing
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
acgUserIP :: Lens' AchievementConfigurationsGet' (Maybe Text)
acgUserIP
  = lens _acgUserIP (\ s a -> s{_acgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acgKey :: Lens' AchievementConfigurationsGet' (Maybe Key)
acgKey = lens _acgKey (\ s a -> s{_acgKey = a})

-- | OAuth 2.0 token for the current user.
acgOAuthToken :: Lens' AchievementConfigurationsGet' (Maybe OAuthToken)
acgOAuthToken
  = lens _acgOAuthToken
      (\ s a -> s{_acgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acgFields :: Lens' AchievementConfigurationsGet' (Maybe Text)
acgFields
  = lens _acgFields (\ s a -> s{_acgFields = a})

instance GoogleAuth AchievementConfigurationsGet'
         where
        authKey = acgKey . _Just
        authToken = acgOAuthToken . _Just

instance GoogleRequest AchievementConfigurationsGet'
         where
        type Rs AchievementConfigurationsGet' =
             AchievementConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsGet'{..}
          = go _acgQuotaUser (Just _acgPrettyPrint)
              _acgAchievementId
              _acgUserIP
              _acgKey
              _acgOAuthToken
              _acgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementConfigurationsGetResource)
                      r
                      u
