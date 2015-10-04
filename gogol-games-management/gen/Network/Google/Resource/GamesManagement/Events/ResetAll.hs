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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application. All quests for this player will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementEventsResetAll@.
module Network.Google.Resource.GamesManagement.Events.ResetAll
    (
    -- * REST Resource
      EventsResetAllResource

    -- * Creating a Request
    , eventsResetAll'
    , EventsResetAll'

    -- * Request Lenses
    , eraQuotaUser
    , eraPrettyPrint
    , eraUserIP
    , eraKey
    , eraOAuthToken
    , eraFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementEventsResetAll@ which the
-- 'EventsResetAll'' request conforms to.
type EventsResetAllResource =
     "events" :>
       "reset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application. All quests for this player will also be reset.
--
-- /See:/ 'eventsResetAll'' smart constructor.
data EventsResetAll' = EventsResetAll'
    { _eraQuotaUser   :: !(Maybe Text)
    , _eraPrettyPrint :: !Bool
    , _eraUserIP      :: !(Maybe Text)
    , _eraKey         :: !(Maybe Key)
    , _eraOAuthToken  :: !(Maybe OAuthToken)
    , _eraFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eraQuotaUser'
--
-- * 'eraPrettyPrint'
--
-- * 'eraUserIP'
--
-- * 'eraKey'
--
-- * 'eraOAuthToken'
--
-- * 'eraFields'
eventsResetAll'
    :: EventsResetAll'
eventsResetAll' =
    EventsResetAll'
    { _eraQuotaUser = Nothing
    , _eraPrettyPrint = True
    , _eraUserIP = Nothing
    , _eraKey = Nothing
    , _eraOAuthToken = Nothing
    , _eraFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eraQuotaUser :: Lens' EventsResetAll' (Maybe Text)
eraQuotaUser
  = lens _eraQuotaUser (\ s a -> s{_eraQuotaUser = a})

-- | Returns response with indentations and line breaks.
eraPrettyPrint :: Lens' EventsResetAll' Bool
eraPrettyPrint
  = lens _eraPrettyPrint
      (\ s a -> s{_eraPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eraUserIP :: Lens' EventsResetAll' (Maybe Text)
eraUserIP
  = lens _eraUserIP (\ s a -> s{_eraUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eraKey :: Lens' EventsResetAll' (Maybe Key)
eraKey = lens _eraKey (\ s a -> s{_eraKey = a})

-- | OAuth 2.0 token for the current user.
eraOAuthToken :: Lens' EventsResetAll' (Maybe OAuthToken)
eraOAuthToken
  = lens _eraOAuthToken
      (\ s a -> s{_eraOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
eraFields :: Lens' EventsResetAll' (Maybe Text)
eraFields
  = lens _eraFields (\ s a -> s{_eraFields = a})

instance GoogleAuth EventsResetAll' where
        authKey = eraKey . _Just
        authToken = eraOAuthToken . _Just

instance GoogleRequest EventsResetAll' where
        type Rs EventsResetAll' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u EventsResetAll'{..}
          = go _eraQuotaUser (Just _eraPrettyPrint) _eraUserIP
              _eraFields
              _eraKey
              _eraOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsResetAllResource)
                      r
                      u
