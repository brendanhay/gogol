{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the metadata of the leaderboard configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.patch@.
module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Patch
    (
    -- * REST Resource
      LeaderboardConfigurationsPatchAPI

    -- * Creating a Request
    , leaderboardConfigurationsPatch'
    , LeaderboardConfigurationsPatch'

    -- * Request Lenses
    , lcpQuotaUser
    , lcpPrettyPrint
    , lcpUserIp
    , lcpLeaderboardId
    , lcpKey
    , lcpOauthToken
    , lcpFields
    , lcpAlt
    ) where

import           Network.Google.Games.Configuration.Types
import           Network.Google.Prelude

-- | A resource alias for gamesConfiguration.leaderboardConfigurations.patch which the
-- 'LeaderboardConfigurationsPatch'' request conforms to.
type LeaderboardConfigurationsPatchAPI =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Patch '[JSON] LeaderboardConfiguration

-- | Update the metadata of the leaderboard configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ 'leaderboardConfigurationsPatch'' smart constructor.
data LeaderboardConfigurationsPatch' = LeaderboardConfigurationsPatch'
    { _lcpQuotaUser     :: !(Maybe Text)
    , _lcpPrettyPrint   :: !Bool
    , _lcpUserIp        :: !(Maybe Text)
    , _lcpLeaderboardId :: !Text
    , _lcpKey           :: !(Maybe Text)
    , _lcpOauthToken    :: !(Maybe Text)
    , _lcpFields        :: !(Maybe Text)
    , _lcpAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpQuotaUser'
--
-- * 'lcpPrettyPrint'
--
-- * 'lcpUserIp'
--
-- * 'lcpLeaderboardId'
--
-- * 'lcpKey'
--
-- * 'lcpOauthToken'
--
-- * 'lcpFields'
--
-- * 'lcpAlt'
leaderboardConfigurationsPatch'
    :: Text -- ^ 'leaderboardId'
    -> LeaderboardConfigurationsPatch'
leaderboardConfigurationsPatch' pLcpLeaderboardId_ =
    LeaderboardConfigurationsPatch'
    { _lcpQuotaUser = Nothing
    , _lcpPrettyPrint = True
    , _lcpUserIp = Nothing
    , _lcpLeaderboardId = pLcpLeaderboardId_
    , _lcpKey = Nothing
    , _lcpOauthToken = Nothing
    , _lcpFields = Nothing
    , _lcpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lcpQuotaUser :: Lens' LeaderboardConfigurationsPatch' (Maybe Text)
lcpQuotaUser
  = lens _lcpQuotaUser (\ s a -> s{_lcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
lcpPrettyPrint :: Lens' LeaderboardConfigurationsPatch' Bool
lcpPrettyPrint
  = lens _lcpPrettyPrint
      (\ s a -> s{_lcpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lcpUserIp :: Lens' LeaderboardConfigurationsPatch' (Maybe Text)
lcpUserIp
  = lens _lcpUserIp (\ s a -> s{_lcpUserIp = a})

-- | The ID of the leaderboard.
lcpLeaderboardId :: Lens' LeaderboardConfigurationsPatch' Text
lcpLeaderboardId
  = lens _lcpLeaderboardId
      (\ s a -> s{_lcpLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcpKey :: Lens' LeaderboardConfigurationsPatch' (Maybe Text)
lcpKey = lens _lcpKey (\ s a -> s{_lcpKey = a})

-- | OAuth 2.0 token for the current user.
lcpOauthToken :: Lens' LeaderboardConfigurationsPatch' (Maybe Text)
lcpOauthToken
  = lens _lcpOauthToken
      (\ s a -> s{_lcpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcpFields :: Lens' LeaderboardConfigurationsPatch' (Maybe Text)
lcpFields
  = lens _lcpFields (\ s a -> s{_lcpFields = a})

-- | Data format for the response.
lcpAlt :: Lens' LeaderboardConfigurationsPatch' Alt
lcpAlt = lens _lcpAlt (\ s a -> s{_lcpAlt = a})

instance GoogleRequest
         LeaderboardConfigurationsPatch' where
        type Rs LeaderboardConfigurationsPatch' =
             LeaderboardConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsPatch'{..}
          = go _lcpQuotaUser (Just _lcpPrettyPrint) _lcpUserIp
              _lcpLeaderboardId
              _lcpKey
              _lcpOauthToken
              _lcpFields
              (Just _lcpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LeaderboardConfigurationsPatchAPI)
                      r
                      u
