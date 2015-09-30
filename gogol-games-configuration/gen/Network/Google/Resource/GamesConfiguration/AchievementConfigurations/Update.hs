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
    , acuUserIp
    , acuKey
    , acuOauthToken
    , acuFields
    , acuAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Put '[JSON] AchievementConfiguration

-- | Update the metadata of the achievement configuration with the given ID.
--
-- /See:/ 'achievementConfigurationsUpdate'' smart constructor.
data AchievementConfigurationsUpdate' = AchievementConfigurationsUpdate'
    { _acuQuotaUser     :: !(Maybe Text)
    , _acuPrettyPrint   :: !Bool
    , _acuAchievementId :: !Text
    , _acuUserIp        :: !(Maybe Text)
    , _acuKey           :: !(Maybe Text)
    , _acuOauthToken    :: !(Maybe Text)
    , _acuFields        :: !(Maybe Text)
    , _acuAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'acuUserIp'
--
-- * 'acuKey'
--
-- * 'acuOauthToken'
--
-- * 'acuFields'
--
-- * 'acuAlt'
achievementConfigurationsUpdate'
    :: Text -- ^ 'achievementId'
    -> AchievementConfigurationsUpdate'
achievementConfigurationsUpdate' pAcuAchievementId_ =
    AchievementConfigurationsUpdate'
    { _acuQuotaUser = Nothing
    , _acuPrettyPrint = True
    , _acuAchievementId = pAcuAchievementId_
    , _acuUserIp = Nothing
    , _acuKey = Nothing
    , _acuOauthToken = Nothing
    , _acuFields = Nothing
    , _acuAlt = JSON
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
acuUserIp :: Lens' AchievementConfigurationsUpdate' (Maybe Text)
acuUserIp
  = lens _acuUserIp (\ s a -> s{_acuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acuKey :: Lens' AchievementConfigurationsUpdate' (Maybe Text)
acuKey = lens _acuKey (\ s a -> s{_acuKey = a})

-- | OAuth 2.0 token for the current user.
acuOauthToken :: Lens' AchievementConfigurationsUpdate' (Maybe Text)
acuOauthToken
  = lens _acuOauthToken
      (\ s a -> s{_acuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acuFields :: Lens' AchievementConfigurationsUpdate' (Maybe Text)
acuFields
  = lens _acuFields (\ s a -> s{_acuFields = a})

-- | Data format for the response.
acuAlt :: Lens' AchievementConfigurationsUpdate' Alt
acuAlt = lens _acuAlt (\ s a -> s{_acuAlt = a})

instance GoogleRequest
         AchievementConfigurationsUpdate' where
        type Rs AchievementConfigurationsUpdate' =
             AchievementConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsUpdate'{..}
          = go _acuQuotaUser (Just _acuPrettyPrint)
              _acuAchievementId
              _acuUserIp
              _acuKey
              _acuOauthToken
              _acuFields
              (Just _acuAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AchievementConfigurationsUpdateResource)
                      r
                      u
