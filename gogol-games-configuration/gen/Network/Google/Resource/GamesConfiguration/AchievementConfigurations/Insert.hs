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
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert
    (
    -- * REST Resource
      AchievementConfigurationsInsertResource

    -- * Creating a Request
    , achievementConfigurationsInsert'
    , AchievementConfigurationsInsert'

    -- * Request Lenses
    , aciQuotaUser
    , aciPrettyPrint
    , aciUserIP
    , aciPayload
    , aciApplicationId
    , aciKey
    , aciOAuthToken
    , aciFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsInsert@ which the
-- 'AchievementConfigurationsInsert'' request conforms to.
type AchievementConfigurationsInsertResource =
     "applications" :>
       Capture "applicationId" Text :>
         "achievements" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AchievementConfiguration :>
                           Post '[JSON] AchievementConfiguration

-- | Insert a new achievement configuration in this application.
--
-- /See:/ 'achievementConfigurationsInsert'' smart constructor.
data AchievementConfigurationsInsert' = AchievementConfigurationsInsert'
    { _aciQuotaUser     :: !(Maybe Text)
    , _aciPrettyPrint   :: !Bool
    , _aciUserIP        :: !(Maybe Text)
    , _aciPayload       :: !AchievementConfiguration
    , _aciApplicationId :: !Text
    , _aciKey           :: !(Maybe AuthKey)
    , _aciOAuthToken    :: !(Maybe OAuthToken)
    , _aciFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aciQuotaUser'
--
-- * 'aciPrettyPrint'
--
-- * 'aciUserIP'
--
-- * 'aciPayload'
--
-- * 'aciApplicationId'
--
-- * 'aciKey'
--
-- * 'aciOAuthToken'
--
-- * 'aciFields'
achievementConfigurationsInsert'
    :: AchievementConfiguration -- ^ 'payload'
    -> Text -- ^ 'applicationId'
    -> AchievementConfigurationsInsert'
achievementConfigurationsInsert' pAciPayload_ pAciApplicationId_ =
    AchievementConfigurationsInsert'
    { _aciQuotaUser = Nothing
    , _aciPrettyPrint = True
    , _aciUserIP = Nothing
    , _aciPayload = pAciPayload_
    , _aciApplicationId = pAciApplicationId_
    , _aciKey = Nothing
    , _aciOAuthToken = Nothing
    , _aciFields = Nothing
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
aciUserIP :: Lens' AchievementConfigurationsInsert' (Maybe Text)
aciUserIP
  = lens _aciUserIP (\ s a -> s{_aciUserIP = a})

-- | Multipart request metadata.
aciPayload :: Lens' AchievementConfigurationsInsert' AchievementConfiguration
aciPayload
  = lens _aciPayload (\ s a -> s{_aciPayload = a})

-- | The application ID from the Google Play developer console.
aciApplicationId :: Lens' AchievementConfigurationsInsert' Text
aciApplicationId
  = lens _aciApplicationId
      (\ s a -> s{_aciApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aciKey :: Lens' AchievementConfigurationsInsert' (Maybe AuthKey)
aciKey = lens _aciKey (\ s a -> s{_aciKey = a})

-- | OAuth 2.0 token for the current user.
aciOAuthToken :: Lens' AchievementConfigurationsInsert' (Maybe OAuthToken)
aciOAuthToken
  = lens _aciOAuthToken
      (\ s a -> s{_aciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aciFields :: Lens' AchievementConfigurationsInsert' (Maybe Text)
aciFields
  = lens _aciFields (\ s a -> s{_aciFields = a})

instance GoogleAuth AchievementConfigurationsInsert'
         where
        authKey = aciKey . _Just
        authToken = aciOAuthToken . _Just

instance GoogleRequest
         AchievementConfigurationsInsert' where
        type Rs AchievementConfigurationsInsert' =
             AchievementConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsInsert'{..}
          = go _aciApplicationId _aciQuotaUser
              (Just _aciPrettyPrint)
              _aciUserIP
              _aciFields
              _aciKey
              _aciOAuthToken
              (Just AltJSON)
              _aciPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AchievementConfigurationsInsertResource)
                      r
                      u
