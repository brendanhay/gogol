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
-- Module      : Network.Google.Resource.Calendar.Events.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsUpdate@.
module Network.Google.Resource.Calendar.Events.Update
    (
    -- * REST Resource
      EventsUpdateResource

    -- * Creating a Request
    , eventsUpdate'
    , EventsUpdate'

    -- * Request Lenses
    , euQuotaUser
    , euCalendarId
    , euPrettyPrint
    , euUserIP
    , euPayload
    , euMaxAttendees
    , euKey
    , euSendNotifications
    , euOAuthToken
    , euSupportsAttachments
    , euAlwaysIncludeEmail
    , euEventId
    , euFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsUpdate@ method which the
-- 'EventsUpdate'' request conforms to.
type EventsUpdateResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "maxAttendees" Int32 :>
               QueryParam "sendNotifications" Bool :>
                 QueryParam "supportsAttachments" Bool :>
                   QueryParam "alwaysIncludeEmail" Bool :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Event :> Put '[JSON] Event

-- | Updates an event.
--
-- /See:/ 'eventsUpdate'' smart constructor.
data EventsUpdate' = EventsUpdate'
    { _euQuotaUser           :: !(Maybe Text)
    , _euCalendarId          :: !Text
    , _euPrettyPrint         :: !Bool
    , _euUserIP              :: !(Maybe Text)
    , _euPayload             :: !Event
    , _euMaxAttendees        :: !(Maybe Int32)
    , _euKey                 :: !(Maybe AuthKey)
    , _euSendNotifications   :: !(Maybe Bool)
    , _euOAuthToken          :: !(Maybe OAuthToken)
    , _euSupportsAttachments :: !(Maybe Bool)
    , _euAlwaysIncludeEmail  :: !(Maybe Bool)
    , _euEventId             :: !Text
    , _euFields              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euQuotaUser'
--
-- * 'euCalendarId'
--
-- * 'euPrettyPrint'
--
-- * 'euUserIP'
--
-- * 'euPayload'
--
-- * 'euMaxAttendees'
--
-- * 'euKey'
--
-- * 'euSendNotifications'
--
-- * 'euOAuthToken'
--
-- * 'euSupportsAttachments'
--
-- * 'euAlwaysIncludeEmail'
--
-- * 'euEventId'
--
-- * 'euFields'
eventsUpdate'
    :: Text -- ^ 'calendarId'
    -> Event -- ^ 'payload'
    -> Text -- ^ 'eventId'
    -> EventsUpdate'
eventsUpdate' pEuCalendarId_ pEuPayload_ pEuEventId_ =
    EventsUpdate'
    { _euQuotaUser = Nothing
    , _euCalendarId = pEuCalendarId_
    , _euPrettyPrint = True
    , _euUserIP = Nothing
    , _euPayload = pEuPayload_
    , _euMaxAttendees = Nothing
    , _euKey = Nothing
    , _euSendNotifications = Nothing
    , _euOAuthToken = Nothing
    , _euSupportsAttachments = Nothing
    , _euAlwaysIncludeEmail = Nothing
    , _euEventId = pEuEventId_
    , _euFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
euQuotaUser :: Lens' EventsUpdate' (Maybe Text)
euQuotaUser
  = lens _euQuotaUser (\ s a -> s{_euQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
euCalendarId :: Lens' EventsUpdate' Text
euCalendarId
  = lens _euCalendarId (\ s a -> s{_euCalendarId = a})

-- | Returns response with indentations and line breaks.
euPrettyPrint :: Lens' EventsUpdate' Bool
euPrettyPrint
  = lens _euPrettyPrint
      (\ s a -> s{_euPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
euUserIP :: Lens' EventsUpdate' (Maybe Text)
euUserIP = lens _euUserIP (\ s a -> s{_euUserIP = a})

-- | Multipart request metadata.
euPayload :: Lens' EventsUpdate' Event
euPayload
  = lens _euPayload (\ s a -> s{_euPayload = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
euMaxAttendees :: Lens' EventsUpdate' (Maybe Int32)
euMaxAttendees
  = lens _euMaxAttendees
      (\ s a -> s{_euMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
euKey :: Lens' EventsUpdate' (Maybe AuthKey)
euKey = lens _euKey (\ s a -> s{_euKey = a})

-- | Whether to send notifications about the event update (e.g. attendee\'s
-- responses, title changes, etc.). Optional. The default is False.
euSendNotifications :: Lens' EventsUpdate' (Maybe Bool)
euSendNotifications
  = lens _euSendNotifications
      (\ s a -> s{_euSendNotifications = a})

-- | OAuth 2.0 token for the current user.
euOAuthToken :: Lens' EventsUpdate' (Maybe OAuthToken)
euOAuthToken
  = lens _euOAuthToken (\ s a -> s{_euOAuthToken = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
euSupportsAttachments :: Lens' EventsUpdate' (Maybe Bool)
euSupportsAttachments
  = lens _euSupportsAttachments
      (\ s a -> s{_euSupportsAttachments = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
euAlwaysIncludeEmail :: Lens' EventsUpdate' (Maybe Bool)
euAlwaysIncludeEmail
  = lens _euAlwaysIncludeEmail
      (\ s a -> s{_euAlwaysIncludeEmail = a})

-- | Event identifier.
euEventId :: Lens' EventsUpdate' Text
euEventId
  = lens _euEventId (\ s a -> s{_euEventId = a})

-- | Selector specifying which fields to include in a partial response.
euFields :: Lens' EventsUpdate' (Maybe Text)
euFields = lens _euFields (\ s a -> s{_euFields = a})

instance GoogleAuth EventsUpdate' where
        _AuthKey = euKey . _Just
        _AuthToken = euOAuthToken . _Just

instance GoogleRequest EventsUpdate' where
        type Rs EventsUpdate' = Event
        request = requestWith appsCalendarRequest
        requestWith rq EventsUpdate'{..}
          = go _euCalendarId _euEventId _euMaxAttendees
              _euSendNotifications
              _euSupportsAttachments
              _euAlwaysIncludeEmail
              _euQuotaUser
              (Just _euPrettyPrint)
              _euUserIP
              _euFields
              _euKey
              _euOAuthToken
              (Just AltJSON)
              _euPayload
          where go
                  = clientBuild (Proxy :: Proxy EventsUpdateResource)
                      rq
