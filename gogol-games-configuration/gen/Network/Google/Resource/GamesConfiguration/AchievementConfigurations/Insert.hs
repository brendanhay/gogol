{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert a new achievement configuration in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsInsert@.
module GamesConfiguration.AchievementConfigurations.Insert
    (
    -- * REST Resource
      AchievementConfigurationsInsertAPI

    -- * Creating a Request
    , achievementConfigurationsInsert
    , AchievementConfigurationsInsert

    -- * Request Lenses
    , aciQuotaUser
    , aciPrettyPrint
    , aciUserIp
    , aciApplicationId
    , aciKey
    , aciOauthToken
    , aciFields
    , aciAlt
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsInsert@ which the
-- 'AchievementConfigurationsInsert' request conforms to.
type AchievementConfigurationsInsertAPI =
     "applications" :>
       Capture "applicationId" Text :>
         "achievements" :>
           Post '[JSON] AchievementConfiguration

-- | Insert a new achievement configuration in this application.
--
-- /See:/ 'achievementConfigurationsInsert' smart constructor.
data AchievementConfigurationsInsert = AchievementConfigurationsInsert
    { _aciQuotaUser     :: !(Maybe Text)
    , _aciPrettyPrint   :: !Bool
    , _aciUserIp        :: !(Maybe Text)
    , _aciApplicationId :: !Text
    , _aciKey           :: !(Maybe Text)
    , _aciOauthToken    :: !(Maybe Text)
    , _aciFields        :: !(Maybe Text)
    , _aciAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aciQuotaUser'
--
-- * 'aciPrettyPrint'
--
-- * 'aciUserIp'
--
-- * 'aciApplicationId'
--
-- * 'aciKey'
--
-- * 'aciOauthToken'
--
-- * 'aciFields'
--
-- * 'aciAlt'
achievementConfigurationsInsert
    :: Text -- ^ 'applicationId'
    -> AchievementConfigurationsInsert
achievementConfigurationsInsert pAciApplicationId_ =
    AchievementConfigurationsInsert
    { _aciQuotaUser = Nothing
    , _aciPrettyPrint = True
    , _aciUserIp = Nothing
    , _aciApplicationId = pAciApplicationId_
    , _aciKey = Nothing
    , _aciOauthToken = Nothing
    , _aciFields = Nothing
    , _aciAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aciQuotaUser :: Lens' AchievementConfigurationsInsert' (Maybe Text)
aciQuotaUser
  = lens _aciQuotaUser (\ s a -> s{_aciQuotaUser = a})

-- | Returns response with indentations and line breaks.
aciPrettyPrint :: Lens' AchievementConfigurationsInsert' Bool
aciPrettyPrint
  = lens _aciPrettyPrint
      (\ s a -> s{_aciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aciUserIp :: Lens' AchievementConfigurationsInsert' (Maybe Text)
aciUserIp
  = lens _aciUserIp (\ s a -> s{_aciUserIp = a})

-- | The application ID from the Google Play developer console.
aciApplicationId :: Lens' AchievementConfigurationsInsert' Text
aciApplicationId
  = lens _aciApplicationId
      (\ s a -> s{_aciApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aciKey :: Lens' AchievementConfigurationsInsert' (Maybe Text)
aciKey = lens _aciKey (\ s a -> s{_aciKey = a})

-- | OAuth 2.0 token for the current user.
aciOauthToken :: Lens' AchievementConfigurationsInsert' (Maybe Text)
aciOauthToken
  = lens _aciOauthToken
      (\ s a -> s{_aciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aciFields :: Lens' AchievementConfigurationsInsert' (Maybe Text)
aciFields
  = lens _aciFields (\ s a -> s{_aciFields = a})

-- | Data format for the response.
aciAlt :: Lens' AchievementConfigurationsInsert' Text
aciAlt = lens _aciAlt (\ s a -> s{_aciAlt = a})

instance GoogleRequest
         AchievementConfigurationsInsert' where
        type Rs AchievementConfigurationsInsert' =
             AchievementConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsInsert{..}
          = go _aciQuotaUser _aciPrettyPrint _aciUserIp
              _aciApplicationId
              _aciKey
              _aciOauthToken
              _aciFields
              _aciAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementConfigurationsInsertAPI)
                      r
                      u
