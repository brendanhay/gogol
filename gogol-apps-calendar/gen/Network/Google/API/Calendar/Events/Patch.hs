{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Events.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an event. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.patch@.
module Network.Google.API.Calendar.Events.Patch
    (
    -- * REST Resource
      EventsPatchAPI

    -- * Creating a Request
    , eventsPatch'
    , EventsPatch'

    -- * Request Lenses
    , epQuotaUser
    , epCalendarId
    , epPrettyPrint
    , epUserIp
    , epMaxAttendees
    , epKey
    , epSendNotifications
    , epOauthToken
    , epSupportsAttachments
    , epAlwaysIncludeEmail
    , epEventId
    , epFields
    , epAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.events.patch which the
-- 'EventsPatch'' request conforms to.
type EventsPatchAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "maxAttendees" Nat :>
                     QueryParam "key" Text :>
                       QueryParam "sendNotifications" Bool :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "supportsAttachments" Bool :>
                             QueryParam "alwaysIncludeEmail" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Patch '[JSON] Event

-- | Updates an event. This method supports patch semantics.
--
-- /See:/ 'eventsPatch'' smart constructor.
data EventsPatch' = EventsPatch'
    { _epQuotaUser           :: !(Maybe Text)
    , _epCalendarId          :: !Text
    , _epPrettyPrint         :: !Bool
    , _epUserIp              :: !(Maybe Text)
    , _epMaxAttendees        :: !(Maybe Nat)
    , _epKey                 :: !(Maybe Text)
    , _epSendNotifications   :: !(Maybe Bool)
    , _epOauthToken          :: !(Maybe Text)
    , _epSupportsAttachments :: !(Maybe Bool)
    , _epAlwaysIncludeEmail  :: !(Maybe Bool)
    , _epEventId             :: !Text
    , _epFields              :: !(Maybe Text)
    , _epAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epQuotaUser'
--
-- * 'epCalendarId'
--
-- * 'epPrettyPrint'
--
-- * 'epUserIp'
--
-- * 'epMaxAttendees'
--
-- * 'epKey'
--
-- * 'epSendNotifications'
--
-- * 'epOauthToken'
--
-- * 'epSupportsAttachments'
--
-- * 'epAlwaysIncludeEmail'
--
-- * 'epEventId'
--
-- * 'epFields'
--
-- * 'epAlt'
eventsPatch'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsPatch'
eventsPatch' pEpCalendarId_ pEpEventId_ =
    EventsPatch'
    { _epQuotaUser = Nothing
    , _epCalendarId = pEpCalendarId_
    , _epPrettyPrint = True
    , _epUserIp = Nothing
    , _epMaxAttendees = Nothing
    , _epKey = Nothing
    , _epSendNotifications = Nothing
    , _epOauthToken = Nothing
    , _epSupportsAttachments = Nothing
    , _epAlwaysIncludeEmail = Nothing
    , _epEventId = pEpEventId_
    , _epFields = Nothing
    , _epAlt = JSON
    }

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
epUserIp :: Lens' EventsPatch' (Maybe Text)
epUserIp = lens _epUserIp (\ s a -> s{_epUserIp = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
epMaxAttendees :: Lens' EventsPatch' (Maybe Natural)
epMaxAttendees
  = lens _epMaxAttendees
      (\ s a -> s{_epMaxAttendees = a})
      . mapping _Nat

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
epKey :: Lens' EventsPatch' (Maybe Text)
epKey = lens _epKey (\ s a -> s{_epKey = a})

-- | Whether to send notifications about the event update (e.g. attendee\'s
-- responses, title changes, etc.). Optional. The default is False.
epSendNotifications :: Lens' EventsPatch' (Maybe Bool)
epSendNotifications
  = lens _epSendNotifications
      (\ s a -> s{_epSendNotifications = a})

-- | OAuth 2.0 token for the current user.
epOauthToken :: Lens' EventsPatch' (Maybe Text)
epOauthToken
  = lens _epOauthToken (\ s a -> s{_epOauthToken = a})

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

-- | Data format for the response.
epAlt :: Lens' EventsPatch' Alt
epAlt = lens _epAlt (\ s a -> s{_epAlt = a})

instance GoogleRequest EventsPatch' where
        type Rs EventsPatch' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsPatch'{..}
          = go _epQuotaUser _epCalendarId (Just _epPrettyPrint)
              _epUserIp
              _epMaxAttendees
              _epKey
              _epSendNotifications
              _epOauthToken
              _epSupportsAttachments
              _epAlwaysIncludeEmail
              _epEventId
              _epFields
              (Just _epAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsPatchAPI) r u
