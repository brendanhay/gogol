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
module Network.Google.Resource.Calendar.Events.Import
    (
    -- * REST Resource
      EventsImportResource

    -- * Creating a Request
    , eventsImport'
    , EventsImport'

    -- * Request Lenses
    , eQuotaUser
    , eCalendarId
    , ePrettyPrint
    , eUserIP
    , ePayload
    , eKey
    , eOAuthToken
    , eSupportsAttachments
    , eFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsImport@ method which the
-- 'EventsImport'' request conforms to.
type EventsImportResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           "import" :>
             QueryParam "supportsAttachments" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Event :> Post '[JSON] Event

-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ 'eventsImport'' smart constructor.
data EventsImport' = EventsImport'
    { _eQuotaUser           :: !(Maybe Text)
    , _eCalendarId          :: !Text
    , _ePrettyPrint         :: !Bool
    , _eUserIP              :: !(Maybe Text)
    , _ePayload             :: !Event
    , _eKey                 :: !(Maybe AuthKey)
    , _eOAuthToken          :: !(Maybe OAuthToken)
    , _eSupportsAttachments :: !(Maybe Bool)
    , _eFields              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eQuotaUser'
--
-- * 'eCalendarId'
--
-- * 'ePrettyPrint'
--
-- * 'eUserIP'
--
-- * 'ePayload'
--
-- * 'eKey'
--
-- * 'eOAuthToken'
--
-- * 'eSupportsAttachments'
--
-- * 'eFields'
eventsImport'
    :: Text -- ^ 'calendarId'
    -> Event -- ^ 'payload'
    -> EventsImport'
eventsImport' pECalendarId_ pEPayload_ =
    EventsImport'
    { _eQuotaUser = Nothing
    , _eCalendarId = pECalendarId_
    , _ePrettyPrint = True
    , _eUserIP = Nothing
    , _ePayload = pEPayload_
    , _eKey = Nothing
    , _eOAuthToken = Nothing
    , _eSupportsAttachments = Nothing
    , _eFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EventsImport' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eCalendarId :: Lens' EventsImport' Text
eCalendarId
  = lens _eCalendarId (\ s a -> s{_eCalendarId = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EventsImport' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIP :: Lens' EventsImport' (Maybe Text)
eUserIP = lens _eUserIP (\ s a -> s{_eUserIP = a})

-- | Multipart request metadata.
ePayload :: Lens' EventsImport' Event
ePayload = lens _ePayload (\ s a -> s{_ePayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EventsImport' (Maybe AuthKey)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | OAuth 2.0 token for the current user.
eOAuthToken :: Lens' EventsImport' (Maybe OAuthToken)
eOAuthToken
  = lens _eOAuthToken (\ s a -> s{_eOAuthToken = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
eSupportsAttachments :: Lens' EventsImport' (Maybe Bool)
eSupportsAttachments
  = lens _eSupportsAttachments
      (\ s a -> s{_eSupportsAttachments = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EventsImport' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

instance GoogleAuth EventsImport' where
        _AuthKey = eKey . _Just
        _AuthToken = eOAuthToken . _Just

instance GoogleRequest EventsImport' where
        type Rs EventsImport' = Event
        request = requestWith appsCalendarRequest
        requestWith rq EventsImport'{..}
          = go _eCalendarId _eSupportsAttachments _eQuotaUser
              (Just _ePrettyPrint)
              _eUserIP
              _eFields
              _eKey
              _eOAuthToken
              (Just AltJSON)
              _ePayload
          where go
                  = clientBuild (Proxy :: Proxy EventsImportResource)
                      rq
