{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.Calendars.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a secondary calendar. Use calendars.clear for clearing all
-- events on primary calendars.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsDelete@.
module Calendar.Calendars.Delete
    (
    -- * REST Resource
      CalendarsDeleteAPI

    -- * Creating a Request
    , calendarsDelete
    , CalendarsDelete

    -- * Request Lenses
    , cdQuotaUser
    , cdCalendarId
    , cdPrettyPrint
    , cdUserIp
    , cdKey
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsDelete@ which the
-- 'CalendarsDelete' request conforms to.
type CalendarsDeleteAPI =
     "calendars" :>
       Capture "calendarId" Text :> Delete '[JSON] ()

-- | Deletes a secondary calendar. Use calendars.clear for clearing all
-- events on primary calendars.
--
-- /See:/ 'calendarsDelete' smart constructor.
data CalendarsDelete = CalendarsDelete
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdCalendarId  :: !Text
    , _cdPrettyPrint :: !Bool
    , _cdUserIp      :: !(Maybe Text)
    , _cdKey         :: !(Maybe Text)
    , _cdOauthToken  :: !(Maybe Text)
    , _cdFields      :: !(Maybe Text)
    , _cdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdCalendarId'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdKey'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
calendarsDelete
    :: Text -- ^ 'calendarId'
    -> CalendarsDelete
calendarsDelete pCdCalendarId_ =
    CalendarsDelete
    { _cdQuotaUser = Nothing
    , _cdCalendarId = pCdCalendarId_
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdKey = Nothing
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CalendarsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cdCalendarId :: Lens' CalendarsDelete' Text
cdCalendarId
  = lens _cdCalendarId (\ s a -> s{_cdCalendarId = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CalendarsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' CalendarsDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CalendarsDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' CalendarsDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CalendarsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' CalendarsDelete' Text
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest CalendarsDelete' where
        type Rs CalendarsDelete' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsDelete{..}
          = go _cdQuotaUser _cdCalendarId _cdPrettyPrint
              _cdUserIp
              _cdKey
              _cdOauthToken
              _cdFields
              _cdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CalendarsDeleteAPI)
                      r
                      u
