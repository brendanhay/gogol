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
-- Module      : Network.Google.Resource.Calendar.FreeBusy.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns free\/busy information for a set of calendars.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarFreeBusyQuery@.
module Network.Google.Resource.Calendar.FreeBusy.Query
    (
    -- * REST Resource
      FreeBusyQueryResource

    -- * Creating a Request
    , freeBusyQuery'
    , FreeBusyQuery'

    -- * Request Lenses
    , fbqQuotaUser
    , fbqPrettyPrint
    , fbqUserIP
    , fbqKey
    , fbqFreeBusyRequest
    , fbqOAuthToken
    , fbqFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarFreeBusyQuery@ which the
-- 'FreeBusyQuery'' request conforms to.
type FreeBusyQueryResource =
     "freeBusy" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] FreeBusyRequest :>
                       Post '[JSON] FreeBusyResponse

-- | Returns free\/busy information for a set of calendars.
--
-- /See:/ 'freeBusyQuery'' smart constructor.
data FreeBusyQuery' = FreeBusyQuery'
    { _fbqQuotaUser       :: !(Maybe Text)
    , _fbqPrettyPrint     :: !Bool
    , _fbqUserIP          :: !(Maybe Text)
    , _fbqKey             :: !(Maybe Key)
    , _fbqFreeBusyRequest :: !FreeBusyRequest
    , _fbqOAuthToken      :: !(Maybe OAuthToken)
    , _fbqFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbqQuotaUser'
--
-- * 'fbqPrettyPrint'
--
-- * 'fbqUserIP'
--
-- * 'fbqKey'
--
-- * 'fbqFreeBusyRequest'
--
-- * 'fbqOAuthToken'
--
-- * 'fbqFields'
freeBusyQuery'
    :: FreeBusyRequest -- ^ 'FreeBusyRequest'
    -> FreeBusyQuery'
freeBusyQuery' pFbqFreeBusyRequest_ =
    FreeBusyQuery'
    { _fbqQuotaUser = Nothing
    , _fbqPrettyPrint = True
    , _fbqUserIP = Nothing
    , _fbqKey = Nothing
    , _fbqFreeBusyRequest = pFbqFreeBusyRequest_
    , _fbqOAuthToken = Nothing
    , _fbqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fbqQuotaUser :: Lens' FreeBusyQuery' (Maybe Text)
fbqQuotaUser
  = lens _fbqQuotaUser (\ s a -> s{_fbqQuotaUser = a})

-- | Returns response with indentations and line breaks.
fbqPrettyPrint :: Lens' FreeBusyQuery' Bool
fbqPrettyPrint
  = lens _fbqPrettyPrint
      (\ s a -> s{_fbqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fbqUserIP :: Lens' FreeBusyQuery' (Maybe Text)
fbqUserIP
  = lens _fbqUserIP (\ s a -> s{_fbqUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fbqKey :: Lens' FreeBusyQuery' (Maybe Key)
fbqKey = lens _fbqKey (\ s a -> s{_fbqKey = a})

-- | Multipart request metadata.
fbqFreeBusyRequest :: Lens' FreeBusyQuery' FreeBusyRequest
fbqFreeBusyRequest
  = lens _fbqFreeBusyRequest
      (\ s a -> s{_fbqFreeBusyRequest = a})

-- | OAuth 2.0 token for the current user.
fbqOAuthToken :: Lens' FreeBusyQuery' (Maybe OAuthToken)
fbqOAuthToken
  = lens _fbqOAuthToken
      (\ s a -> s{_fbqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fbqFields :: Lens' FreeBusyQuery' (Maybe Text)
fbqFields
  = lens _fbqFields (\ s a -> s{_fbqFields = a})

instance GoogleAuth FreeBusyQuery' where
        authKey = fbqKey . _Just
        authToken = fbqOAuthToken . _Just

instance GoogleRequest FreeBusyQuery' where
        type Rs FreeBusyQuery' = FreeBusyResponse
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u FreeBusyQuery'{..}
          = go _fbqQuotaUser (Just _fbqPrettyPrint) _fbqUserIP
              _fbqKey
              _fbqOAuthToken
              _fbqFields
              (Just AltJSON)
              _fbqFreeBusyRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FreeBusyQueryResource)
                      r
                      u
