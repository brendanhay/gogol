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
    , adlUserIP
    , adlKey
    , adlLanguage
    , adlPageToken
    , adlOAuthToken
    , adlMaxResults
    , adlFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementDefinitionsList@ method which the
-- 'AchievementDefinitionsList'' request conforms to.
type AchievementDefinitionsListResource =
     "achievements" :>
       QueryParam "language" Text :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AchievementDefinitionsListResponse

-- | Lists all the achievement definitions for your application.
--
-- /See:/ 'achievementDefinitionsList'' smart constructor.
data AchievementDefinitionsList' = AchievementDefinitionsList'
    { _adlQuotaUser   :: !(Maybe Text)
    , _adlPrettyPrint :: !Bool
    , _adlUserIP      :: !(Maybe Text)
    , _adlKey         :: !(Maybe AuthKey)
    , _adlLanguage    :: !(Maybe Text)
    , _adlPageToken   :: !(Maybe Text)
    , _adlOAuthToken  :: !(Maybe OAuthToken)
    , _adlMaxResults  :: !(Maybe Int32)
    , _adlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementDefinitionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adlQuotaUser'
--
-- * 'adlPrettyPrint'
--
-- * 'adlUserIP'
--
-- * 'adlKey'
--
-- * 'adlLanguage'
--
-- * 'adlPageToken'
--
-- * 'adlOAuthToken'
--
-- * 'adlMaxResults'
--
-- * 'adlFields'
achievementDefinitionsList'
    :: AchievementDefinitionsList'
achievementDefinitionsList' =
    AchievementDefinitionsList'
    { _adlQuotaUser = Nothing
    , _adlPrettyPrint = True
    , _adlUserIP = Nothing
    , _adlKey = Nothing
    , _adlLanguage = Nothing
    , _adlPageToken = Nothing
    , _adlOAuthToken = Nothing
    , _adlMaxResults = Nothing
    , _adlFields = Nothing
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
adlUserIP :: Lens' AchievementDefinitionsList' (Maybe Text)
adlUserIP
  = lens _adlUserIP (\ s a -> s{_adlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adlKey :: Lens' AchievementDefinitionsList' (Maybe AuthKey)
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
adlOAuthToken :: Lens' AchievementDefinitionsList' (Maybe OAuthToken)
adlOAuthToken
  = lens _adlOAuthToken
      (\ s a -> s{_adlOAuthToken = a})

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

instance GoogleAuth AchievementDefinitionsList' where
        _AuthKey = adlKey . _Just
        _AuthToken = adlOAuthToken . _Just

instance GoogleRequest AchievementDefinitionsList'
         where
        type Rs AchievementDefinitionsList' =
             AchievementDefinitionsListResponse
        request = requestWith gamesRequest
        requestWith rq AchievementDefinitionsList'{..}
          = go _adlLanguage _adlPageToken _adlMaxResults
              _adlQuotaUser
              (Just _adlPrettyPrint)
              _adlUserIP
              _adlFields
              _adlKey
              _adlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AchievementDefinitionsListResource)
                      rq
