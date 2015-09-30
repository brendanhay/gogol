{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Games.Applications.Played
    (
    -- * REST Resource
      ApplicationsPlayedAPI

    -- * Creating a Request
    , applicationsPlayed
    , ApplicationsPlayed

    -- * Request Lenses
    , apQuotaUser
    , apPrettyPrint
    , apUserIp
    , apKey
    , apOauthToken
    , apFields
    , apAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesApplicationsPlayed@ which the
-- 'ApplicationsPlayed' request conforms to.
type ApplicationsPlayedAPI =
     "applications" :> "played" :> Post '[JSON] ()

-- | Indicate that the the currently authenticated user is playing your
-- application.
--
-- /See:/ 'applicationsPlayed' smart constructor.
data ApplicationsPlayed = ApplicationsPlayed
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apUserIp      :: !(Maybe Text)
    , _apKey         :: !(Maybe Text)
    , _apOauthToken  :: !(Maybe Text)
    , _apFields      :: !(Maybe Text)
    , _apAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsPlayed'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIp'
--
-- * 'apKey'
--
-- * 'apOauthToken'
--
-- * 'apFields'
--
-- * 'apAlt'
applicationsPlayed
    :: ApplicationsPlayed
applicationsPlayed =
    ApplicationsPlayed
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apUserIp = Nothing
    , _apKey = Nothing
    , _apOauthToken = Nothing
    , _apFields = Nothing
    , _apAlt = "json"
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
apUserIp :: Lens' ApplicationsPlayed' (Maybe Text)
apUserIp = lens _apUserIp (\ s a -> s{_apUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' ApplicationsPlayed' (Maybe Text)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | OAuth 2.0 token for the current user.
apOauthToken :: Lens' ApplicationsPlayed' (Maybe Text)
apOauthToken
  = lens _apOauthToken (\ s a -> s{_apOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' ApplicationsPlayed' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

-- | Data format for the response.
apAlt :: Lens' ApplicationsPlayed' Text
apAlt = lens _apAlt (\ s a -> s{_apAlt = a})

instance GoogleRequest ApplicationsPlayed' where
        type Rs ApplicationsPlayed' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ApplicationsPlayed{..}
          = go _apQuotaUser _apPrettyPrint _apUserIp _apKey
              _apOauthToken
              _apFields
              _apAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ApplicationsPlayedAPI)
                      r
                      u
