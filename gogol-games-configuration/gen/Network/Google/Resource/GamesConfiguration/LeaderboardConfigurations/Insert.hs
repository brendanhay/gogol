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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert a new leaderboard configuration in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationLeaderboardConfigurationsInsert@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert
    (
    -- * REST Resource
      LeaderboardConfigurationsInsertResource

    -- * Creating a Request
    , leaderboardConfigurationsInsert'
    , LeaderboardConfigurationsInsert'

    -- * Request Lenses
    , lciQuotaUser
    , lciPrettyPrint
    , lciUserIP
    , lciPayload
    , lciApplicationId
    , lciKey
    , lciOAuthToken
    , lciFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationLeaderboardConfigurationsInsert@ method which the
-- 'LeaderboardConfigurationsInsert'' request conforms to.
type LeaderboardConfigurationsInsertResource =
     "applications" :>
       Capture "applicationId" Text :>
         "leaderboards" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LeaderboardConfiguration :>
                           Post '[JSON] LeaderboardConfiguration

-- | Insert a new leaderboard configuration in this application.
--
-- /See:/ 'leaderboardConfigurationsInsert'' smart constructor.
data LeaderboardConfigurationsInsert' = LeaderboardConfigurationsInsert'
    { _lciQuotaUser     :: !(Maybe Text)
    , _lciPrettyPrint   :: !Bool
    , _lciUserIP        :: !(Maybe Text)
    , _lciPayload       :: !LeaderboardConfiguration
    , _lciApplicationId :: !Text
    , _lciKey           :: !(Maybe AuthKey)
    , _lciOAuthToken    :: !(Maybe OAuthToken)
    , _lciFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciQuotaUser'
--
-- * 'lciPrettyPrint'
--
-- * 'lciUserIP'
--
-- * 'lciPayload'
--
-- * 'lciApplicationId'
--
-- * 'lciKey'
--
-- * 'lciOAuthToken'
--
-- * 'lciFields'
leaderboardConfigurationsInsert'
    :: LeaderboardConfiguration -- ^ 'payload'
    -> Text -- ^ 'applicationId'
    -> LeaderboardConfigurationsInsert'
leaderboardConfigurationsInsert' pLciPayload_ pLciApplicationId_ =
    LeaderboardConfigurationsInsert'
    { _lciQuotaUser = Nothing
    , _lciPrettyPrint = True
    , _lciUserIP = Nothing
    , _lciPayload = pLciPayload_
    , _lciApplicationId = pLciApplicationId_
    , _lciKey = Nothing
    , _lciOAuthToken = Nothing
    , _lciFields = Nothing
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
lciUserIP :: Lens' LeaderboardConfigurationsInsert' (Maybe Text)
lciUserIP
  = lens _lciUserIP (\ s a -> s{_lciUserIP = a})

-- | Multipart request metadata.
lciPayload :: Lens' LeaderboardConfigurationsInsert' LeaderboardConfiguration
lciPayload
  = lens _lciPayload (\ s a -> s{_lciPayload = a})

-- | The application ID from the Google Play developer console.
lciApplicationId :: Lens' LeaderboardConfigurationsInsert' Text
lciApplicationId
  = lens _lciApplicationId
      (\ s a -> s{_lciApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lciKey :: Lens' LeaderboardConfigurationsInsert' (Maybe AuthKey)
lciKey = lens _lciKey (\ s a -> s{_lciKey = a})

-- | OAuth 2.0 token for the current user.
lciOAuthToken :: Lens' LeaderboardConfigurationsInsert' (Maybe OAuthToken)
lciOAuthToken
  = lens _lciOAuthToken
      (\ s a -> s{_lciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lciFields :: Lens' LeaderboardConfigurationsInsert' (Maybe Text)
lciFields
  = lens _lciFields (\ s a -> s{_lciFields = a})

instance GoogleAuth LeaderboardConfigurationsInsert'
         where
        _AuthKey = lciKey . _Just
        _AuthToken = lciOAuthToken . _Just

instance GoogleRequest
         LeaderboardConfigurationsInsert' where
        type Rs LeaderboardConfigurationsInsert' =
             LeaderboardConfiguration
        request = requestWith gamesConfigurationRequest
        requestWith rq LeaderboardConfigurationsInsert'{..}
          = go _lciApplicationId _lciQuotaUser
              (Just _lciPrettyPrint)
              _lciUserIP
              _lciFields
              _lciKey
              _lciOAuthToken
              (Just AltJSON)
              _lciPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy LeaderboardConfigurationsInsertResource)
                      rq
