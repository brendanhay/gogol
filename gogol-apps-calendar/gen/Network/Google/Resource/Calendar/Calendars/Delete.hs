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
module Network.Google.Resource.Calendar.Calendars.Delete
    (
    -- * REST Resource
      CalendarsDeleteResource

    -- * Creating a Request
    , calendarsDelete'
    , CalendarsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdCalendarId
    , cdPrettyPrint
    , cdUserIP
    , cdKey
    , cdOAuthToken
    , cdFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsDelete@ which the
-- 'CalendarsDelete'' request conforms to.
type CalendarsDeleteResource =
     "calendars" :>
       Capture "calendarId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a secondary calendar. Use calendars.clear for clearing all
-- events on primary calendars.
--
-- /See:/ 'calendarsDelete'' smart constructor.
data CalendarsDelete' = CalendarsDelete'
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdCalendarId  :: !Text
    , _cdPrettyPrint :: !Bool
    , _cdUserIP      :: !(Maybe Text)
    , _cdKey         :: !(Maybe Key)
    , _cdOAuthToken  :: !(Maybe OAuthToken)
    , _cdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cdUserIP'
--
-- * 'cdKey'
--
-- * 'cdOAuthToken'
--
-- * 'cdFields'
calendarsDelete'
    :: Text -- ^ 'calendarId'
    -> CalendarsDelete'
calendarsDelete' pCdCalendarId_ =
    CalendarsDelete'
    { _cdQuotaUser = Nothing
    , _cdCalendarId = pCdCalendarId_
    , _cdPrettyPrint = True
    , _cdUserIP = Nothing
    , _cdKey = Nothing
    , _cdOAuthToken = Nothing
    , _cdFields = Nothing
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
cdUserIP :: Lens' CalendarsDelete' (Maybe Text)
cdUserIP = lens _cdUserIP (\ s a -> s{_cdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CalendarsDelete' (Maybe Key)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | OAuth 2.0 token for the current user.
cdOAuthToken :: Lens' CalendarsDelete' (Maybe OAuthToken)
cdOAuthToken
  = lens _cdOAuthToken (\ s a -> s{_cdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CalendarsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

instance GoogleAuth CalendarsDelete' where
        authKey = cdKey . _Just
        authToken = cdOAuthToken . _Just

instance GoogleRequest CalendarsDelete' where
        type Rs CalendarsDelete' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarsDelete'{..}
          = go _cdCalendarId _cdQuotaUser (Just _cdPrettyPrint)
              _cdUserIP
              _cdFields
              _cdKey
              _cdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarsDeleteResource)
                      r
                      u
