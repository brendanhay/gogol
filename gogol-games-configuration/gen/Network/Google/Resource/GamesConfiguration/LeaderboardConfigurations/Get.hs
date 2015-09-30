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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the metadata of the leaderboard configuration with the given
-- ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationLeaderboardConfigurationsGet@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
    (
    -- * REST Resource
      LeaderboardConfigurationsGetResource

    -- * Creating a Request
    , leaderboardConfigurationsGet'
    , LeaderboardConfigurationsGet'

    -- * Request Lenses
    , lcgQuotaUser
    , lcgPrettyPrint
    , lcgUserIp
    , lcgLeaderboardId
    , lcgKey
    , lcgOauthToken
    , lcgFields
    , lcgAlt
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationLeaderboardConfigurationsGet@ which the
-- 'LeaderboardConfigurationsGet'' request conforms to.
type LeaderboardConfigurationsGetResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Get '[JSON] LeaderboardConfiguration

-- | Retrieves the metadata of the leaderboard configuration with the given
-- ID.
--
-- /See:/ 'leaderboardConfigurationsGet'' smart constructor.
data LeaderboardConfigurationsGet' = LeaderboardConfigurationsGet'
    { _lcgQuotaUser     :: !(Maybe Text)
    , _lcgPrettyPrint   :: !Bool
    , _lcgUserIp        :: !(Maybe Text)
    , _lcgLeaderboardId :: !Text
    , _lcgKey           :: !(Maybe Text)
    , _lcgOauthToken    :: !(Maybe Text)
    , _lcgFields        :: !(Maybe Text)
    , _lcgAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcgQuotaUser'
--
-- * 'lcgPrettyPrint'
--
-- * 'lcgUserIp'
--
-- * 'lcgLeaderboardId'
--
-- * 'lcgKey'
--
-- * 'lcgOauthToken'
--
-- * 'lcgFields'
--
-- * 'lcgAlt'
leaderboardConfigurationsGet'
    :: Text -- ^ 'leaderboardId'
    -> LeaderboardConfigurationsGet'
leaderboardConfigurationsGet' pLcgLeaderboardId_ =
    LeaderboardConfigurationsGet'
    { _lcgQuotaUser = Nothing
    , _lcgPrettyPrint = True
    , _lcgUserIp = Nothing
    , _lcgLeaderboardId = pLcgLeaderboardId_
    , _lcgKey = Nothing
    , _lcgOauthToken = Nothing
    , _lcgFields = Nothing
    , _lcgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lcgQuotaUser :: Lens' LeaderboardConfigurationsGet' (Maybe Text)
lcgQuotaUser
  = lens _lcgQuotaUser (\ s a -> s{_lcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lcgPrettyPrint :: Lens' LeaderboardConfigurationsGet' Bool
lcgPrettyPrint
  = lens _lcgPrettyPrint
      (\ s a -> s{_lcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lcgUserIp :: Lens' LeaderboardConfigurationsGet' (Maybe Text)
lcgUserIp
  = lens _lcgUserIp (\ s a -> s{_lcgUserIp = a})

-- | The ID of the leaderboard.
lcgLeaderboardId :: Lens' LeaderboardConfigurationsGet' Text
lcgLeaderboardId
  = lens _lcgLeaderboardId
      (\ s a -> s{_lcgLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcgKey :: Lens' LeaderboardConfigurationsGet' (Maybe Text)
lcgKey = lens _lcgKey (\ s a -> s{_lcgKey = a})

-- | OAuth 2.0 token for the current user.
lcgOauthToken :: Lens' LeaderboardConfigurationsGet' (Maybe Text)
lcgOauthToken
  = lens _lcgOauthToken
      (\ s a -> s{_lcgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcgFields :: Lens' LeaderboardConfigurationsGet' (Maybe Text)
lcgFields
  = lens _lcgFields (\ s a -> s{_lcgFields = a})

-- | Data format for the response.
lcgAlt :: Lens' LeaderboardConfigurationsGet' Alt
lcgAlt = lens _lcgAlt (\ s a -> s{_lcgAlt = a})

instance GoogleRequest LeaderboardConfigurationsGet'
         where
        type Rs LeaderboardConfigurationsGet' =
             LeaderboardConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsGet'{..}
          = go _lcgQuotaUser (Just _lcgPrettyPrint) _lcgUserIp
              _lcgLeaderboardId
              _lcgKey
              _lcgOauthToken
              _lcgFields
              (Just _lcgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LeaderboardConfigurationsGetResource)
                      r
                      u
