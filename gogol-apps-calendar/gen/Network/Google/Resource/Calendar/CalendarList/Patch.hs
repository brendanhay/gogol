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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an entry on the user\'s calendar list. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListPatch@.
module Network.Google.Resource.Calendar.CalendarList.Patch
    (
    -- * REST Resource
      CalendarListPatchResource

    -- * Creating a Request
    , calendarListPatch'
    , CalendarListPatch'

    -- * Request Lenses
    , clpQuotaUser
    , clpCalendarId
    , clpPrettyPrint
    , clpUserIP
    , clpPayload
    , clpColorRgbFormat
    , clpKey
    , clpOAuthToken
    , clpFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListPatch@ method which the
-- 'CalendarListPatch'' request conforms to.
type CalendarListPatchResource =
     "users" :>
       "me" :>
         "calendarList" :>
           Capture "calendarId" Text :>
             QueryParam "colorRgbFormat" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CalendarListEntry :>
                               Patch '[JSON] CalendarListEntry

-- | Updates an entry on the user\'s calendar list. This method supports
-- patch semantics.
--
-- /See:/ 'calendarListPatch'' smart constructor.
data CalendarListPatch' = CalendarListPatch'
    { _clpQuotaUser      :: !(Maybe Text)
    , _clpCalendarId     :: !Text
    , _clpPrettyPrint    :: !Bool
    , _clpUserIP         :: !(Maybe Text)
    , _clpPayload        :: !CalendarListEntry
    , _clpColorRgbFormat :: !(Maybe Bool)
    , _clpKey            :: !(Maybe AuthKey)
    , _clpOAuthToken     :: !(Maybe OAuthToken)
    , _clpFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clpQuotaUser'
--
-- * 'clpCalendarId'
--
-- * 'clpPrettyPrint'
--
-- * 'clpUserIP'
--
-- * 'clpPayload'
--
-- * 'clpColorRgbFormat'
--
-- * 'clpKey'
--
-- * 'clpOAuthToken'
--
-- * 'clpFields'
calendarListPatch'
    :: Text -- ^ 'calendarId'
    -> CalendarListEntry -- ^ 'payload'
    -> CalendarListPatch'
calendarListPatch' pClpCalendarId_ pClpPayload_ =
    CalendarListPatch'
    { _clpQuotaUser = Nothing
    , _clpCalendarId = pClpCalendarId_
    , _clpPrettyPrint = True
    , _clpUserIP = Nothing
    , _clpPayload = pClpPayload_
    , _clpColorRgbFormat = Nothing
    , _clpKey = Nothing
    , _clpOAuthToken = Nothing
    , _clpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clpQuotaUser :: Lens' CalendarListPatch' (Maybe Text)
clpQuotaUser
  = lens _clpQuotaUser (\ s a -> s{_clpQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
clpCalendarId :: Lens' CalendarListPatch' Text
clpCalendarId
  = lens _clpCalendarId
      (\ s a -> s{_clpCalendarId = a})

-- | Returns response with indentations and line breaks.
clpPrettyPrint :: Lens' CalendarListPatch' Bool
clpPrettyPrint
  = lens _clpPrettyPrint
      (\ s a -> s{_clpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clpUserIP :: Lens' CalendarListPatch' (Maybe Text)
clpUserIP
  = lens _clpUserIP (\ s a -> s{_clpUserIP = a})

-- | Multipart request metadata.
clpPayload :: Lens' CalendarListPatch' CalendarListEntry
clpPayload
  = lens _clpPayload (\ s a -> s{_clpPayload = a})

-- | Whether to use the foregroundColor and backgroundColor fields to write
-- the calendar colors (RGB). If this feature is used, the index-based
-- colorId field will be set to the best matching option automatically.
-- Optional. The default is False.
clpColorRgbFormat :: Lens' CalendarListPatch' (Maybe Bool)
clpColorRgbFormat
  = lens _clpColorRgbFormat
      (\ s a -> s{_clpColorRgbFormat = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clpKey :: Lens' CalendarListPatch' (Maybe AuthKey)
clpKey = lens _clpKey (\ s a -> s{_clpKey = a})

-- | OAuth 2.0 token for the current user.
clpOAuthToken :: Lens' CalendarListPatch' (Maybe OAuthToken)
clpOAuthToken
  = lens _clpOAuthToken
      (\ s a -> s{_clpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
clpFields :: Lens' CalendarListPatch' (Maybe Text)
clpFields
  = lens _clpFields (\ s a -> s{_clpFields = a})

instance GoogleAuth CalendarListPatch' where
        _AuthKey = clpKey . _Just
        _AuthToken = clpOAuthToken . _Just

instance GoogleRequest CalendarListPatch' where
        type Rs CalendarListPatch' = CalendarListEntry
        request = requestWith appsCalendarRequest
        requestWith rq CalendarListPatch'{..}
          = go _clpCalendarId _clpColorRgbFormat _clpQuotaUser
              (Just _clpPrettyPrint)
              _clpUserIP
              _clpFields
              _clpKey
              _clpOAuthToken
              (Just AltJSON)
              _clpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy CalendarListPatchResource)
                      rq
