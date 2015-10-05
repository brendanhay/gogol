{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of the leaderboard configurations in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationLeaderboardConfigurationsList@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
    (
    -- * REST Resource
      LeaderboardConfigurationsListResource

    -- * Creating a Request
    , leaderboardConfigurationsList'
    , LeaderboardConfigurationsList'

    -- * Request Lenses
    , lclQuotaUser
    , lclPrettyPrint
    , lclUserIP
    , lclApplicationId
    , lclKey
    , lclPageToken
    , lclOAuthToken
    , lclMaxResults
    , lclFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationLeaderboardConfigurationsList@ which the
-- 'LeaderboardConfigurationsList'' request conforms to.
type LeaderboardConfigurationsListResource =
     "applications" :>
       Capture "applicationId" Text :>
         "leaderboards" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] LeaderboardConfigurationListResponse

-- | Returns a list of the leaderboard configurations in this application.
--
-- /See:/ 'leaderboardConfigurationsList'' smart constructor.
data LeaderboardConfigurationsList' = LeaderboardConfigurationsList'
    { _lclQuotaUser     :: !(Maybe Text)
    , _lclPrettyPrint   :: !Bool
    , _lclUserIP        :: !(Maybe Text)
    , _lclApplicationId :: !Text
    , _lclKey           :: !(Maybe Key)
    , _lclPageToken     :: !(Maybe Text)
    , _lclOAuthToken    :: !(Maybe OAuthToken)
    , _lclMaxResults    :: !(Maybe Int32)
    , _lclFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lclQuotaUser'
--
-- * 'lclPrettyPrint'
--
-- * 'lclUserIP'
--
-- * 'lclApplicationId'
--
-- * 'lclKey'
--
-- * 'lclPageToken'
--
-- * 'lclOAuthToken'
--
-- * 'lclMaxResults'
--
-- * 'lclFields'
leaderboardConfigurationsList'
    :: Text -- ^ 'applicationId'
    -> LeaderboardConfigurationsList'
leaderboardConfigurationsList' pLclApplicationId_ =
    LeaderboardConfigurationsList'
    { _lclQuotaUser = Nothing
    , _lclPrettyPrint = True
    , _lclUserIP = Nothing
    , _lclApplicationId = pLclApplicationId_
    , _lclKey = Nothing
    , _lclPageToken = Nothing
    , _lclOAuthToken = Nothing
    , _lclMaxResults = Nothing
    , _lclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lclQuotaUser :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclQuotaUser
  = lens _lclQuotaUser (\ s a -> s{_lclQuotaUser = a})

-- | Returns response with indentations and line breaks.
lclPrettyPrint :: Lens' LeaderboardConfigurationsList' Bool
lclPrettyPrint
  = lens _lclPrettyPrint
      (\ s a -> s{_lclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lclUserIP :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclUserIP
  = lens _lclUserIP (\ s a -> s{_lclUserIP = a})

-- | The application ID from the Google Play developer console.
lclApplicationId :: Lens' LeaderboardConfigurationsList' Text
lclApplicationId
  = lens _lclApplicationId
      (\ s a -> s{_lclApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lclKey :: Lens' LeaderboardConfigurationsList' (Maybe Key)
lclKey = lens _lclKey (\ s a -> s{_lclKey = a})

-- | The token returned by the previous request.
lclPageToken :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclPageToken
  = lens _lclPageToken (\ s a -> s{_lclPageToken = a})

-- | OAuth 2.0 token for the current user.
lclOAuthToken :: Lens' LeaderboardConfigurationsList' (Maybe OAuthToken)
lclOAuthToken
  = lens _lclOAuthToken
      (\ s a -> s{_lclOAuthToken = a})

-- | The maximum number of resource configurations to return in the response,
-- used for paging. For any response, the actual number of resources
-- returned may be less than the specified maxResults.
lclMaxResults :: Lens' LeaderboardConfigurationsList' (Maybe Int32)
lclMaxResults
  = lens _lclMaxResults
      (\ s a -> s{_lclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lclFields :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclFields
  = lens _lclFields (\ s a -> s{_lclFields = a})

instance GoogleAuth LeaderboardConfigurationsList'
         where
        authKey = lclKey . _Just
        authToken = lclOAuthToken . _Just

instance GoogleRequest LeaderboardConfigurationsList'
         where
        type Rs LeaderboardConfigurationsList' =
             LeaderboardConfigurationListResponse
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsList'{..}
          = go _lclApplicationId _lclPageToken _lclMaxResults
              _lclQuotaUser
              (Just _lclPrettyPrint)
              _lclUserIP
              _lclFields
              _lclKey
              _lclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy LeaderboardConfigurationsListResource)
                      r
                      u
