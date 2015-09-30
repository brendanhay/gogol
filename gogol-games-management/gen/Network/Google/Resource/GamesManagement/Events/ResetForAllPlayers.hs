{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets the event with the given ID for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- can be reset. All quests that use the event will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementEventsResetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers
    (
    -- * REST Resource
      EventsResetForAllPlayersResource

    -- * Creating a Request
    , eventsResetForAllPlayers'
    , EventsResetForAllPlayers'

    -- * Request Lenses
    , erfapQuotaUser
    , erfapPrettyPrint
    , erfapUserIp
    , erfapKey
    , erfapOauthToken
    , erfapEventId
    , erfapFields
    , erfapAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementEventsResetForAllPlayers@ which the
-- 'EventsResetForAllPlayers'' request conforms to.
type EventsResetForAllPlayersResource =
     "events" :>
       Capture "eventId" Text :>
         "resetForAllPlayers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets the event with the given ID for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- can be reset. All quests that use the event will also be reset.
--
-- /See:/ 'eventsResetForAllPlayers'' smart constructor.
data EventsResetForAllPlayers' = EventsResetForAllPlayers'
    { _erfapQuotaUser   :: !(Maybe Text)
    , _erfapPrettyPrint :: !Bool
    , _erfapUserIp      :: !(Maybe Text)
    , _erfapKey         :: !(Maybe Text)
    , _erfapOauthToken  :: !(Maybe Text)
    , _erfapEventId     :: !Text
    , _erfapFields      :: !(Maybe Text)
    , _erfapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erfapQuotaUser'
--
-- * 'erfapPrettyPrint'
--
-- * 'erfapUserIp'
--
-- * 'erfapKey'
--
-- * 'erfapOauthToken'
--
-- * 'erfapEventId'
--
-- * 'erfapFields'
--
-- * 'erfapAlt'
eventsResetForAllPlayers'
    :: Text -- ^ 'eventId'
    -> EventsResetForAllPlayers'
eventsResetForAllPlayers' pErfapEventId_ =
    EventsResetForAllPlayers'
    { _erfapQuotaUser = Nothing
    , _erfapPrettyPrint = True
    , _erfapUserIp = Nothing
    , _erfapKey = Nothing
    , _erfapOauthToken = Nothing
    , _erfapEventId = pErfapEventId_
    , _erfapFields = Nothing
    , _erfapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
erfapQuotaUser :: Lens' EventsResetForAllPlayers' (Maybe Text)
erfapQuotaUser
  = lens _erfapQuotaUser
      (\ s a -> s{_erfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
erfapPrettyPrint :: Lens' EventsResetForAllPlayers' Bool
erfapPrettyPrint
  = lens _erfapPrettyPrint
      (\ s a -> s{_erfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
erfapUserIp :: Lens' EventsResetForAllPlayers' (Maybe Text)
erfapUserIp
  = lens _erfapUserIp (\ s a -> s{_erfapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
erfapKey :: Lens' EventsResetForAllPlayers' (Maybe Text)
erfapKey = lens _erfapKey (\ s a -> s{_erfapKey = a})

-- | OAuth 2.0 token for the current user.
erfapOauthToken :: Lens' EventsResetForAllPlayers' (Maybe Text)
erfapOauthToken
  = lens _erfapOauthToken
      (\ s a -> s{_erfapOauthToken = a})

-- | The ID of the event.
erfapEventId :: Lens' EventsResetForAllPlayers' Text
erfapEventId
  = lens _erfapEventId (\ s a -> s{_erfapEventId = a})

-- | Selector specifying which fields to include in a partial response.
erfapFields :: Lens' EventsResetForAllPlayers' (Maybe Text)
erfapFields
  = lens _erfapFields (\ s a -> s{_erfapFields = a})

-- | Data format for the response.
erfapAlt :: Lens' EventsResetForAllPlayers' Alt
erfapAlt = lens _erfapAlt (\ s a -> s{_erfapAlt = a})

instance GoogleRequest EventsResetForAllPlayers'
         where
        type Rs EventsResetForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u EventsResetForAllPlayers'{..}
          = go _erfapQuotaUser (Just _erfapPrettyPrint)
              _erfapUserIp
              _erfapKey
              _erfapOauthToken
              _erfapEventId
              _erfapFields
              (Just _erfapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsResetForAllPlayersResource)
                      r
                      u
