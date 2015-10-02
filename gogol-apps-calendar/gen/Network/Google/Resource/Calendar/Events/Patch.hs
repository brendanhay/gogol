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
-- Module      : Network.Google.Resource.Calendar.Events.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an event. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsPatch@.
module Network.Google.Resource.Calendar.Events.Patch
    (
    -- * REST Resource
      EventsPatchResource

    -- * Creating a Request
    , eventsPatch'
    , EventsPatch'

    -- * Request Lenses
    , epEvent
    , epQuotaUser
    , epCalendarId
    , epPrettyPrint
    , epUserIP
    , epMaxAttendees
    , epKey
    , epSendNotifications
    , epOAuthToken
    , epSupportsAttachments
    , epAlwaysIncludeEmail
    , epEventId
    , epFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsPatch@ which the
-- 'EventsPatch'' request conforms to.
type EventsPatchResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "maxAttendees" Int32 :>
                     QueryParam "key" Key :>
                       QueryParam "sendNotifications" Bool :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "supportsAttachments" Bool :>
                             QueryParam "alwaysIncludeEmail" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Event :> Patch '[JSON] Event

-- | Updates an event. This method supports patch semantics.
--
-- /See:/ 'eventsPatch'' smart constructor.
data EventsPatch' = EventsPatch'
    { _epEvent               :: !Event
    , _epQuotaUser           :: !(Maybe Text)
    , _epCalendarId          :: !Text
    , _epPrettyPrint         :: !Bool
    , _epUserIP              :: !(Maybe Text)
    , _epMaxAttendees        :: !(Maybe Int32)
    , _epKey                 :: !(Maybe Key)
    , _epSendNotifications   :: !(Maybe Bool)
    , _epOAuthToken          :: !(Maybe OAuthToken)
    , _epSupportsAttachments :: !(Maybe Bool)
    , _epAlwaysIncludeEmail  :: !(Maybe Bool)
    , _epEventId             :: !Text
    , _epFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epEvent'
--
-- * 'epQuotaUser'
--
-- * 'epCalendarId'
--
-- * 'epPrettyPrint'
--
-- * 'epUserIP'
--
-- * 'epMaxAttendees'
--
-- * 'epKey'
--
-- * 'epSendNotifications'
--
-- * 'epOAuthToken'
--
-- * 'epSupportsAttachments'
--
-- * 'epAlwaysIncludeEmail'
--
-- * 'epEventId'
--
-- * 'epFields'
eventsPatch'
    :: Event -- ^ 'Event'
    -> Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsPatch'
eventsPatch' pEpEvent_ pEpCalendarId_ pEpEventId_ =
    EventsPatch'
    { _epEvent = pEpEvent_
    , _epQuotaUser = Nothing
    , _epCalendarId = pEpCalendarId_
    , _epPrettyPrint = True
    , _epUserIP = Nothing
    , _epMaxAttendees = Nothing
    , _epKey = Nothing
    , _epSendNotifications = Nothing
    , _epOAuthToken = Nothing
    , _epSupportsAttachments = Nothing
    , _epAlwaysIncludeEmail = Nothing
    , _epEventId = pEpEventId_
    , _epFields = Nothing
    }

-- | Multipart request metadata.
epEvent :: Lens' EventsPatch' Event
epEvent = lens _epEvent (\ s a -> s{_epEvent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
epQuotaUser :: Lens' EventsPatch' (Maybe Text)
epQuotaUser
  = lens _epQuotaUser (\ s a -> s{_epQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
epCalendarId :: Lens' EventsPatch' Text
epCalendarId
  = lens _epCalendarId (\ s a -> s{_epCalendarId = a})

-- | Returns response with indentations and line breaks.
epPrettyPrint :: Lens' EventsPatch' Bool
epPrettyPrint
  = lens _epPrettyPrint
      (\ s a -> s{_epPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
epUserIP :: Lens' EventsPatch' (Maybe Text)
epUserIP = lens _epUserIP (\ s a -> s{_epUserIP = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
epMaxAttendees :: Lens' EventsPatch' (Maybe Int32)
epMaxAttendees
  = lens _epMaxAttendees
      (\ s a -> s{_epMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
epKey :: Lens' EventsPatch' (Maybe Key)
epKey = lens _epKey (\ s a -> s{_epKey = a})

-- | Whether to send notifications about the event update (e.g. attendee\'s
-- responses, title changes, etc.). Optional. The default is False.
epSendNotifications :: Lens' EventsPatch' (Maybe Bool)
epSendNotifications
  = lens _epSendNotifications
      (\ s a -> s{_epSendNotifications = a})

-- | OAuth 2.0 token for the current user.
epOAuthToken :: Lens' EventsPatch' (Maybe OAuthToken)
epOAuthToken
  = lens _epOAuthToken (\ s a -> s{_epOAuthToken = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
epSupportsAttachments :: Lens' EventsPatch' (Maybe Bool)
epSupportsAttachments
  = lens _epSupportsAttachments
      (\ s a -> s{_epSupportsAttachments = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
epAlwaysIncludeEmail :: Lens' EventsPatch' (Maybe Bool)
epAlwaysIncludeEmail
  = lens _epAlwaysIncludeEmail
      (\ s a -> s{_epAlwaysIncludeEmail = a})

-- | Event identifier.
epEventId :: Lens' EventsPatch' Text
epEventId
  = lens _epEventId (\ s a -> s{_epEventId = a})

-- | Selector specifying which fields to include in a partial response.
epFields :: Lens' EventsPatch' (Maybe Text)
epFields = lens _epFields (\ s a -> s{_epFields = a})

instance GoogleAuth EventsPatch' where
        authKey = epKey . _Just
        authToken = epOAuthToken . _Just

instance GoogleRequest EventsPatch' where
        type Rs EventsPatch' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsPatch'{..}
          = go _epQuotaUser _epCalendarId (Just _epPrettyPrint)
              _epUserIP
              _epMaxAttendees
              _epKey
              _epSendNotifications
              _epOAuthToken
              _epSupportsAttachments
              _epAlwaysIncludeEmail
              _epEventId
              _epFields
              (Just AltJSON)
              _epEvent
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsPatchResource)
                      r
                      u
