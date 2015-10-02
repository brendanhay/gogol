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
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Patch
    (
    -- * REST Resource
      AchievementConfigurationsPatchResource

    -- * Creating a Request
    , achievementConfigurationsPatch'
    , AchievementConfigurationsPatch'

    -- * Request Lenses
    , acpQuotaUser
    , acpPrettyPrint
    , acpAchievementId
    , acpUserIP
    , acpKey
    , acpAchievementConfiguration
    , acpOAuthToken
    , acpFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsPatch@ which the
-- 'AchievementConfigurationsPatch'' request conforms to.
type AchievementConfigurationsPatchResource =
     "achievements" :>
       Capture "achievementId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AchievementConfiguration :>
                         Patch '[JSON] AchievementConfiguration

-- | Update the metadata of the achievement configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ 'achievementConfigurationsPatch'' smart constructor.
data AchievementConfigurationsPatch' = AchievementConfigurationsPatch'
    { _acpQuotaUser                :: !(Maybe Text)
    , _acpPrettyPrint              :: !Bool
    , _acpAchievementId            :: !Text
    , _acpUserIP                   :: !(Maybe Text)
    , _acpKey                      :: !(Maybe Key)
    , _acpAchievementConfiguration :: !AchievementConfiguration
    , _acpOAuthToken               :: !(Maybe OAuthToken)
    , _acpFields                   :: !(Maybe Text)
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
-- * 'acpUserIP'
--
-- * 'acpKey'
--
-- * 'acpAchievementConfiguration'
--
-- * 'acpOAuthToken'
--
-- * 'acpFields'
achievementConfigurationsPatch'
    :: Text -- ^ 'achievementId'
    -> AchievementConfiguration -- ^ 'AchievementConfiguration'
    -> AchievementConfigurationsPatch'
achievementConfigurationsPatch' pAcpAchievementId_ pAcpAchievementConfiguration_ =
    AchievementConfigurationsPatch'
    { _acpQuotaUser = Nothing
    , _acpPrettyPrint = True
    , _acpAchievementId = pAcpAchievementId_
    , _acpUserIP = Nothing
    , _acpKey = Nothing
    , _acpAchievementConfiguration = pAcpAchievementConfiguration_
    , _acpOAuthToken = Nothing
    , _acpFields = Nothing
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
acpUserIP :: Lens' AchievementConfigurationsPatch' (Maybe Text)
acpUserIP
  = lens _acpUserIP (\ s a -> s{_acpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acpKey :: Lens' AchievementConfigurationsPatch' (Maybe Key)
acpKey = lens _acpKey (\ s a -> s{_acpKey = a})

-- | Multipart request metadata.
acpAchievementConfiguration :: Lens' AchievementConfigurationsPatch' AchievementConfiguration
acpAchievementConfiguration
  = lens _acpAchievementConfiguration
      (\ s a -> s{_acpAchievementConfiguration = a})

-- | OAuth 2.0 token for the current user.
acpOAuthToken :: Lens' AchievementConfigurationsPatch' (Maybe OAuthToken)
acpOAuthToken
  = lens _acpOAuthToken
      (\ s a -> s{_acpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acpFields :: Lens' AchievementConfigurationsPatch' (Maybe Text)
acpFields
  = lens _acpFields (\ s a -> s{_acpFields = a})

instance GoogleAuth AchievementConfigurationsPatch'
         where
        authKey = acpKey . _Just
        authToken = acpOAuthToken . _Just

instance GoogleRequest
         AchievementConfigurationsPatch' where
        type Rs AchievementConfigurationsPatch' =
             AchievementConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsPatch'{..}
          = go _acpAchievementId _acpQuotaUser
              (Just _acpPrettyPrint)
              _acpUserIP
              _acpFields
              _acpKey
              _acpOAuthToken
              (Just AltJSON)
              _acpAchievementConfiguration
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AchievementConfigurationsPatchResource)
                      r
                      u
