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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all draft events for all players. This method is only available
-- to user accounts for your developer console. All quests that use any of
-- these events will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementEventsResetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers
    (
    -- * REST Resource
      EventsResetAllForAllPlayersResource

    -- * Creating a Request
    , eventsResetAllForAllPlayers'
    , EventsResetAllForAllPlayers'

    -- * Request Lenses
    , erafapQuotaUser
    , erafapPrettyPrint
    , erafapUserIP
    , erafapKey
    , erafapOAuthToken
    , erafapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementEventsResetAllForAllPlayers@ which the
-- 'EventsResetAllForAllPlayers'' request conforms to.
type EventsResetAllForAllPlayersResource =
     "events" :>
       "resetAllForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all draft events for all players. This method is only available
-- to user accounts for your developer console. All quests that use any of
-- these events will also be reset.
--
-- /See:/ 'eventsResetAllForAllPlayers'' smart constructor.
data EventsResetAllForAllPlayers' = EventsResetAllForAllPlayers'
    { _erafapQuotaUser   :: !(Maybe Text)
    , _erafapPrettyPrint :: !Bool
    , _erafapUserIP      :: !(Maybe Text)
    , _erafapKey         :: !(Maybe Key)
    , _erafapOAuthToken  :: !(Maybe OAuthToken)
    , _erafapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetAllForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erafapQuotaUser'
--
-- * 'erafapPrettyPrint'
--
-- * 'erafapUserIP'
--
-- * 'erafapKey'
--
-- * 'erafapOAuthToken'
--
-- * 'erafapFields'
eventsResetAllForAllPlayers'
    :: EventsResetAllForAllPlayers'
eventsResetAllForAllPlayers' =
    EventsResetAllForAllPlayers'
    { _erafapQuotaUser = Nothing
    , _erafapPrettyPrint = True
    , _erafapUserIP = Nothing
    , _erafapKey = Nothing
    , _erafapOAuthToken = Nothing
    , _erafapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
erafapQuotaUser :: Lens' EventsResetAllForAllPlayers' (Maybe Text)
erafapQuotaUser
  = lens _erafapQuotaUser
      (\ s a -> s{_erafapQuotaUser = a})

-- | Returns response with indentations and line breaks.
erafapPrettyPrint :: Lens' EventsResetAllForAllPlayers' Bool
erafapPrettyPrint
  = lens _erafapPrettyPrint
      (\ s a -> s{_erafapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
erafapUserIP :: Lens' EventsResetAllForAllPlayers' (Maybe Text)
erafapUserIP
  = lens _erafapUserIP (\ s a -> s{_erafapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
erafapKey :: Lens' EventsResetAllForAllPlayers' (Maybe Key)
erafapKey
  = lens _erafapKey (\ s a -> s{_erafapKey = a})

-- | OAuth 2.0 token for the current user.
erafapOAuthToken :: Lens' EventsResetAllForAllPlayers' (Maybe OAuthToken)
erafapOAuthToken
  = lens _erafapOAuthToken
      (\ s a -> s{_erafapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
erafapFields :: Lens' EventsResetAllForAllPlayers' (Maybe Text)
erafapFields
  = lens _erafapFields (\ s a -> s{_erafapFields = a})

instance GoogleAuth EventsResetAllForAllPlayers'
         where
        authKey = erafapKey . _Just
        authToken = erafapOAuthToken . _Just

instance GoogleRequest EventsResetAllForAllPlayers'
         where
        type Rs EventsResetAllForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u EventsResetAllForAllPlayers'{..}
          = go _erafapQuotaUser (Just _erafapPrettyPrint)
              _erafapUserIP
              _erafapFields
              _erafapKey
              _erafapOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsResetAllForAllPlayersResource)
                      r
                      u
