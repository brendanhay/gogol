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
    , erfapUserIP
    , erfapKey
    , erfapOAuthToken
    , erfapEventId
    , erfapFields
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
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets the event with the given ID for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- can be reset. All quests that use the event will also be reset.
--
-- /See:/ 'eventsResetForAllPlayers'' smart constructor.
data EventsResetForAllPlayers' = EventsResetForAllPlayers'
    { _erfapQuotaUser   :: !(Maybe Text)
    , _erfapPrettyPrint :: !Bool
    , _erfapUserIP      :: !(Maybe Text)
    , _erfapKey         :: !(Maybe Key)
    , _erfapOAuthToken  :: !(Maybe OAuthToken)
    , _erfapEventId     :: !Text
    , _erfapFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erfapQuotaUser'
--
-- * 'erfapPrettyPrint'
--
-- * 'erfapUserIP'
--
-- * 'erfapKey'
--
-- * 'erfapOAuthToken'
--
-- * 'erfapEventId'
--
-- * 'erfapFields'
eventsResetForAllPlayers'
    :: Text -- ^ 'eventId'
    -> EventsResetForAllPlayers'
eventsResetForAllPlayers' pErfapEventId_ =
    EventsResetForAllPlayers'
    { _erfapQuotaUser = Nothing
    , _erfapPrettyPrint = True
    , _erfapUserIP = Nothing
    , _erfapKey = Nothing
    , _erfapOAuthToken = Nothing
    , _erfapEventId = pErfapEventId_
    , _erfapFields = Nothing
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
erfapUserIP :: Lens' EventsResetForAllPlayers' (Maybe Text)
erfapUserIP
  = lens _erfapUserIP (\ s a -> s{_erfapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
erfapKey :: Lens' EventsResetForAllPlayers' (Maybe Key)
erfapKey = lens _erfapKey (\ s a -> s{_erfapKey = a})

-- | OAuth 2.0 token for the current user.
erfapOAuthToken :: Lens' EventsResetForAllPlayers' (Maybe OAuthToken)
erfapOAuthToken
  = lens _erfapOAuthToken
      (\ s a -> s{_erfapOAuthToken = a})

-- | The ID of the event.
erfapEventId :: Lens' EventsResetForAllPlayers' Text
erfapEventId
  = lens _erfapEventId (\ s a -> s{_erfapEventId = a})

-- | Selector specifying which fields to include in a partial response.
erfapFields :: Lens' EventsResetForAllPlayers' (Maybe Text)
erfapFields
  = lens _erfapFields (\ s a -> s{_erfapFields = a})

instance GoogleAuth EventsResetForAllPlayers' where
        authKey = erfapKey . _Just
        authToken = erfapOAuthToken . _Just

instance GoogleRequest EventsResetForAllPlayers'
         where
        type Rs EventsResetForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u EventsResetForAllPlayers'{..}
          = go _erfapQuotaUser (Just _erfapPrettyPrint)
              _erfapUserIP
              _erfapKey
              _erfapOAuthToken
              _erfapEventId
              _erfapFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsResetForAllPlayersResource)
                      r
                      u
