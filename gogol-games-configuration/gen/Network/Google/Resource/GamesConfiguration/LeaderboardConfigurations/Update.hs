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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationLeaderboardConfigurationsUpdate@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update
    (
    -- * REST Resource
      LeaderboardConfigurationsUpdateResource

    -- * Creating a Request
    , leaderboardConfigurationsUpdate'
    , LeaderboardConfigurationsUpdate'

    -- * Request Lenses
    , lcuQuotaUser
    , lcuPrettyPrint
    , lcuUserIP
    , lcuLeaderboardConfiguration
    , lcuLeaderboardId
    , lcuKey
    , lcuOAuthToken
    , lcuFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationLeaderboardConfigurationsUpdate@ which the
-- 'LeaderboardConfigurationsUpdate'' request conforms to.
type LeaderboardConfigurationsUpdateResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LeaderboardConfiguration :>
                         Put '[JSON] LeaderboardConfiguration

-- | Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ 'leaderboardConfigurationsUpdate'' smart constructor.
data LeaderboardConfigurationsUpdate' = LeaderboardConfigurationsUpdate'
    { _lcuQuotaUser                :: !(Maybe Text)
    , _lcuPrettyPrint              :: !Bool
    , _lcuUserIP                   :: !(Maybe Text)
    , _lcuLeaderboardConfiguration :: !LeaderboardConfiguration
    , _lcuLeaderboardId            :: !Text
    , _lcuKey                      :: !(Maybe Key)
    , _lcuOAuthToken               :: !(Maybe OAuthToken)
    , _lcuFields                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcuQuotaUser'
--
-- * 'lcuPrettyPrint'
--
-- * 'lcuUserIP'
--
-- * 'lcuLeaderboardConfiguration'
--
-- * 'lcuLeaderboardId'
--
-- * 'lcuKey'
--
-- * 'lcuOAuthToken'
--
-- * 'lcuFields'
leaderboardConfigurationsUpdate'
    :: LeaderboardConfiguration -- ^ 'LeaderboardConfiguration'
    -> Text -- ^ 'leaderboardId'
    -> LeaderboardConfigurationsUpdate'
leaderboardConfigurationsUpdate' pLcuLeaderboardConfiguration_ pLcuLeaderboardId_ =
    LeaderboardConfigurationsUpdate'
    { _lcuQuotaUser = Nothing
    , _lcuPrettyPrint = True
    , _lcuUserIP = Nothing
    , _lcuLeaderboardConfiguration = pLcuLeaderboardConfiguration_
    , _lcuLeaderboardId = pLcuLeaderboardId_
    , _lcuKey = Nothing
    , _lcuOAuthToken = Nothing
    , _lcuFields = Nothing
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
lcuUserIP :: Lens' LeaderboardConfigurationsUpdate' (Maybe Text)
lcuUserIP
  = lens _lcuUserIP (\ s a -> s{_lcuUserIP = a})

-- | Multipart request metadata.
lcuLeaderboardConfiguration :: Lens' LeaderboardConfigurationsUpdate' LeaderboardConfiguration
lcuLeaderboardConfiguration
  = lens _lcuLeaderboardConfiguration
      (\ s a -> s{_lcuLeaderboardConfiguration = a})

-- | The ID of the leaderboard.
lcuLeaderboardId :: Lens' LeaderboardConfigurationsUpdate' Text
lcuLeaderboardId
  = lens _lcuLeaderboardId
      (\ s a -> s{_lcuLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcuKey :: Lens' LeaderboardConfigurationsUpdate' (Maybe Key)
lcuKey = lens _lcuKey (\ s a -> s{_lcuKey = a})

-- | OAuth 2.0 token for the current user.
lcuOAuthToken :: Lens' LeaderboardConfigurationsUpdate' (Maybe OAuthToken)
lcuOAuthToken
  = lens _lcuOAuthToken
      (\ s a -> s{_lcuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcuFields :: Lens' LeaderboardConfigurationsUpdate' (Maybe Text)
lcuFields
  = lens _lcuFields (\ s a -> s{_lcuFields = a})

instance GoogleAuth LeaderboardConfigurationsUpdate'
         where
        authKey = lcuKey . _Just
        authToken = lcuOAuthToken . _Just

instance GoogleRequest
         LeaderboardConfigurationsUpdate' where
        type Rs LeaderboardConfigurationsUpdate' =
             LeaderboardConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsUpdate'{..}
          = go _lcuLeaderboardId _lcuQuotaUser
              (Just _lcuPrettyPrint)
              _lcuUserIP
              _lcuFields
              _lcuKey
              _lcuOAuthToken
              (Just AltJSON)
              _lcuLeaderboardConfiguration
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy LeaderboardConfigurationsUpdateResource)
                      r
                      u
