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
    , lcgUserIP
    , lcgLeaderboardId
    , lcgKey
    , lcgOAuthToken
    , lcgFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] LeaderboardConfiguration

-- | Retrieves the metadata of the leaderboard configuration with the given
-- ID.
--
-- /See:/ 'leaderboardConfigurationsGet'' smart constructor.
data LeaderboardConfigurationsGet' = LeaderboardConfigurationsGet'
    { _lcgQuotaUser     :: !(Maybe Text)
    , _lcgPrettyPrint   :: !Bool
    , _lcgUserIP        :: !(Maybe Text)
    , _lcgLeaderboardId :: !Text
    , _lcgKey           :: !(Maybe Key)
    , _lcgOAuthToken    :: !(Maybe OAuthToken)
    , _lcgFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcgQuotaUser'
--
-- * 'lcgPrettyPrint'
--
-- * 'lcgUserIP'
--
-- * 'lcgLeaderboardId'
--
-- * 'lcgKey'
--
-- * 'lcgOAuthToken'
--
-- * 'lcgFields'
leaderboardConfigurationsGet'
    :: Text -- ^ 'leaderboardId'
    -> LeaderboardConfigurationsGet'
leaderboardConfigurationsGet' pLcgLeaderboardId_ =
    LeaderboardConfigurationsGet'
    { _lcgQuotaUser = Nothing
    , _lcgPrettyPrint = True
    , _lcgUserIP = Nothing
    , _lcgLeaderboardId = pLcgLeaderboardId_
    , _lcgKey = Nothing
    , _lcgOAuthToken = Nothing
    , _lcgFields = Nothing
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
lcgUserIP :: Lens' LeaderboardConfigurationsGet' (Maybe Text)
lcgUserIP
  = lens _lcgUserIP (\ s a -> s{_lcgUserIP = a})

-- | The ID of the leaderboard.
lcgLeaderboardId :: Lens' LeaderboardConfigurationsGet' Text
lcgLeaderboardId
  = lens _lcgLeaderboardId
      (\ s a -> s{_lcgLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcgKey :: Lens' LeaderboardConfigurationsGet' (Maybe Key)
lcgKey = lens _lcgKey (\ s a -> s{_lcgKey = a})

-- | OAuth 2.0 token for the current user.
lcgOAuthToken :: Lens' LeaderboardConfigurationsGet' (Maybe OAuthToken)
lcgOAuthToken
  = lens _lcgOAuthToken
      (\ s a -> s{_lcgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcgFields :: Lens' LeaderboardConfigurationsGet' (Maybe Text)
lcgFields
  = lens _lcgFields (\ s a -> s{_lcgFields = a})

instance GoogleAuth LeaderboardConfigurationsGet'
         where
        authKey = lcgKey . _Just
        authToken = lcgOAuthToken . _Just

instance GoogleRequest LeaderboardConfigurationsGet'
         where
        type Rs LeaderboardConfigurationsGet' =
             LeaderboardConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsGet'{..}
          = go _lcgLeaderboardId _lcgQuotaUser
              (Just _lcgPrettyPrint)
              _lcgUserIP
              _lcgFields
              _lcgKey
              _lcgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LeaderboardConfigurationsGetResource)
                      r
                      u
