{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert a new leaderboard configuration in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.insert@.
module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Insert
    (
    -- * REST Resource
      LeaderboardConfigurationsInsertAPI

    -- * Creating a Request
    , leaderboardConfigurationsInsert'
    , LeaderboardConfigurationsInsert'

    -- * Request Lenses
    , lciQuotaUser
    , lciPrettyPrint
    , lciUserIp
    , lciApplicationId
    , lciKey
    , lciOauthToken
    , lciFields
    , lciAlt
    ) where

import           Network.Google.Games.Configuration.Types
import           Network.Google.Prelude

-- | A resource alias for gamesConfiguration.leaderboardConfigurations.insert which the
-- 'LeaderboardConfigurationsInsert'' request conforms to.
type LeaderboardConfigurationsInsertAPI =
     "applications" :>
       Capture "applicationId" Text :>
         "leaderboards" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] LeaderboardConfiguration

-- | Insert a new leaderboard configuration in this application.
--
-- /See:/ 'leaderboardConfigurationsInsert'' smart constructor.
data LeaderboardConfigurationsInsert' = LeaderboardConfigurationsInsert'
    { _lciQuotaUser     :: !(Maybe Text)
    , _lciPrettyPrint   :: !Bool
    , _lciUserIp        :: !(Maybe Text)
    , _lciApplicationId :: !Text
    , _lciKey           :: !(Maybe Text)
    , _lciOauthToken    :: !(Maybe Text)
    , _lciFields        :: !(Maybe Text)
    , _lciAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciQuotaUser'
--
-- * 'lciPrettyPrint'
--
-- * 'lciUserIp'
--
-- * 'lciApplicationId'
--
-- * 'lciKey'
--
-- * 'lciOauthToken'
--
-- * 'lciFields'
--
-- * 'lciAlt'
leaderboardConfigurationsInsert'
    :: Text -- ^ 'applicationId'
    -> LeaderboardConfigurationsInsert'
leaderboardConfigurationsInsert' pLciApplicationId_ =
    LeaderboardConfigurationsInsert'
    { _lciQuotaUser = Nothing
    , _lciPrettyPrint = True
    , _lciUserIp = Nothing
    , _lciApplicationId = pLciApplicationId_
    , _lciKey = Nothing
    , _lciOauthToken = Nothing
    , _lciFields = Nothing
    , _lciAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lciQuotaUser :: Lens' LeaderboardConfigurationsInsert' (Maybe Text)
lciQuotaUser
  = lens _lciQuotaUser (\ s a -> s{_lciQuotaUser = a})

-- | Returns response with indentations and line breaks.
lciPrettyPrint :: Lens' LeaderboardConfigurationsInsert' Bool
lciPrettyPrint
  = lens _lciPrettyPrint
      (\ s a -> s{_lciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lciUserIp :: Lens' LeaderboardConfigurationsInsert' (Maybe Text)
lciUserIp
  = lens _lciUserIp (\ s a -> s{_lciUserIp = a})

-- | The application ID from the Google Play developer console.
lciApplicationId :: Lens' LeaderboardConfigurationsInsert' Text
lciApplicationId
  = lens _lciApplicationId
      (\ s a -> s{_lciApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lciKey :: Lens' LeaderboardConfigurationsInsert' (Maybe Text)
lciKey = lens _lciKey (\ s a -> s{_lciKey = a})

-- | OAuth 2.0 token for the current user.
lciOauthToken :: Lens' LeaderboardConfigurationsInsert' (Maybe Text)
lciOauthToken
  = lens _lciOauthToken
      (\ s a -> s{_lciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lciFields :: Lens' LeaderboardConfigurationsInsert' (Maybe Text)
lciFields
  = lens _lciFields (\ s a -> s{_lciFields = a})

-- | Data format for the response.
lciAlt :: Lens' LeaderboardConfigurationsInsert' Alt
lciAlt = lens _lciAlt (\ s a -> s{_lciAlt = a})

instance GoogleRequest
         LeaderboardConfigurationsInsert' where
        type Rs LeaderboardConfigurationsInsert' =
             LeaderboardConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsInsert'{..}
          = go _lciQuotaUser (Just _lciPrettyPrint) _lciUserIp
              _lciApplicationId
              _lciKey
              _lciOauthToken
              _lciFields
              (Just _lciAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LeaderboardConfigurationsInsertAPI)
                      r
                      u
