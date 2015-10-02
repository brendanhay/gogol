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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds an entry to the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListInsert@.
module Network.Google.Resource.Calendar.CalendarList.Insert
    (
    -- * REST Resource
      CalendarListInsertResource

    -- * Creating a Request
    , calendarListInsert'
    , CalendarListInsert'

    -- * Request Lenses
    , cliCalendarListEntry
    , cliQuotaUser
    , cliPrettyPrint
    , cliUserIP
    , cliColorRgbFormat
    , cliKey
    , cliOAuthToken
    , cliFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListInsert@ which the
-- 'CalendarListInsert'' request conforms to.
type CalendarListInsertResource =
     "users" :>
       "me" :>
         "calendarList" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "colorRgbFormat" Bool :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CalendarListEntry :>
                             Post '[JSON] CalendarListEntry

-- | Adds an entry to the user\'s calendar list.
--
-- /See:/ 'calendarListInsert'' smart constructor.
data CalendarListInsert' = CalendarListInsert'
    { _cliCalendarListEntry :: !CalendarListEntry
    , _cliQuotaUser         :: !(Maybe Text)
    , _cliPrettyPrint       :: !Bool
    , _cliUserIP            :: !(Maybe Text)
    , _cliColorRgbFormat    :: !(Maybe Bool)
    , _cliKey               :: !(Maybe Key)
    , _cliOAuthToken        :: !(Maybe OAuthToken)
    , _cliFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cliCalendarListEntry'
--
-- * 'cliQuotaUser'
--
-- * 'cliPrettyPrint'
--
-- * 'cliUserIP'
--
-- * 'cliColorRgbFormat'
--
-- * 'cliKey'
--
-- * 'cliOAuthToken'
--
-- * 'cliFields'
calendarListInsert'
    :: CalendarListEntry -- ^ 'CalendarListEntry'
    -> CalendarListInsert'
calendarListInsert' pCliCalendarListEntry_ =
    CalendarListInsert'
    { _cliCalendarListEntry = pCliCalendarListEntry_
    , _cliQuotaUser = Nothing
    , _cliPrettyPrint = True
    , _cliUserIP = Nothing
    , _cliColorRgbFormat = Nothing
    , _cliKey = Nothing
    , _cliOAuthToken = Nothing
    , _cliFields = Nothing
    }

-- | Multipart request metadata.
cliCalendarListEntry :: Lens' CalendarListInsert' CalendarListEntry
cliCalendarListEntry
  = lens _cliCalendarListEntry
      (\ s a -> s{_cliCalendarListEntry = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cliQuotaUser :: Lens' CalendarListInsert' (Maybe Text)
cliQuotaUser
  = lens _cliQuotaUser (\ s a -> s{_cliQuotaUser = a})

-- | Returns response with indentations and line breaks.
cliPrettyPrint :: Lens' CalendarListInsert' Bool
cliPrettyPrint
  = lens _cliPrettyPrint
      (\ s a -> s{_cliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cliUserIP :: Lens' CalendarListInsert' (Maybe Text)
cliUserIP
  = lens _cliUserIP (\ s a -> s{_cliUserIP = a})

-- | Whether to use the foregroundColor and backgroundColor fields to write
-- the calendar colors (RGB). If this feature is used, the index-based
-- colorId field will be set to the best matching option automatically.
-- Optional. The default is False.
cliColorRgbFormat :: Lens' CalendarListInsert' (Maybe Bool)
cliColorRgbFormat
  = lens _cliColorRgbFormat
      (\ s a -> s{_cliColorRgbFormat = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cliKey :: Lens' CalendarListInsert' (Maybe Key)
cliKey = lens _cliKey (\ s a -> s{_cliKey = a})

-- | OAuth 2.0 token for the current user.
cliOAuthToken :: Lens' CalendarListInsert' (Maybe OAuthToken)
cliOAuthToken
  = lens _cliOAuthToken
      (\ s a -> s{_cliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cliFields :: Lens' CalendarListInsert' (Maybe Text)
cliFields
  = lens _cliFields (\ s a -> s{_cliFields = a})

instance GoogleAuth CalendarListInsert' where
        authKey = cliKey . _Just
        authToken = cliOAuthToken . _Just

instance GoogleRequest CalendarListInsert' where
        type Rs CalendarListInsert' = CalendarListEntry
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListInsert'{..}
          = go _cliQuotaUser (Just _cliPrettyPrint) _cliUserIP
              _cliColorRgbFormat
              _cliKey
              _cliOAuthToken
              _cliFields
              (Just AltJSON)
              _cliCalendarListEntry
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarListInsertResource)
                      r
                      u
