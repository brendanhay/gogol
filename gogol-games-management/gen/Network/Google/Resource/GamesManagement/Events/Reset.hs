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
-- Module      : Network.Google.Resource.GamesManagement.Events.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all player progress on the event with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application. All quests for this
-- player that use the event will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementEventsReset@.
module Network.Google.Resource.GamesManagement.Events.Reset
    (
    -- * REST Resource
      EventsResetResource

    -- * Creating a Request
    , eventsReset'
    , EventsReset'

    -- * Request Lenses
    , erQuotaUser
    , erPrettyPrint
    , erUserIP
    , erKey
    , erOAuthToken
    , erEventId
    , erFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementEventsReset@ which the
-- 'EventsReset'' request conforms to.
type EventsResetResource =
     "events" :>
       Capture "eventId" Text :>
         "reset" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on the event with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application. All quests for this
-- player that use the event will also be reset.
--
-- /See:/ 'eventsReset'' smart constructor.
data EventsReset' = EventsReset'
    { _erQuotaUser   :: !(Maybe Text)
    , _erPrettyPrint :: !Bool
    , _erUserIP      :: !(Maybe Text)
    , _erKey         :: !(Maybe Key)
    , _erOAuthToken  :: !(Maybe OAuthToken)
    , _erEventId     :: !Text
    , _erFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erQuotaUser'
--
-- * 'erPrettyPrint'
--
-- * 'erUserIP'
--
-- * 'erKey'
--
-- * 'erOAuthToken'
--
-- * 'erEventId'
--
-- * 'erFields'
eventsReset'
    :: Text -- ^ 'eventId'
    -> EventsReset'
eventsReset' pErEventId_ =
    EventsReset'
    { _erQuotaUser = Nothing
    , _erPrettyPrint = True
    , _erUserIP = Nothing
    , _erKey = Nothing
    , _erOAuthToken = Nothing
    , _erEventId = pErEventId_
    , _erFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
erQuotaUser :: Lens' EventsReset' (Maybe Text)
erQuotaUser
  = lens _erQuotaUser (\ s a -> s{_erQuotaUser = a})

-- | Returns response with indentations and line breaks.
erPrettyPrint :: Lens' EventsReset' Bool
erPrettyPrint
  = lens _erPrettyPrint
      (\ s a -> s{_erPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
erUserIP :: Lens' EventsReset' (Maybe Text)
erUserIP = lens _erUserIP (\ s a -> s{_erUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
erKey :: Lens' EventsReset' (Maybe Key)
erKey = lens _erKey (\ s a -> s{_erKey = a})

-- | OAuth 2.0 token for the current user.
erOAuthToken :: Lens' EventsReset' (Maybe OAuthToken)
erOAuthToken
  = lens _erOAuthToken (\ s a -> s{_erOAuthToken = a})

-- | The ID of the event.
erEventId :: Lens' EventsReset' Text
erEventId
  = lens _erEventId (\ s a -> s{_erEventId = a})

-- | Selector specifying which fields to include in a partial response.
erFields :: Lens' EventsReset' (Maybe Text)
erFields = lens _erFields (\ s a -> s{_erFields = a})

instance GoogleAuth EventsReset' where
        authKey = erKey . _Just
        authToken = erOAuthToken . _Just

instance GoogleRequest EventsReset' where
        type Rs EventsReset' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u EventsReset'{..}
          = go _erEventId _erQuotaUser (Just _erPrettyPrint)
              _erUserIP
              _erFields
              _erKey
              _erOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsResetResource)
                      r
                      u
