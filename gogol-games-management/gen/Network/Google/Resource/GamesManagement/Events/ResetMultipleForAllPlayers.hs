{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module GamesManagement.Events.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      EventsResetMultipleForAllPlayersAPI

    -- * Creating a Request
    , eventsResetMultipleForAllPlayers
    , EventsResetMultipleForAllPlayers

    -- * Request Lenses
    , ermfapQuotaUser
    , ermfapPrettyPrint
    , ermfapUserIp
    , ermfapKey
    , ermfapOauthToken
    , ermfapFields
    , ermfapAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementEventsResetMultipleForAllPlayers@ which the
-- 'EventsResetMultipleForAllPlayers' request conforms to.
type EventsResetMultipleForAllPlayersAPI =
     "events" :>
       "resetMultipleForAllPlayers" :> Post '[JSON] ()

-- | Resets events with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- may be reset. All quests that use any of the events will also be reset.
--
-- /See:/ 'eventsResetMultipleForAllPlayers' smart constructor.
data EventsResetMultipleForAllPlayers = EventsResetMultipleForAllPlayers
    { _ermfapQuotaUser   :: !(Maybe Text)
    , _ermfapPrettyPrint :: !Bool
    , _ermfapUserIp      :: !(Maybe Text)
    , _ermfapKey         :: !(Maybe Text)
    , _ermfapOauthToken  :: !(Maybe Text)
    , _ermfapFields      :: !(Maybe Text)
    , _ermfapAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetMultipleForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ermfapQuotaUser'
--
-- * 'ermfapPrettyPrint'
--
-- * 'ermfapUserIp'
--
-- * 'ermfapKey'
--
-- * 'ermfapOauthToken'
--
-- * 'ermfapFields'
--
-- * 'ermfapAlt'
eventsResetMultipleForAllPlayers
    :: EventsResetMultipleForAllPlayers
eventsResetMultipleForAllPlayers =
    EventsResetMultipleForAllPlayers
    { _ermfapQuotaUser = Nothing
    , _ermfapPrettyPrint = True
    , _ermfapUserIp = Nothing
    , _ermfapKey = Nothing
    , _ermfapOauthToken = Nothing
    , _ermfapFields = Nothing
    , _ermfapAlt = "json"
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
ermfapUserIp :: Lens' EventsResetMultipleForAllPlayers' (Maybe Text)
ermfapUserIp
  = lens _ermfapUserIp (\ s a -> s{_ermfapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ermfapKey :: Lens' EventsResetMultipleForAllPlayers' (Maybe Text)
ermfapKey
  = lens _ermfapKey (\ s a -> s{_ermfapKey = a})

-- | OAuth 2.0 token for the current user.
ermfapOauthToken :: Lens' EventsResetMultipleForAllPlayers' (Maybe Text)
ermfapOauthToken
  = lens _ermfapOauthToken
      (\ s a -> s{_ermfapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ermfapFields :: Lens' EventsResetMultipleForAllPlayers' (Maybe Text)
ermfapFields
  = lens _ermfapFields (\ s a -> s{_ermfapFields = a})

-- | Data format for the response.
ermfapAlt :: Lens' EventsResetMultipleForAllPlayers' Text
ermfapAlt
  = lens _ermfapAlt (\ s a -> s{_ermfapAlt = a})

instance GoogleRequest
         EventsResetMultipleForAllPlayers' where
        type Rs EventsResetMultipleForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          EventsResetMultipleForAllPlayers{..}
          = go _ermfapQuotaUser _ermfapPrettyPrint
              _ermfapUserIp
              _ermfapKey
              _ermfapOauthToken
              _ermfapFields
              _ermfapAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsResetMultipleForAllPlayersAPI)
                      r
                      u
