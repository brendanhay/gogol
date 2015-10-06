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
-- Module      : Network.Google.Resource.Games.Applications.Played
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Indicate that the the currently authenticated user is playing your
-- application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesApplicationsPlayed@.
module Network.Google.Resource.Games.Applications.Played
    (
    -- * REST Resource
      ApplicationsPlayedResource

    -- * Creating a Request
    , applicationsPlayed'
    , ApplicationsPlayed'

    -- * Request Lenses
    , apQuotaUser
    , apPrettyPrint
    , apUserIP
    , apKey
    , apOAuthToken
    , apFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesApplicationsPlayed@ which the
-- 'ApplicationsPlayed'' request conforms to.
type ApplicationsPlayedResource =
     "applications" :>
       "played" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Indicate that the the currently authenticated user is playing your
-- application.
--
-- /See:/ 'applicationsPlayed'' smart constructor.
data ApplicationsPlayed' = ApplicationsPlayed'
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apUserIP      :: !(Maybe Text)
    , _apKey         :: !(Maybe AuthKey)
    , _apOAuthToken  :: !(Maybe OAuthToken)
    , _apFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsPlayed'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIP'
--
-- * 'apKey'
--
-- * 'apOAuthToken'
--
-- * 'apFields'
applicationsPlayed'
    :: ApplicationsPlayed'
applicationsPlayed' =
    ApplicationsPlayed'
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apUserIP = Nothing
    , _apKey = Nothing
    , _apOAuthToken = Nothing
    , _apFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' ApplicationsPlayed' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' ApplicationsPlayed' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIP :: Lens' ApplicationsPlayed' (Maybe Text)
apUserIP = lens _apUserIP (\ s a -> s{_apUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' ApplicationsPlayed' (Maybe AuthKey)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | OAuth 2.0 token for the current user.
apOAuthToken :: Lens' ApplicationsPlayed' (Maybe OAuthToken)
apOAuthToken
  = lens _apOAuthToken (\ s a -> s{_apOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' ApplicationsPlayed' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

instance GoogleAuth ApplicationsPlayed' where
        _AuthKey = apKey . _Just
        _AuthToken = apOAuthToken . _Just

instance GoogleRequest ApplicationsPlayed' where
        type Rs ApplicationsPlayed' = ()
        request = requestWith gamesRequest
        requestWith rq ApplicationsPlayed'{..}
          = go _apQuotaUser (Just _apPrettyPrint) _apUserIP
              _apFields
              _apKey
              _apOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ApplicationsPlayedResource)
                      rq
