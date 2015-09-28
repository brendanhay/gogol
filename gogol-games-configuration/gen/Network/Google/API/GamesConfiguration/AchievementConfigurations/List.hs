{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesConfiguration.AchievementConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of the achievement configurations in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.list@.
module Network.Google.API.GamesConfiguration.AchievementConfigurations.List
    (
    -- * REST Resource
      AchievementConfigurationsListAPI

    -- * Creating a Request
    , achievementConfigurationsList'
    , AchievementConfigurationsList'

    -- * Request Lenses
    , aclQuotaUser
    , aclPrettyPrint
    , aclUserIp
    , aclApplicationId
    , aclKey
    , aclPageToken
    , aclOauthToken
    , aclMaxResults
    , aclFields
    , aclAlt
    ) where

import           Network.Google.Games.Configuration.Types
import           Network.Google.Prelude

-- | A resource alias for gamesConfiguration.achievementConfigurations.list which the
-- 'AchievementConfigurationsList'' request conforms to.
type AchievementConfigurationsListAPI =
     "applications" :>
       Capture "applicationId" Text :>
         "achievements" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Nat :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] AchievementConfigurationListResponse

-- | Returns a list of the achievement configurations in this application.
--
-- /See:/ 'achievementConfigurationsList'' smart constructor.
data AchievementConfigurationsList' = AchievementConfigurationsList'
    { _aclQuotaUser     :: !(Maybe Text)
    , _aclPrettyPrint   :: !Bool
    , _aclUserIp        :: !(Maybe Text)
    , _aclApplicationId :: !Text
    , _aclKey           :: !(Maybe Text)
    , _aclPageToken     :: !(Maybe Text)
    , _aclOauthToken    :: !(Maybe Text)
    , _aclMaxResults    :: !(Maybe Nat)
    , _aclFields        :: !(Maybe Text)
    , _aclAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclQuotaUser'
--
-- * 'aclPrettyPrint'
--
-- * 'aclUserIp'
--
-- * 'aclApplicationId'
--
-- * 'aclKey'
--
-- * 'aclPageToken'
--
-- * 'aclOauthToken'
--
-- * 'aclMaxResults'
--
-- * 'aclFields'
--
-- * 'aclAlt'
achievementConfigurationsList'
    :: Text -- ^ 'applicationId'
    -> AchievementConfigurationsList'
achievementConfigurationsList' pAclApplicationId_ =
    AchievementConfigurationsList'
    { _aclQuotaUser = Nothing
    , _aclPrettyPrint = True
    , _aclUserIp = Nothing
    , _aclApplicationId = pAclApplicationId_
    , _aclKey = Nothing
    , _aclPageToken = Nothing
    , _aclOauthToken = Nothing
    , _aclMaxResults = Nothing
    , _aclFields = Nothing
    , _aclAlt = JSON
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
aclUserIp :: Lens' AchievementConfigurationsList' (Maybe Text)
aclUserIp
  = lens _aclUserIp (\ s a -> s{_aclUserIp = a})

-- | The application ID from the Google Play developer console.
aclApplicationId :: Lens' AchievementConfigurationsList' Text
aclApplicationId
  = lens _aclApplicationId
      (\ s a -> s{_aclApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aclKey :: Lens' AchievementConfigurationsList' (Maybe Text)
aclKey = lens _aclKey (\ s a -> s{_aclKey = a})

-- | The token returned by the previous request.
aclPageToken :: Lens' AchievementConfigurationsList' (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | OAuth 2.0 token for the current user.
aclOauthToken :: Lens' AchievementConfigurationsList' (Maybe Text)
aclOauthToken
  = lens _aclOauthToken
      (\ s a -> s{_aclOauthToken = a})

-- | The maximum number of resource configurations to return in the response,
-- used for paging. For any response, the actual number of resources
-- returned may be less than the specified maxResults.
aclMaxResults :: Lens' AchievementConfigurationsList' (Maybe Natural)
aclMaxResults
  = lens _aclMaxResults
      (\ s a -> s{_aclMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
aclFields :: Lens' AchievementConfigurationsList' (Maybe Text)
aclFields
  = lens _aclFields (\ s a -> s{_aclFields = a})

-- | Data format for the response.
aclAlt :: Lens' AchievementConfigurationsList' Alt
aclAlt = lens _aclAlt (\ s a -> s{_aclAlt = a})

instance GoogleRequest AchievementConfigurationsList'
         where
        type Rs AchievementConfigurationsList' =
             AchievementConfigurationListResponse
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsList'{..}
          = go _aclQuotaUser (Just _aclPrettyPrint) _aclUserIp
              _aclApplicationId
              _aclKey
              _aclPageToken
              _aclOauthToken
              _aclMaxResults
              _aclFields
              (Just _aclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementConfigurationsListAPI)
                      r
                      u
