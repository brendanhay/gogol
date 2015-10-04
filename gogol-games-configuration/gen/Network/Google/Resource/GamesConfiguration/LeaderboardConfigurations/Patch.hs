{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the metadata of the leaderboard configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationLeaderboardConfigurationsPatch@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Patch
    (
    -- * REST Resource
      LeaderboardConfigurationsPatchResource

    -- * Creating a Request
    , leaderboardConfigurationsPatch'
    , LeaderboardConfigurationsPatch'

    -- * Request Lenses
    , lcpQuotaUser
    , lcpPrettyPrint
    , lcpUserIP
    , lcpPayload
    , lcpLeaderboardId
    , lcpKey
    , lcpOAuthToken
    , lcpFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationLeaderboardConfigurationsPatch@ which the
-- 'LeaderboardConfigurationsPatch'' request conforms to.
type LeaderboardConfigurationsPatchResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] LeaderboardConfiguration :>
                         Patch '[JSON] LeaderboardConfiguration

-- | Update the metadata of the leaderboard configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ 'leaderboardConfigurationsPatch'' smart constructor.
data LeaderboardConfigurationsPatch' = LeaderboardConfigurationsPatch'
    { _lcpQuotaUser     :: !(Maybe Text)
    , _lcpPrettyPrint   :: !Bool
    , _lcpUserIP        :: !(Maybe Text)
    , _lcpPayload       :: !LeaderboardConfiguration
    , _lcpLeaderboardId :: !Text
    , _lcpKey           :: !(Maybe Key)
    , _lcpOAuthToken    :: !(Maybe OAuthToken)
    , _lcpFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpQuotaUser'
--
-- * 'lcpPrettyPrint'
--
-- * 'lcpUserIP'
--
-- * 'lcpPayload'
--
-- * 'lcpLeaderboardId'
--
-- * 'lcpKey'
--
-- * 'lcpOAuthToken'
--
-- * 'lcpFields'
leaderboardConfigurationsPatch'
    :: LeaderboardConfiguration -- ^ 'payload'
    -> Text -- ^ 'leaderboardId'
    -> LeaderboardConfigurationsPatch'
leaderboardConfigurationsPatch' pLcpPayload_ pLcpLeaderboardId_ =
    LeaderboardConfigurationsPatch'
    { _lcpQuotaUser = Nothing
    , _lcpPrettyPrint = True
    , _lcpUserIP = Nothing
    , _lcpPayload = pLcpPayload_
    , _lcpLeaderboardId = pLcpLeaderboardId_
    , _lcpKey = Nothing
    , _lcpOAuthToken = Nothing
    , _lcpFields = Nothing
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
lcpUserIP :: Lens' LeaderboardConfigurationsPatch' (Maybe Text)
lcpUserIP
  = lens _lcpUserIP (\ s a -> s{_lcpUserIP = a})

-- | Multipart request metadata.
lcpPayload :: Lens' LeaderboardConfigurationsPatch' LeaderboardConfiguration
lcpPayload
  = lens _lcpPayload (\ s a -> s{_lcpPayload = a})

-- | The ID of the leaderboard.
lcpLeaderboardId :: Lens' LeaderboardConfigurationsPatch' Text
lcpLeaderboardId
  = lens _lcpLeaderboardId
      (\ s a -> s{_lcpLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcpKey :: Lens' LeaderboardConfigurationsPatch' (Maybe Key)
lcpKey = lens _lcpKey (\ s a -> s{_lcpKey = a})

-- | OAuth 2.0 token for the current user.
lcpOAuthToken :: Lens' LeaderboardConfigurationsPatch' (Maybe OAuthToken)
lcpOAuthToken
  = lens _lcpOAuthToken
      (\ s a -> s{_lcpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcpFields :: Lens' LeaderboardConfigurationsPatch' (Maybe Text)
lcpFields
  = lens _lcpFields (\ s a -> s{_lcpFields = a})

instance GoogleAuth LeaderboardConfigurationsPatch'
         where
        authKey = lcpKey . _Just
        authToken = lcpOAuthToken . _Just

instance GoogleRequest
         LeaderboardConfigurationsPatch' where
        type Rs LeaderboardConfigurationsPatch' =
             LeaderboardConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          LeaderboardConfigurationsPatch'{..}
          = go _lcpLeaderboardId _lcpQuotaUser
              (Just _lcpPrettyPrint)
              _lcpUserIP
              _lcpFields
              _lcpKey
              _lcpOAuthToken
              (Just AltJSON)
              _lcpPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy LeaderboardConfigurationsPatchResource)
                      r
                      u
