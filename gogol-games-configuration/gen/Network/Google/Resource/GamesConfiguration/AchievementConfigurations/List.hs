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
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of the achievement configurations in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsList@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
    (
    -- * REST Resource
      AchievementConfigurationsListResource

    -- * Creating a Request
    , achievementConfigurationsList'
    , AchievementConfigurationsList'

    -- * Request Lenses
    , aclQuotaUser
    , aclPrettyPrint
    , aclUserIP
    , aclApplicationId
    , aclKey
    , aclPageToken
    , aclOAuthToken
    , aclMaxResults
    , aclFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsList@ which the
-- 'AchievementConfigurationsList'' request conforms to.
type AchievementConfigurationsListResource =
     "applications" :>
       Capture "applicationId" Text :>
         "achievements" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AchievementConfigurationListResponse

-- | Returns a list of the achievement configurations in this application.
--
-- /See:/ 'achievementConfigurationsList'' smart constructor.
data AchievementConfigurationsList' = AchievementConfigurationsList'
    { _aclQuotaUser     :: !(Maybe Text)
    , _aclPrettyPrint   :: !Bool
    , _aclUserIP        :: !(Maybe Text)
    , _aclApplicationId :: !Text
    , _aclKey           :: !(Maybe AuthKey)
    , _aclPageToken     :: !(Maybe Text)
    , _aclOAuthToken    :: !(Maybe OAuthToken)
    , _aclMaxResults    :: !(Maybe Int32)
    , _aclFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclQuotaUser'
--
-- * 'aclPrettyPrint'
--
-- * 'aclUserIP'
--
-- * 'aclApplicationId'
--
-- * 'aclKey'
--
-- * 'aclPageToken'
--
-- * 'aclOAuthToken'
--
-- * 'aclMaxResults'
--
-- * 'aclFields'
achievementConfigurationsList'
    :: Text -- ^ 'applicationId'
    -> AchievementConfigurationsList'
achievementConfigurationsList' pAclApplicationId_ =
    AchievementConfigurationsList'
    { _aclQuotaUser = Nothing
    , _aclPrettyPrint = True
    , _aclUserIP = Nothing
    , _aclApplicationId = pAclApplicationId_
    , _aclKey = Nothing
    , _aclPageToken = Nothing
    , _aclOAuthToken = Nothing
    , _aclMaxResults = Nothing
    , _aclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aclQuotaUser :: Lens' AchievementConfigurationsList' (Maybe Text)
aclQuotaUser
  = lens _aclQuotaUser (\ s a -> s{_aclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aclPrettyPrint :: Lens' AchievementConfigurationsList' Bool
aclPrettyPrint
  = lens _aclPrettyPrint
      (\ s a -> s{_aclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aclUserIP :: Lens' AchievementConfigurationsList' (Maybe Text)
aclUserIP
  = lens _aclUserIP (\ s a -> s{_aclUserIP = a})

-- | The application ID from the Google Play developer console.
aclApplicationId :: Lens' AchievementConfigurationsList' Text
aclApplicationId
  = lens _aclApplicationId
      (\ s a -> s{_aclApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aclKey :: Lens' AchievementConfigurationsList' (Maybe AuthKey)
aclKey = lens _aclKey (\ s a -> s{_aclKey = a})

-- | The token returned by the previous request.
aclPageToken :: Lens' AchievementConfigurationsList' (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | OAuth 2.0 token for the current user.
aclOAuthToken :: Lens' AchievementConfigurationsList' (Maybe OAuthToken)
aclOAuthToken
  = lens _aclOAuthToken
      (\ s a -> s{_aclOAuthToken = a})

-- | The maximum number of resource configurations to return in the response,
-- used for paging. For any response, the actual number of resources
-- returned may be less than the specified maxResults.
aclMaxResults :: Lens' AchievementConfigurationsList' (Maybe Int32)
aclMaxResults
  = lens _aclMaxResults
      (\ s a -> s{_aclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aclFields :: Lens' AchievementConfigurationsList' (Maybe Text)
aclFields
  = lens _aclFields (\ s a -> s{_aclFields = a})

instance GoogleAuth AchievementConfigurationsList'
         where
        _AuthKey = aclKey . _Just
        _AuthToken = aclOAuthToken . _Just

instance GoogleRequest AchievementConfigurationsList'
         where
        type Rs AchievementConfigurationsList' =
             AchievementConfigurationListResponse
        request = requestWith gamesConfigurationRequest
        requestWith rq AchievementConfigurationsList'{..}
          = go _aclApplicationId _aclPageToken _aclMaxResults
              _aclQuotaUser
              (Just _aclPrettyPrint)
              _aclUserIP
              _aclFields
              _aclKey
              _aclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AchievementConfigurationsListResource)
                      rq
