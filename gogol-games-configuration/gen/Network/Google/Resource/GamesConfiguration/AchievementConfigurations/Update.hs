{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the metadata of the achievement configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsUpdate@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update
    (
    -- * REST Resource
      AchievementConfigurationsUpdateResource

    -- * Creating a Request
    , achievementConfigurationsUpdate'
    , AchievementConfigurationsUpdate'

    -- * Request Lenses
    , acuQuotaUser
    , acuPrettyPrint
    , acuAchievementId
    , acuUserIP
    , acuPayload
    , acuKey
    , acuOAuthToken
    , acuFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsUpdate@ which the
-- 'AchievementConfigurationsUpdate'' request conforms to.
type AchievementConfigurationsUpdateResource =
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
                         Put '[JSON] AchievementConfiguration

-- | Update the metadata of the achievement configuration with the given ID.
--
-- /See:/ 'achievementConfigurationsUpdate'' smart constructor.
data AchievementConfigurationsUpdate' = AchievementConfigurationsUpdate'
    { _acuQuotaUser     :: !(Maybe Text)
    , _acuPrettyPrint   :: !Bool
    , _acuAchievementId :: !Text
    , _acuUserIP        :: !(Maybe Text)
    , _acuPayload       :: !AchievementConfiguration
    , _acuKey           :: !(Maybe Key)
    , _acuOAuthToken    :: !(Maybe OAuthToken)
    , _acuFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuQuotaUser'
--
-- * 'acuPrettyPrint'
--
-- * 'acuAchievementId'
--
-- * 'acuUserIP'
--
-- * 'acuPayload'
--
-- * 'acuKey'
--
-- * 'acuOAuthToken'
--
-- * 'acuFields'
achievementConfigurationsUpdate'
    :: Text -- ^ 'achievementId'
    -> AchievementConfiguration -- ^ 'payload'
    -> AchievementConfigurationsUpdate'
achievementConfigurationsUpdate' pAcuAchievementId_ pAcuPayload_ =
    AchievementConfigurationsUpdate'
    { _acuQuotaUser = Nothing
    , _acuPrettyPrint = True
    , _acuAchievementId = pAcuAchievementId_
    , _acuUserIP = Nothing
    , _acuPayload = pAcuPayload_
    , _acuKey = Nothing
    , _acuOAuthToken = Nothing
    , _acuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acuQuotaUser :: Lens' AchievementConfigurationsUpdate' (Maybe Text)
acuQuotaUser
  = lens _acuQuotaUser (\ s a -> s{_acuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acuPrettyPrint :: Lens' AchievementConfigurationsUpdate' Bool
acuPrettyPrint
  = lens _acuPrettyPrint
      (\ s a -> s{_acuPrettyPrint = a})

-- | The ID of the achievement used by this method.
acuAchievementId :: Lens' AchievementConfigurationsUpdate' Text
acuAchievementId
  = lens _acuAchievementId
      (\ s a -> s{_acuAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acuUserIP :: Lens' AchievementConfigurationsUpdate' (Maybe Text)
acuUserIP
  = lens _acuUserIP (\ s a -> s{_acuUserIP = a})

-- | Multipart request metadata.
acuPayload :: Lens' AchievementConfigurationsUpdate' AchievementConfiguration
acuPayload
  = lens _acuPayload (\ s a -> s{_acuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acuKey :: Lens' AchievementConfigurationsUpdate' (Maybe Key)
acuKey = lens _acuKey (\ s a -> s{_acuKey = a})

-- | OAuth 2.0 token for the current user.
acuOAuthToken :: Lens' AchievementConfigurationsUpdate' (Maybe OAuthToken)
acuOAuthToken
  = lens _acuOAuthToken
      (\ s a -> s{_acuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acuFields :: Lens' AchievementConfigurationsUpdate' (Maybe Text)
acuFields
  = lens _acuFields (\ s a -> s{_acuFields = a})

instance GoogleAuth AchievementConfigurationsUpdate'
         where
        authKey = acuKey . _Just
        authToken = acuOAuthToken . _Just

instance GoogleRequest
         AchievementConfigurationsUpdate' where
        type Rs AchievementConfigurationsUpdate' =
             AchievementConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsUpdate'{..}
          = go _acuAchievementId _acuQuotaUser
              (Just _acuPrettyPrint)
              _acuUserIP
              _acuFields
              _acuKey
              _acuOAuthToken
              (Just AltJSON)
              _acuPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AchievementConfigurationsUpdateResource)
                      r
                      u
