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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationLeaderboardConfigurationsDelete@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete
    (
    -- * REST Resource
      LeaderboardConfigurationsDeleteResource

    -- * Creating a Request
    , leaderboardConfigurationsDelete'
    , LeaderboardConfigurationsDelete'

    -- * Request Lenses
    , lcdQuotaUser
    , lcdPrettyPrint
    , lcdUserIP
    , lcdLeaderboardId
    , lcdKey
    , lcdOAuthToken
    , lcdFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationLeaderboardConfigurationsDelete@ which the
-- 'LeaderboardConfigurationsDelete'' request conforms to.
type LeaderboardConfigurationsDeleteResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete the leaderboard configuration with the given ID.
--
-- /See:/ 'leaderboardConfigurationsDelete'' smart constructor.
data LeaderboardConfigurationsDelete' = LeaderboardConfigurationsDelete'
    { _lcdQuotaUser     :: !(Maybe Text)
    , _lcdPrettyPrint   :: !Bool
    , _lcdUserIP        :: !(Maybe Text)
    , _lcdLeaderboardId :: !Text
    , _lcdKey           :: !(Maybe AuthKey)
    , _lcdOAuthToken    :: !(Maybe OAuthToken)
    , _lcdFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdQuotaUser'
--
-- * 'lcdPrettyPrint'
--
-- * 'lcdUserIP'
--
-- * 'lcdLeaderboardId'
--
-- * 'lcdKey'
--
-- * 'lcdOAuthToken'
--
-- * 'lcdFields'
leaderboardConfigurationsDelete'
    :: Text -- ^ 'leaderboardId'
    -> LeaderboardConfigurationsDelete'
leaderboardConfigurationsDelete' pLcdLeaderboardId_ =
    LeaderboardConfigurationsDelete'
    { _lcdQuotaUser = Nothing
    , _lcdPrettyPrint = True
    , _lcdUserIP = Nothing
    , _lcdLeaderboardId = pLcdLeaderboardId_
    , _lcdKey = Nothing
    , _lcdOAuthToken = Nothing
    , _lcdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lcdQuotaUser :: Lens' LeaderboardConfigurationsDelete' (Maybe Text)
lcdQuotaUser
  = lens _lcdQuotaUser (\ s a -> s{_lcdQuotaUser = a})

-- | Returns response with indentations and line breaks.
lcdPrettyPrint :: Lens' LeaderboardConfigurationsDelete' Bool
lcdPrettyPrint
  = lens _lcdPrettyPrint
      (\ s a -> s{_lcdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lcdUserIP :: Lens' LeaderboardConfigurationsDelete' (Maybe Text)
lcdUserIP
  = lens _lcdUserIP (\ s a -> s{_lcdUserIP = a})

-- | The ID of the leaderboard.
lcdLeaderboardId :: Lens' LeaderboardConfigurationsDelete' Text
lcdLeaderboardId
  = lens _lcdLeaderboardId
      (\ s a -> s{_lcdLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcdKey :: Lens' LeaderboardConfigurationsDelete' (Maybe AuthKey)
lcdKey = lens _lcdKey (\ s a -> s{_lcdKey = a})

-- | OAuth 2.0 token for the current user.
lcdOAuthToken :: Lens' LeaderboardConfigurationsDelete' (Maybe OAuthToken)
lcdOAuthToken
  = lens _lcdOAuthToken
      (\ s a -> s{_lcdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcdFields :: Lens' LeaderboardConfigurationsDelete' (Maybe Text)
lcdFields
  = lens _lcdFields (\ s a -> s{_lcdFields = a})

instance GoogleAuth LeaderboardConfigurationsDelete'
         where
        _AuthKey = lcdKey . _Just
        _AuthToken = lcdOAuthToken . _Just

instance GoogleRequest
         LeaderboardConfigurationsDelete' where
        type Rs LeaderboardConfigurationsDelete' = ()
        request = requestWith gamesConfigurationRequest
        requestWith rq LeaderboardConfigurationsDelete'{..}
          = go _lcdLeaderboardId _lcdQuotaUser
              (Just _lcdPrettyPrint)
              _lcdUserIP
              _lcdFields
              _lcdKey
              _lcdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy LeaderboardConfigurationsDeleteResource)
                      rq
