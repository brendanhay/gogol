{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module GamesManagement.Events.ResetAllForAllPlayers
    (
    -- * REST Resource
      EventsResetAllForAllPlayersAPI

    -- * Creating a Request
    , eventsResetAllForAllPlayers
    , EventsResetAllForAllPlayers

    -- * Request Lenses
    , erafapQuotaUser
    , erafapPrettyPrint
    , erafapUserIp
    , erafapKey
    , erafapOauthToken
    , erafapFields
    , erafapAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementEventsResetAllForAllPlayers@ which the
-- 'EventsResetAllForAllPlayers' request conforms to.
type EventsResetAllForAllPlayersAPI =
     "events" :>
       "resetAllForAllPlayers" :> Post '[JSON] ()

-- | Resets all draft events for all players. This method is only available
-- to user accounts for your developer console. All quests that use any of
-- these events will also be reset.
--
-- /See:/ 'eventsResetAllForAllPlayers' smart constructor.
data EventsResetAllForAllPlayers = EventsResetAllForAllPlayers
    { _erafapQuotaUser   :: !(Maybe Text)
    , _erafapPrettyPrint :: !Bool
    , _erafapUserIp      :: !(Maybe Text)
    , _erafapKey         :: !(Maybe Text)
    , _erafapOauthToken  :: !(Maybe Text)
    , _erafapFields      :: !(Maybe Text)
    , _erafapAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetAllForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erafapQuotaUser'
--
-- * 'erafapPrettyPrint'
--
-- * 'erafapUserIp'
--
-- * 'erafapKey'
--
-- * 'erafapOauthToken'
--
-- * 'erafapFields'
--
-- * 'erafapAlt'
eventsResetAllForAllPlayers
    :: EventsResetAllForAllPlayers
eventsResetAllForAllPlayers =
    EventsResetAllForAllPlayers
    { _erafapQuotaUser = Nothing
    , _erafapPrettyPrint = True
    , _erafapUserIp = Nothing
    , _erafapKey = Nothing
    , _erafapOauthToken = Nothing
    , _erafapFields = Nothing
    , _erafapAlt = "json"
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
erafapUserIp :: Lens' EventsResetAllForAllPlayers' (Maybe Text)
erafapUserIp
  = lens _erafapUserIp (\ s a -> s{_erafapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
erafapKey :: Lens' EventsResetAllForAllPlayers' (Maybe Text)
erafapKey
  = lens _erafapKey (\ s a -> s{_erafapKey = a})

-- | OAuth 2.0 token for the current user.
erafapOauthToken :: Lens' EventsResetAllForAllPlayers' (Maybe Text)
erafapOauthToken
  = lens _erafapOauthToken
      (\ s a -> s{_erafapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
erafapFields :: Lens' EventsResetAllForAllPlayers' (Maybe Text)
erafapFields
  = lens _erafapFields (\ s a -> s{_erafapFields = a})

-- | Data format for the response.
erafapAlt :: Lens' EventsResetAllForAllPlayers' Text
erafapAlt
  = lens _erafapAlt (\ s a -> s{_erafapAlt = a})

instance GoogleRequest EventsResetAllForAllPlayers'
         where
        type Rs EventsResetAllForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u EventsResetAllForAllPlayers{..}
          = go _erafapQuotaUser _erafapPrettyPrint
              _erafapUserIp
              _erafapKey
              _erafapOauthToken
              _erafapFields
              _erafapAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsResetAllForAllPlayersAPI)
                      r
                      u
