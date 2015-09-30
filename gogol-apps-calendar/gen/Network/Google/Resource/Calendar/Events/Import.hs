{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.Events.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsImport@.
module Calendar.Events.Import
    (
    -- * REST Resource
      EventsImportAPI

    -- * Creating a Request
    , eventsImport
    , EventsImport

    -- * Request Lenses
    , eveQuotaUser
    , eveCalendarId
    , evePrettyPrint
    , eveUserIp
    , eveKey
    , eveOauthToken
    , eveSupportsAttachments
    , eveFields
    , eveAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsImport@ which the
-- 'EventsImport' request conforms to.
type EventsImportAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           "import" :>
             QueryParam "supportsAttachments" Bool :>
               Post '[JSON] Event

-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ 'eventsImport' smart constructor.
data EventsImport = EventsImport
    { _eveQuotaUser           :: !(Maybe Text)
    , _eveCalendarId          :: !Text
    , _evePrettyPrint         :: !Bool
    , _eveUserIp              :: !(Maybe Text)
    , _eveKey                 :: !(Maybe Text)
    , _eveOauthToken          :: !(Maybe Text)
    , _eveSupportsAttachments :: !(Maybe Bool)
    , _eveFields              :: !(Maybe Text)
    , _eveAlt                 :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eveQuotaUser'
--
-- * 'eveCalendarId'
--
-- * 'evePrettyPrint'
--
-- * 'eveUserIp'
--
-- * 'eveKey'
--
-- * 'eveOauthToken'
--
-- * 'eveSupportsAttachments'
--
-- * 'eveFields'
--
-- * 'eveAlt'
eventsImport
    :: Text -- ^ 'calendarId'
    -> EventsImport
eventsImport pEveCalendarId_ =
    EventsImport
    { _eveQuotaUser = Nothing
    , _eveCalendarId = pEveCalendarId_
    , _evePrettyPrint = True
    , _eveUserIp = Nothing
    , _eveKey = Nothing
    , _eveOauthToken = Nothing
    , _eveSupportsAttachments = Nothing
    , _eveFields = Nothing
    , _eveAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eveQuotaUser :: Lens' EventsImport' (Maybe Text)
eveQuotaUser
  = lens _eveQuotaUser (\ s a -> s{_eveQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eveCalendarId :: Lens' EventsImport' Text
eveCalendarId
  = lens _eveCalendarId
      (\ s a -> s{_eveCalendarId = a})

-- | Returns response with indentations and line breaks.
evePrettyPrint :: Lens' EventsImport' Bool
evePrettyPrint
  = lens _evePrettyPrint
      (\ s a -> s{_evePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eveUserIp :: Lens' EventsImport' (Maybe Text)
eveUserIp
  = lens _eveUserIp (\ s a -> s{_eveUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eveKey :: Lens' EventsImport' (Maybe Text)
eveKey = lens _eveKey (\ s a -> s{_eveKey = a})

-- | OAuth 2.0 token for the current user.
eveOauthToken :: Lens' EventsImport' (Maybe Text)
eveOauthToken
  = lens _eveOauthToken
      (\ s a -> s{_eveOauthToken = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
eveSupportsAttachments :: Lens' EventsImport' (Maybe Bool)
eveSupportsAttachments
  = lens _eveSupportsAttachments
      (\ s a -> s{_eveSupportsAttachments = a})

-- | Selector specifying which fields to include in a partial response.
eveFields :: Lens' EventsImport' (Maybe Text)
eveFields
  = lens _eveFields (\ s a -> s{_eveFields = a})

-- | Data format for the response.
eveAlt :: Lens' EventsImport' Text
eveAlt = lens _eveAlt (\ s a -> s{_eveAlt = a})

instance GoogleRequest EventsImport' where
        type Rs EventsImport' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsImport{..}
          = go _eveQuotaUser _eveCalendarId _evePrettyPrint
              _eveUserIp
              _eveKey
              _eveOauthToken
              _eveSupportsAttachments
              _eveFields
              _eveAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EventsImportAPI) r
                      u
