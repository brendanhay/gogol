{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesConfiguration.LeaderboardConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of the leaderboard configurations in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.list@.
module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.List
    (
    -- * REST Resource
      LeaderboardConfigurationsListAPI

    -- * Creating a Request
    , leaderboardConfigurationsList'
    , LeaderboardConfigurationsList'

    -- * Request Lenses
    , lclQuotaUser
    , lclPrettyPrint
    , lclUserIp
    , lclApplicationId
    , lclKey
    , lclPageToken
    , lclOauthToken
    , lclMaxResults
    , lclFields
    , lclAlt
    ) where

import           Network.Google.Games.Configuration.Types
import           Network.Google.Prelude

-- | A resource alias for gamesConfiguration.leaderboardConfigurations.list which the
-- 'LeaderboardConfigurationsList'' request conforms to.
type LeaderboardConfigurationsListAPI =
     "applications" :>
       Capture "applicationId" Text :>
         "leaderboards" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Nat :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] LeaderboardConfigurationListResponse

-- | Returns a list of the leaderboard configurations in this application.
--
-- /See:/ 'leaderboardConfigurationsList'' smart constructor.
data LeaderboardConfigurationsList' = LeaderboardConfigurationsList'
    { _lclQuotaUser     :: !(Maybe Text)
    , _lclPrettyPrint   :: !Bool
    , _lclUserIp        :: !(Maybe Text)
    , _lclApplicationId :: !Text
    , _lclKey           :: !(Maybe Text)
    , _lclPageToken     :: !(Maybe Text)
    , _lclOauthToken    :: !(Maybe Text)
    , _lclMaxResults    :: !(Maybe Nat)
    , _lclFields        :: !(Maybe Text)
    , _lclAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lclQuotaUser'
--
-- * 'lclPrettyPrint'
--
-- * 'lclUserIp'
--
-- * 'lclApplicationId'
--
-- * 'lclKey'
--
-- * 'lclPageToken'
--
-- * 'lclOauthToken'
--
-- * 'lclMaxResults'
--
-- * 'lclFields'
--
-- * 'lclAlt'
leaderboardConfigurationsList'
    :: Text -- ^ 'applicationId'
    -> LeaderboardConfigurationsList'
leaderboardConfigurationsList' pLclApplicationId_ =
    LeaderboardConfigurationsList'
    { _lclQuotaUser = Nothing
    , _lclPrettyPrint = True
    , _lclUserIp = Nothing
    , _lclApplicationId = pLclApplicationId_
    , _lclKey = Nothing
    , _lclPageToken = Nothing
    , _lclOauthToken = Nothing
    , _lclMaxResults = Nothing
    , _lclFields = Nothing
    , _lclAlt = JSON
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
lclUserIp :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclUserIp
  = lens _lclUserIp (\ s a -> s{_lclUserIp = a})

-- | The application ID from the Google Play developer console.
lclApplicationId :: Lens' LeaderboardConfigurationsList' Text
lclApplicationId
  = lens _lclApplicationId
      (\ s a -> s{_lclApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lclKey :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclKey = lens _lclKey (\ s a -> s{_lclKey = a})

-- | The token returned by the previous request.
lclPageToken :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclPageToken
  = lens _lclPageToken (\ s a -> s{_lclPageToken = a})

-- | OAuth 2.0 token for the current user.
lclOauthToken :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclOauthToken
  = lens _lclOauthToken
      (\ s a -> s{_lclOauthToken = a})

-- | The maximum number of resource configurations to return in the response,
-- used for paging. For any response, the actual number of resources
-- returned may be less than the specified maxResults.
lclMaxResults :: Lens' LeaderboardConfigurationsList' (Maybe Natural)
lclMaxResults
  = lens _lclMaxResults
      (\ s a -> s{_lclMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
lclFields :: Lens' LeaderboardConfigurationsList' (Maybe Text)
lclFields
  = lens _lclFields (\ s a -> s{_lclFields = a})

-- | Data format for the response.
lclAlt :: Lens' LeaderboardConfigurationsList' Alt
lclAlt = lens _lclAlt (\ s a -> s{_lclAlt = a})

instance GoogleRequest LeaderboardConfigurationsList'
         where
        type Rs LeaderboardConfigurationsList' =
             LeaderboardConfigurationListResponse
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsList'{..}
          = go _lclQuotaUser (Just _lclPrettyPrint) _lclUserIp
              _lclApplicationId
              _lclKey
              _lclPageToken
              _lclOauthToken
              _lclMaxResults
              _lclFields
              (Just _lclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LeaderboardConfigurationsListAPI)
                      r
                      u
