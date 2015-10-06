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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets events with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- may be reset. All quests that use any of the events will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementEventsResetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      EventsResetMultipleForAllPlayersResource

    -- * Creating a Request
    , eventsResetMultipleForAllPlayers'
    , EventsResetMultipleForAllPlayers'

    -- * Request Lenses
    , ermfapQuotaUser
    , ermfapPrettyPrint
    , ermfapUserIP
    , ermfapPayload
    , ermfapKey
    , ermfapOAuthToken
    , ermfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementEventsResetMultipleForAllPlayers@ which the
-- 'EventsResetMultipleForAllPlayers'' request conforms to.
type EventsResetMultipleForAllPlayersResource =
     "events" :>
       "resetMultipleForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] EventsResetMultipleForAllRequest :>
                         Post '[JSON] ()

-- | Resets events with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- may be reset. All quests that use any of the events will also be reset.
--
-- /See:/ 'eventsResetMultipleForAllPlayers'' smart constructor.
data EventsResetMultipleForAllPlayers' = EventsResetMultipleForAllPlayers'
    { _ermfapQuotaUser   :: !(Maybe Text)
    , _ermfapPrettyPrint :: !Bool
    , _ermfapUserIP      :: !(Maybe Text)
    , _ermfapPayload     :: !EventsResetMultipleForAllRequest
    , _ermfapKey         :: !(Maybe AuthKey)
    , _ermfapOAuthToken  :: !(Maybe OAuthToken)
    , _ermfapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetMultipleForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ermfapQuotaUser'
--
-- * 'ermfapPrettyPrint'
--
-- * 'ermfapUserIP'
--
-- * 'ermfapPayload'
--
-- * 'ermfapKey'
--
-- * 'ermfapOAuthToken'
--
-- * 'ermfapFields'
eventsResetMultipleForAllPlayers'
    :: EventsResetMultipleForAllRequest -- ^ 'payload'
    -> EventsResetMultipleForAllPlayers'
eventsResetMultipleForAllPlayers' pErmfapPayload_ =
    EventsResetMultipleForAllPlayers'
    { _ermfapQuotaUser = Nothing
    , _ermfapPrettyPrint = True
    , _ermfapUserIP = Nothing
    , _ermfapPayload = pErmfapPayload_
    , _ermfapKey = Nothing
    , _ermfapOAuthToken = Nothing
    , _ermfapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ermfapQuotaUser :: Lens' EventsResetMultipleForAllPlayers' (Maybe Text)
ermfapQuotaUser
  = lens _ermfapQuotaUser
      (\ s a -> s{_ermfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
ermfapPrettyPrint :: Lens' EventsResetMultipleForAllPlayers' Bool
ermfapPrettyPrint
  = lens _ermfapPrettyPrint
      (\ s a -> s{_ermfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ermfapUserIP :: Lens' EventsResetMultipleForAllPlayers' (Maybe Text)
ermfapUserIP
  = lens _ermfapUserIP (\ s a -> s{_ermfapUserIP = a})

-- | Multipart request metadata.
ermfapPayload :: Lens' EventsResetMultipleForAllPlayers' EventsResetMultipleForAllRequest
ermfapPayload
  = lens _ermfapPayload
      (\ s a -> s{_ermfapPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ermfapKey :: Lens' EventsResetMultipleForAllPlayers' (Maybe AuthKey)
ermfapKey
  = lens _ermfapKey (\ s a -> s{_ermfapKey = a})

-- | OAuth 2.0 token for the current user.
ermfapOAuthToken :: Lens' EventsResetMultipleForAllPlayers' (Maybe OAuthToken)
ermfapOAuthToken
  = lens _ermfapOAuthToken
      (\ s a -> s{_ermfapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ermfapFields :: Lens' EventsResetMultipleForAllPlayers' (Maybe Text)
ermfapFields
  = lens _ermfapFields (\ s a -> s{_ermfapFields = a})

instance GoogleAuth EventsResetMultipleForAllPlayers'
         where
        authKey = ermfapKey . _Just
        authToken = ermfapOAuthToken . _Just

instance GoogleRequest
         EventsResetMultipleForAllPlayers' where
        type Rs EventsResetMultipleForAllPlayers' = ()
        request = requestWith gamesManagementRequest
        requestWith rq EventsResetMultipleForAllPlayers'{..}
          = go _ermfapQuotaUser (Just _ermfapPrettyPrint)
              _ermfapUserIP
              _ermfapFields
              _ermfapKey
              _ermfapOAuthToken
              (Just AltJSON)
              _ermfapPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy EventsResetMultipleForAllPlayersResource)
                      rq
