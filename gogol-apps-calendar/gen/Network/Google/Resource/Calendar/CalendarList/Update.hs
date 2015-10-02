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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an entry on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListUpdate@.
module Network.Google.Resource.Calendar.CalendarList.Update
    (
    -- * REST Resource
      CalendarListUpdateResource

    -- * Creating a Request
    , calendarListUpdate'
    , CalendarListUpdate'

    -- * Request Lenses
    , cluCalendarListEntry
    , cluQuotaUser
    , cluCalendarId
    , cluPrettyPrint
    , cluUserIP
    , cluColorRgbFormat
    , cluKey
    , cluOAuthToken
    , cluFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListUpdate@ which the
-- 'CalendarListUpdate'' request conforms to.
type CalendarListUpdateResource =
     "users" :>
       "me" :>
         "calendarList" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "colorRgbFormat" Bool :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CalendarListEntry :>
                               Put '[JSON] CalendarListEntry

-- | Updates an entry on the user\'s calendar list.
--
-- /See:/ 'calendarListUpdate'' smart constructor.
data CalendarListUpdate' = CalendarListUpdate'
    { _cluCalendarListEntry :: !CalendarListEntry
    , _cluQuotaUser         :: !(Maybe Text)
    , _cluCalendarId        :: !Text
    , _cluPrettyPrint       :: !Bool
    , _cluUserIP            :: !(Maybe Text)
    , _cluColorRgbFormat    :: !(Maybe Bool)
    , _cluKey               :: !(Maybe Key)
    , _cluOAuthToken        :: !(Maybe OAuthToken)
    , _cluFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cluCalendarListEntry'
--
-- * 'cluQuotaUser'
--
-- * 'cluCalendarId'
--
-- * 'cluPrettyPrint'
--
-- * 'cluUserIP'
--
-- * 'cluColorRgbFormat'
--
-- * 'cluKey'
--
-- * 'cluOAuthToken'
--
-- * 'cluFields'
calendarListUpdate'
    :: CalendarListEntry -- ^ 'CalendarListEntry'
    -> Text -- ^ 'calendarId'
    -> CalendarListUpdate'
calendarListUpdate' pCluCalendarListEntry_ pCluCalendarId_ =
    CalendarListUpdate'
    { _cluCalendarListEntry = pCluCalendarListEntry_
    , _cluQuotaUser = Nothing
    , _cluCalendarId = pCluCalendarId_
    , _cluPrettyPrint = True
    , _cluUserIP = Nothing
    , _cluColorRgbFormat = Nothing
    , _cluKey = Nothing
    , _cluOAuthToken = Nothing
    , _cluFields = Nothing
    }

-- | Multipart request metadata.
cluCalendarListEntry :: Lens' CalendarListUpdate' CalendarListEntry
cluCalendarListEntry
  = lens _cluCalendarListEntry
      (\ s a -> s{_cluCalendarListEntry = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cluQuotaUser :: Lens' CalendarListUpdate' (Maybe Text)
cluQuotaUser
  = lens _cluQuotaUser (\ s a -> s{_cluQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cluCalendarId :: Lens' CalendarListUpdate' Text
cluCalendarId
  = lens _cluCalendarId
      (\ s a -> s{_cluCalendarId = a})

-- | Returns response with indentations and line breaks.
cluPrettyPrint :: Lens' CalendarListUpdate' Bool
cluPrettyPrint
  = lens _cluPrettyPrint
      (\ s a -> s{_cluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cluUserIP :: Lens' CalendarListUpdate' (Maybe Text)
cluUserIP
  = lens _cluUserIP (\ s a -> s{_cluUserIP = a})

-- | Whether to use the foregroundColor and backgroundColor fields to write
-- the calendar colors (RGB). If this feature is used, the index-based
-- colorId field will be set to the best matching option automatically.
-- Optional. The default is False.
cluColorRgbFormat :: Lens' CalendarListUpdate' (Maybe Bool)
cluColorRgbFormat
  = lens _cluColorRgbFormat
      (\ s a -> s{_cluColorRgbFormat = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cluKey :: Lens' CalendarListUpdate' (Maybe Key)
cluKey = lens _cluKey (\ s a -> s{_cluKey = a})

-- | OAuth 2.0 token for the current user.
cluOAuthToken :: Lens' CalendarListUpdate' (Maybe OAuthToken)
cluOAuthToken
  = lens _cluOAuthToken
      (\ s a -> s{_cluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cluFields :: Lens' CalendarListUpdate' (Maybe Text)
cluFields
  = lens _cluFields (\ s a -> s{_cluFields = a})

instance GoogleAuth CalendarListUpdate' where
        authKey = cluKey . _Just
        authToken = cluOAuthToken . _Just

instance GoogleRequest CalendarListUpdate' where
        type Rs CalendarListUpdate' = CalendarListEntry
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListUpdate'{..}
          = go _cluQuotaUser _cluCalendarId
              (Just _cluPrettyPrint)
              _cluUserIP
              _cluColorRgbFormat
              _cluKey
              _cluOAuthToken
              _cluFields
              (Just AltJSON)
              _cluCalendarListEntry
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarListUpdateResource)
                      r
                      u
