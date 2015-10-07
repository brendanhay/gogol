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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns an entry on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListGet@.
module Network.Google.Resource.Calendar.CalendarList.Get
    (
    -- * REST Resource
      CalendarListGetResource

    -- * Creating a Request
    , calendarListGet'
    , CalendarListGet'

    -- * Request Lenses
    , clgQuotaUser
    , clgCalendarId
    , clgPrettyPrint
    , clgUserIP
    , clgKey
    , clgOAuthToken
    , clgFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListGet@ method which the
-- 'CalendarListGet'' request conforms to.
type CalendarListGetResource =
     "users" :>
       "me" :>
         "calendarList" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] CalendarListEntry

-- | Returns an entry on the user\'s calendar list.
--
-- /See:/ 'calendarListGet'' smart constructor.
data CalendarListGet' = CalendarListGet'
    { _clgQuotaUser   :: !(Maybe Text)
    , _clgCalendarId  :: !Text
    , _clgPrettyPrint :: !Bool
    , _clgUserIP      :: !(Maybe Text)
    , _clgKey         :: !(Maybe AuthKey)
    , _clgOAuthToken  :: !(Maybe OAuthToken)
    , _clgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clgQuotaUser'
--
-- * 'clgCalendarId'
--
-- * 'clgPrettyPrint'
--
-- * 'clgUserIP'
--
-- * 'clgKey'
--
-- * 'clgOAuthToken'
--
-- * 'clgFields'
calendarListGet'
    :: Text -- ^ 'calendarId'
    -> CalendarListGet'
calendarListGet' pClgCalendarId_ =
    CalendarListGet'
    { _clgQuotaUser = Nothing
    , _clgCalendarId = pClgCalendarId_
    , _clgPrettyPrint = True
    , _clgUserIP = Nothing
    , _clgKey = Nothing
    , _clgOAuthToken = Nothing
    , _clgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clgQuotaUser :: Lens' CalendarListGet' (Maybe Text)
clgQuotaUser
  = lens _clgQuotaUser (\ s a -> s{_clgQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
clgCalendarId :: Lens' CalendarListGet' Text
clgCalendarId
  = lens _clgCalendarId
      (\ s a -> s{_clgCalendarId = a})

-- | Returns response with indentations and line breaks.
clgPrettyPrint :: Lens' CalendarListGet' Bool
clgPrettyPrint
  = lens _clgPrettyPrint
      (\ s a -> s{_clgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clgUserIP :: Lens' CalendarListGet' (Maybe Text)
clgUserIP
  = lens _clgUserIP (\ s a -> s{_clgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clgKey :: Lens' CalendarListGet' (Maybe AuthKey)
clgKey = lens _clgKey (\ s a -> s{_clgKey = a})

-- | OAuth 2.0 token for the current user.
clgOAuthToken :: Lens' CalendarListGet' (Maybe OAuthToken)
clgOAuthToken
  = lens _clgOAuthToken
      (\ s a -> s{_clgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
clgFields :: Lens' CalendarListGet' (Maybe Text)
clgFields
  = lens _clgFields (\ s a -> s{_clgFields = a})

instance GoogleAuth CalendarListGet' where
        _AuthKey = clgKey . _Just
        _AuthToken = clgOAuthToken . _Just

instance GoogleRequest CalendarListGet' where
        type Rs CalendarListGet' = CalendarListEntry
        request = requestWith appsCalendarRequest
        requestWith rq CalendarListGet'{..}
          = go _clgCalendarId _clgQuotaUser
              (Just _clgPrettyPrint)
              _clgUserIP
              _clgFields
              _clgKey
              _clgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CalendarListGetResource)
                      rq
