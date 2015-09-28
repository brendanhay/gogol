{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Events.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.import@.
module Network.Google.API.Calendar.Events.Import
    (
    -- * REST Resource
      EventsImportAPI

    -- * Creating a Request
    , eventsImport'
    , EventsImport'

    -- * Request Lenses
    , eQuotaUser
    , eCalendarId
    , ePrettyPrint
    , eUserIp
    , eKey
    , eOauthToken
    , eSupportsAttachments
    , eFields
    , eAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.events.import which the
-- 'EventsImport'' request conforms to.
type EventsImportAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           "import" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "supportsAttachments" Bool :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Event

-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ 'eventsImport'' smart constructor.
data EventsImport' = EventsImport'
    { _eQuotaUser           :: !(Maybe Text)
    , _eCalendarId          :: !Text
    , _ePrettyPrint         :: !Bool
    , _eUserIp              :: !(Maybe Text)
    , _eKey                 :: !(Maybe Text)
    , _eOauthToken          :: !(Maybe Text)
    , _eSupportsAttachments :: !(Maybe Bool)
    , _eFields              :: !(Maybe Text)
    , _eAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'eUserIp'
--
-- * 'eKey'
--
-- * 'eOauthToken'
--
-- * 'eSupportsAttachments'
--
-- * 'eFields'
--
-- * 'eAlt'
eventsImport'
    :: Text -- ^ 'calendarId'
    -> EventsImport'
eventsImport' pECalendarId_ =
    EventsImport'
    { _eQuotaUser = Nothing
    , _eCalendarId = pECalendarId_
    , _ePrettyPrint = True
    , _eUserIp = Nothing
    , _eKey = Nothing
    , _eOauthToken = Nothing
    , _eSupportsAttachments = Nothing
    , _eFields = Nothing
    , _eAlt = JSON
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
eUserIp :: Lens' EventsImport' (Maybe Text)
eUserIp = lens _eUserIp (\ s a -> s{_eUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EventsImport' (Maybe Text)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | OAuth 2.0 token for the current user.
eOauthToken :: Lens' EventsImport' (Maybe Text)
eOauthToken
  = lens _eOauthToken (\ s a -> s{_eOauthToken = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
eSupportsAttachments :: Lens' EventsImport' (Maybe Bool)
eSupportsAttachments
  = lens _eSupportsAttachments
      (\ s a -> s{_eSupportsAttachments = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EventsImport' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

-- | Data format for the response.
eAlt :: Lens' EventsImport' Alt
eAlt = lens _eAlt (\ s a -> s{_eAlt = a})

instance GoogleRequest EventsImport' where
        type Rs EventsImport' = Event
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsImport'{..}
          = go _eQuotaUser _eCalendarId (Just _ePrettyPrint)
              _eUserIp
              _eKey
              _eOauthToken
              _eSupportsAttachments
              _eFields
              (Just _eAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsImportAPI) r
                      u
