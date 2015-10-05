{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.CalendarList.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an entry on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarListDelete@.
module Network.Google.Resource.Calendar.CalendarList.Delete
    (
    -- * REST Resource
      CalendarListDeleteResource

    -- * Creating a Request
    , calendarListDelete'
    , CalendarListDelete'

    -- * Request Lenses
    , cldQuotaUser
    , cldCalendarId
    , cldPrettyPrint
    , cldUserIP
    , cldKey
    , cldOAuthToken
    , cldFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarListDelete@ which the
-- 'CalendarListDelete'' request conforms to.
type CalendarListDeleteResource =
     "users" :>
       "me" :>
         "calendarList" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an entry on the user\'s calendar list.
--
-- /See:/ 'calendarListDelete'' smart constructor.
data CalendarListDelete' = CalendarListDelete'
    { _cldQuotaUser   :: !(Maybe Text)
    , _cldCalendarId  :: !Text
    , _cldPrettyPrint :: !Bool
    , _cldUserIP      :: !(Maybe Text)
    , _cldKey         :: !(Maybe Key)
    , _cldOAuthToken  :: !(Maybe OAuthToken)
    , _cldFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldQuotaUser'
--
-- * 'cldCalendarId'
--
-- * 'cldPrettyPrint'
--
-- * 'cldUserIP'
--
-- * 'cldKey'
--
-- * 'cldOAuthToken'
--
-- * 'cldFields'
calendarListDelete'
    :: Text -- ^ 'calendarId'
    -> CalendarListDelete'
calendarListDelete' pCldCalendarId_ =
    CalendarListDelete'
    { _cldQuotaUser = Nothing
    , _cldCalendarId = pCldCalendarId_
    , _cldPrettyPrint = True
    , _cldUserIP = Nothing
    , _cldKey = Nothing
    , _cldOAuthToken = Nothing
    , _cldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cldQuotaUser :: Lens' CalendarListDelete' (Maybe Text)
cldQuotaUser
  = lens _cldQuotaUser (\ s a -> s{_cldQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cldCalendarId :: Lens' CalendarListDelete' Text
cldCalendarId
  = lens _cldCalendarId
      (\ s a -> s{_cldCalendarId = a})

-- | Returns response with indentations and line breaks.
cldPrettyPrint :: Lens' CalendarListDelete' Bool
cldPrettyPrint
  = lens _cldPrettyPrint
      (\ s a -> s{_cldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cldUserIP :: Lens' CalendarListDelete' (Maybe Text)
cldUserIP
  = lens _cldUserIP (\ s a -> s{_cldUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cldKey :: Lens' CalendarListDelete' (Maybe Key)
cldKey = lens _cldKey (\ s a -> s{_cldKey = a})

-- | OAuth 2.0 token for the current user.
cldOAuthToken :: Lens' CalendarListDelete' (Maybe OAuthToken)
cldOAuthToken
  = lens _cldOAuthToken
      (\ s a -> s{_cldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cldFields :: Lens' CalendarListDelete' (Maybe Text)
cldFields
  = lens _cldFields (\ s a -> s{_cldFields = a})

instance GoogleAuth CalendarListDelete' where
        authKey = cldKey . _Just
        authToken = cldOAuthToken . _Just

instance GoogleRequest CalendarListDelete' where
        type Rs CalendarListDelete' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u CalendarListDelete'{..}
          = go _cldCalendarId _cldQuotaUser
              (Just _cldPrettyPrint)
              _cldUserIP
              _cldFields
              _cldKey
              _cldOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CalendarListDeleteResource)
                      r
                      u
