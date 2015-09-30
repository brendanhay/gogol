{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.Events.QuickAdd
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an event based on a simple text string.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsQuickAdd@.
module Calendar.Events.QuickAdd
    (
    -- * REST Resource
      EventsQuickAddAPI

    -- * Creating a Request
    , eventsQuickAdd
    , EventsQuickAdd

    -- * Request Lenses
    , eqaQuotaUser
    , eqaCalendarId
    , eqaPrettyPrint
    , eqaText
    , eqaUserIp
    , eqaKey
    , eqaSendNotifications
    , eqaOauthToken
    , eqaFields
    , eqaAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsQuickAdd@ which the
-- 'EventsQuickAdd' request conforms to.
type EventsQuickAddAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           "quickAdd" :>
             QueryParam "text" Text :>
               QueryParam "sendNotifications" Bool :>
                 Post '[JSON] Event

-- | Creates an event based on a simple text string.
--
-- /See:/ 'eventsQuickAdd' smart constructor.
data EventsQuickAdd = EventsQuickAdd
    { _eqaQuotaUser         :: !(Maybe Text)
    , _eqaCalendarId        :: !Text
    , _eqaPrettyPrint       :: !Bool
    , _eqaText              :: !Text
    , _eqaUserIp            :: !(Maybe Text)
    , _eqaKey               :: !(Maybe Text)
    , _eqaSendNotifications :: !(Maybe Bool)
    , _eqaOauthToken        :: !(Maybe Text)
    , _eqaFields            :: !(Maybe Text)
    , _eqaAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsQuickAdd'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eqaQuotaUser'
--
-- * 'eqaCalendarId'
--
-- * 'eqaPrettyPrint'
--
-- * 'eqaText'
--
-- * 'eqaUserIp'
--
-- * 'eqaKey'
--
-- * 'eqaSendNotifications'
--
-- * 'eqaOauthToken'
--
-- * 'eqaFields'
--
-- * 'eqaAlt'
eventsQuickAdd
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'text'
    -> EventsQuickAdd
eventsQuickAdd pEqaCalendarId_ pEqaText_ =
    EventsQuickAdd
    { _eqaQuotaUser = Nothing
    , _eqaCalendarId = pEqaCalendarId_
    , _eqaPrettyPrint = True
    , _eqaText = pEqaText_
    , _eqaUserIp = Nothing
    , _eqaKey = Nothing
    , _eqaSendNotifications = Nothing
    , _eqaOauthToken = Nothing
    , _eqaFields = Nothing
    , _eqaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eqaQuotaUser :: Lens' EventsQuickAdd' (Maybe Text)
eqaQuotaUser
  = lens _eqaQuotaUser (\ s a -> s{_eqaQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eqaCalendarId :: Lens' EventsQuickAdd' Text
eqaCalendarId
  = lens _eqaCalendarId
      (\ s a -> s{_eqaCalendarId = a})

-- | Returns response with indentations and line breaks.
eqaPrettyPrint :: Lens' EventsQuickAdd' Bool
eqaPrettyPrint
  = lens _eqaPrettyPrint
      (\ s a -> s{_eqaPrettyPrint = a})

-- | The text describing the event to be created.
eqaText :: Lens' EventsQuickAdd' Text
eqaText = lens _eqaText (\ s a -> s{_eqaText = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eqaUserIp :: Lens' EventsQuickAdd' (Maybe Text)
eqaUserIp
  = lens _eqaUserIp (\ s a -> s{_eqaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eqaKey :: Lens' EventsQuickAdd' (Maybe Text)
eqaKey = lens _eqaKey (\ s a -> s{_eqaKey = a})

-- | Whether to send notifications about the creation of the event. Optional.
-- The default is False.
eqaSendNotifications :: Lens' EventsQuickAdd' (Maybe Bool)
eqaSendNotifications
  = lens _eqaSendNotifications
      (\ s a -> s{_eqaSendNotifications = a})

-- | OAuth 2.0 token for the current user.
eqaOauthToken :: Lens' EventsQuickAdd' (Maybe Text)
eqaOauthToken
  = lens _eqaOauthToken
      (\ s a -> s{_eqaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eqaFields :: Lens' EventsQuickAdd' (Maybe Text)
eqaFields
  = lens _eqaFields (\ s a -> s{_eqaFields = a})

-- | Data format for the response.
eqaAlt :: Lens' EventsQuickAdd' Text
eqaAlt = lens _eqaAlt (\ s a -> s{_eqaAlt = a})

instance GoogleRequest EventsQuickAdd' where
        type Rs EventsQuickAdd' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsQuickAdd{..}
          = go _eqaQuotaUser _eqaCalendarId _eqaPrettyPrint
              (Just _eqaText)
              _eqaUserIp
              _eqaKey
              _eqaSendNotifications
              _eqaOauthToken
              _eqaFields
              _eqaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EventsQuickAddAPI)
                      r
                      u
