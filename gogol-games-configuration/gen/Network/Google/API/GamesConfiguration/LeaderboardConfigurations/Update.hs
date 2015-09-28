{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.update@.
module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Update
    (
    -- * REST Resource
      LeaderboardConfigurationsUpdateAPI

    -- * Creating a Request
    , leaderboardConfigurationsUpdate'
    , LeaderboardConfigurationsUpdate'

    -- * Request Lenses
    , lcuQuotaUser
    , lcuPrettyPrint
    , lcuUserIp
    , lcuLeaderboardId
    , lcuKey
    , lcuOauthToken
    , lcuFields
    , lcuAlt
    ) where

import           Network.Google.Games.Configuration.Types
import           Network.Google.Prelude

-- | A resource alias for gamesConfiguration.leaderboardConfigurations.update which the
-- 'LeaderboardConfigurationsUpdate'' request conforms to.
type LeaderboardConfigurationsUpdateAPI =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Put '[JSON] LeaderboardConfiguration

-- | Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ 'leaderboardConfigurationsUpdate'' smart constructor.
data LeaderboardConfigurationsUpdate' = LeaderboardConfigurationsUpdate'
    { _lcuQuotaUser     :: !(Maybe Text)
    , _lcuPrettyPrint   :: !Bool
    , _lcuUserIp        :: !(Maybe Text)
    , _lcuLeaderboardId :: !Text
    , _lcuKey           :: !(Maybe Text)
    , _lcuOauthToken    :: !(Maybe Text)
    , _lcuFields        :: !(Maybe Text)
    , _lcuAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcuQuotaUser'
--
-- * 'lcuPrettyPrint'
--
-- * 'lcuUserIp'
--
-- * 'lcuLeaderboardId'
--
-- * 'lcuKey'
--
-- * 'lcuOauthToken'
--
-- * 'lcuFields'
--
-- * 'lcuAlt'
leaderboardConfigurationsUpdate'
    :: Text -- ^ 'leaderboardId'
    -> LeaderboardConfigurationsUpdate'
leaderboardConfigurationsUpdate' pLcuLeaderboardId_ =
    LeaderboardConfigurationsUpdate'
    { _lcuQuotaUser = Nothing
    , _lcuPrettyPrint = True
    , _lcuUserIp = Nothing
    , _lcuLeaderboardId = pLcuLeaderboardId_
    , _lcuKey = Nothing
    , _lcuOauthToken = Nothing
    , _lcuFields = Nothing
    , _lcuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lcuQuotaUser :: Lens' LeaderboardConfigurationsUpdate' (Maybe Text)
lcuQuotaUser
  = lens _lcuQuotaUser (\ s a -> s{_lcuQuotaUser = a})

-- | Returns response with indentations and line breaks.
lcuPrettyPrint :: Lens' LeaderboardConfigurationsUpdate' Bool
lcuPrettyPrint
  = lens _lcuPrettyPrint
      (\ s a -> s{_lcuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lcuUserIp :: Lens' LeaderboardConfigurationsUpdate' (Maybe Text)
lcuUserIp
  = lens _lcuUserIp (\ s a -> s{_lcuUserIp = a})

-- | The ID of the leaderboard.
lcuLeaderboardId :: Lens' LeaderboardConfigurationsUpdate' Text
lcuLeaderboardId
  = lens _lcuLeaderboardId
      (\ s a -> s{_lcuLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcuKey :: Lens' LeaderboardConfigurationsUpdate' (Maybe Text)
lcuKey = lens _lcuKey (\ s a -> s{_lcuKey = a})

-- | OAuth 2.0 token for the current user.
lcuOauthToken :: Lens' LeaderboardConfigurationsUpdate' (Maybe Text)
lcuOauthToken
  = lens _lcuOauthToken
      (\ s a -> s{_lcuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcuFields :: Lens' LeaderboardConfigurationsUpdate' (Maybe Text)
lcuFields
  = lens _lcuFields (\ s a -> s{_lcuFields = a})

-- | Data format for the response.
lcuAlt :: Lens' LeaderboardConfigurationsUpdate' Alt
lcuAlt = lens _lcuAlt (\ s a -> s{_lcuAlt = a})

instance GoogleRequest
         LeaderboardConfigurationsUpdate' where
        type Rs LeaderboardConfigurationsUpdate' =
             LeaderboardConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsUpdate'{..}
          = go _lcuQuotaUser (Just _lcuPrettyPrint) _lcuUserIp
              _lcuLeaderboardId
              _lcuKey
              _lcuOauthToken
              _lcuFields
              (Just _lcuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LeaderboardConfigurationsUpdateAPI)
                      r
                      u
