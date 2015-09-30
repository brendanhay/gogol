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
-- Module      : Network.Google.Resource.Games.AchievementDefinitions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the achievement definitions for your application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesAchievementDefinitionsList@.
module Network.Google.Resource.Games.AchievementDefinitions.List
    (
    -- * REST Resource
      AchievementDefinitionsListResource

    -- * Creating a Request
    , achievementDefinitionsList'
    , AchievementDefinitionsList'

    -- * Request Lenses
    , adlQuotaUser
    , adlPrettyPrint
    , adlUserIp
    , adlKey
    , adlLanguage
    , adlPageToken
    , adlOauthToken
    , adlMaxResults
    , adlFields
    , adlAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementDefinitionsList@ which the
-- 'AchievementDefinitionsList'' request conforms to.
type AchievementDefinitionsListResource =
     "achievements" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] AchievementDefinitionsListResponse

-- | Lists all the achievement definitions for your application.
--
-- /See:/ 'achievementDefinitionsList'' smart constructor.
data AchievementDefinitionsList' = AchievementDefinitionsList'
    { _adlQuotaUser   :: !(Maybe Text)
    , _adlPrettyPrint :: !Bool
    , _adlUserIp      :: !(Maybe Text)
    , _adlKey         :: !(Maybe Text)
    , _adlLanguage    :: !(Maybe Text)
    , _adlPageToken   :: !(Maybe Text)
    , _adlOauthToken  :: !(Maybe Text)
    , _adlMaxResults  :: !(Maybe Int32)
    , _adlFields      :: !(Maybe Text)
    , _adlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementDefinitionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adlQuotaUser'
--
-- * 'adlPrettyPrint'
--
-- * 'adlUserIp'
--
-- * 'adlKey'
--
-- * 'adlLanguage'
--
-- * 'adlPageToken'
--
-- * 'adlOauthToken'
--
-- * 'adlMaxResults'
--
-- * 'adlFields'
--
-- * 'adlAlt'
achievementDefinitionsList'
    :: AchievementDefinitionsList'
achievementDefinitionsList' =
    AchievementDefinitionsList'
    { _adlQuotaUser = Nothing
    , _adlPrettyPrint = True
    , _adlUserIp = Nothing
    , _adlKey = Nothing
    , _adlLanguage = Nothing
    , _adlPageToken = Nothing
    , _adlOauthToken = Nothing
    , _adlMaxResults = Nothing
    , _adlFields = Nothing
    , _adlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adlQuotaUser :: Lens' AchievementDefinitionsList' (Maybe Text)
adlQuotaUser
  = lens _adlQuotaUser (\ s a -> s{_adlQuotaUser = a})

-- | Returns response with indentations and line breaks.
adlPrettyPrint :: Lens' AchievementDefinitionsList' Bool
adlPrettyPrint
  = lens _adlPrettyPrint
      (\ s a -> s{_adlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adlUserIp :: Lens' AchievementDefinitionsList' (Maybe Text)
adlUserIp
  = lens _adlUserIp (\ s a -> s{_adlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adlKey :: Lens' AchievementDefinitionsList' (Maybe Text)
adlKey = lens _adlKey (\ s a -> s{_adlKey = a})

-- | The preferred language to use for strings returned by this method.
adlLanguage :: Lens' AchievementDefinitionsList' (Maybe Text)
adlLanguage
  = lens _adlLanguage (\ s a -> s{_adlLanguage = a})

-- | The token returned by the previous request.
adlPageToken :: Lens' AchievementDefinitionsList' (Maybe Text)
adlPageToken
  = lens _adlPageToken (\ s a -> s{_adlPageToken = a})

-- | OAuth 2.0 token for the current user.
adlOauthToken :: Lens' AchievementDefinitionsList' (Maybe Text)
adlOauthToken
  = lens _adlOauthToken
      (\ s a -> s{_adlOauthToken = a})

-- | The maximum number of achievement resources to return in the response,
-- used for paging. For any response, the actual number of achievement
-- resources returned may be less than the specified maxResults.
adlMaxResults :: Lens' AchievementDefinitionsList' (Maybe Int32)
adlMaxResults
  = lens _adlMaxResults
      (\ s a -> s{_adlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
adlFields :: Lens' AchievementDefinitionsList' (Maybe Text)
adlFields
  = lens _adlFields (\ s a -> s{_adlFields = a})

-- | Data format for the response.
adlAlt :: Lens' AchievementDefinitionsList' Alt
adlAlt = lens _adlAlt (\ s a -> s{_adlAlt = a})

instance GoogleRequest AchievementDefinitionsList'
         where
        type Rs AchievementDefinitionsList' =
             AchievementDefinitionsListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementDefinitionsList'{..}
          = go _adlQuotaUser (Just _adlPrettyPrint) _adlUserIp
              _adlKey
              _adlLanguage
              _adlPageToken
              _adlOauthToken
              _adlMaxResults
              _adlFields
              (Just _adlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementDefinitionsListResource)
                      r
                      u
