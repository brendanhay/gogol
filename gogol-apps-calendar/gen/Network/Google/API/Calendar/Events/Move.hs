{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Events.Move
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves an event to another calendar, i.e. changes an event\'s organizer.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.move@.
module Network.Google.API.Calendar.Events.Move
    (
    -- * REST Resource
      EventsMoveAPI

    -- * Creating a Request
    , eventsMove'
    , EventsMove'

    -- * Request Lenses
    , emDestination
    , emQuotaUser
    , emCalendarId
    , emPrettyPrint
    , emUserIp
    , emKey
    , emSendNotifications
    , emOauthToken
    , emEventId
    , emFields
    , emAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.events.move which the
-- 'EventsMove'' request conforms to.
type EventsMoveAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             "move" :>
               QueryParam "destination" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "sendNotifications" Bool :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] Event

-- | Moves an event to another calendar, i.e. changes an event\'s organizer.
--
-- /See:/ 'eventsMove'' smart constructor.
data EventsMove' = EventsMove'
    { _emDestination       :: !Text
    , _emQuotaUser         :: !(Maybe Text)
    , _emCalendarId        :: !Text
    , _emPrettyPrint       :: !Bool
    , _emUserIp            :: !(Maybe Text)
    , _emKey               :: !(Maybe Text)
    , _emSendNotifications :: !(Maybe Bool)
    , _emOauthToken        :: !(Maybe Text)
    , _emEventId           :: !Text
    , _emFields            :: !(Maybe Text)
    , _emAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsMove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emDestination'
--
-- * 'emQuotaUser'
--
-- * 'emCalendarId'
--
-- * 'emPrettyPrint'
--
-- * 'emUserIp'
--
-- * 'emKey'
--
-- * 'emSendNotifications'
--
-- * 'emOauthToken'
--
-- * 'emEventId'
--
-- * 'emFields'
--
-- * 'emAlt'
eventsMove'
    :: Text -- ^ 'destination'
    -> Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsMove'
eventsMove' pEmDestination_ pEmCalendarId_ pEmEventId_ =
    EventsMove'
    { _emDestination = pEmDestination_
    , _emQuotaUser = Nothing
    , _emCalendarId = pEmCalendarId_
    , _emPrettyPrint = True
    , _emUserIp = Nothing
    , _emKey = Nothing
    , _emSendNotifications = Nothing
    , _emOauthToken = Nothing
    , _emEventId = pEmEventId_
    , _emFields = Nothing
    , _emAlt = JSON
    }

-- | Calendar identifier of the target calendar where the event is to be
-- moved to.
emDestination :: Lens' EventsMove' Text
emDestination
  = lens _emDestination
      (\ s a -> s{_emDestination = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
emQuotaUser :: Lens' EventsMove' (Maybe Text)
emQuotaUser
  = lens _emQuotaUser (\ s a -> s{_emQuotaUser = a})

-- | Calendar identifier of the source calendar where the event currently is
-- on.
emCalendarId :: Lens' EventsMove' Text
emCalendarId
  = lens _emCalendarId (\ s a -> s{_emCalendarId = a})

-- | Returns response with indentations and line breaks.
emPrettyPrint :: Lens' EventsMove' Bool
emPrettyPrint
  = lens _emPrettyPrint
      (\ s a -> s{_emPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
emUserIp :: Lens' EventsMove' (Maybe Text)
emUserIp = lens _emUserIp (\ s a -> s{_emUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
emKey :: Lens' EventsMove' (Maybe Text)
emKey = lens _emKey (\ s a -> s{_emKey = a})

-- | Whether to send notifications about the change of the event\'s
-- organizer. Optional. The default is False.
emSendNotifications :: Lens' EventsMove' (Maybe Bool)
emSendNotifications
  = lens _emSendNotifications
      (\ s a -> s{_emSendNotifications = a})

-- | OAuth 2.0 token for the current user.
emOauthToken :: Lens' EventsMove' (Maybe Text)
emOauthToken
  = lens _emOauthToken (\ s a -> s{_emOauthToken = a})

-- | Event identifier.
emEventId :: Lens' EventsMove' Text
emEventId
  = lens _emEventId (\ s a -> s{_emEventId = a})

-- | Selector specifying which fields to include in a partial response.
emFields :: Lens' EventsMove' (Maybe Text)
emFields = lens _emFields (\ s a -> s{_emFields = a})

-- | Data format for the response.
emAlt :: Lens' EventsMove' Alt
emAlt = lens _emAlt (\ s a -> s{_emAlt = a})

instance GoogleRequest EventsMove' where
        type Rs EventsMove' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsMove'{..}
          = go (Just _emDestination) _emQuotaUser _emCalendarId
              (Just _emPrettyPrint)
              _emUserIp
              _emKey
              _emSendNotifications
              _emOauthToken
              _emEventId
              _emFields
              (Just _emAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsMoveAPI) r u
