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
    , fbqPayload
    , fbqKey
    , fbqOAuthToken
    , fbqFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarFreeBusyQuery@ method which the
-- 'FreeBusyQuery'' request conforms to.
type FreeBusyQueryResource =
     "freeBusy" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 Header "Authorization" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] FreeBusyRequest :>
                       Post '[JSON] FreeBusyResponse

-- | Returns free\/busy information for a set of calendars.
--
-- /See:/ 'freeBusyQuery'' smart constructor.
data FreeBusyQuery' = FreeBusyQuery'
    { _fbqQuotaUser   :: !(Maybe Text)
    , _fbqPrettyPrint :: !Bool
    , _fbqUserIP      :: !(Maybe Text)
    , _fbqPayload     :: !FreeBusyRequest
    , _fbqKey         :: !(Maybe AuthKey)
    , _fbqOAuthToken  :: !(Maybe OAuthToken)
    , _fbqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'fbqPayload'
--
-- * 'fbqKey'
--
-- * 'fbqOAuthToken'
--
-- * 'fbqFields'
freeBusyQuery'
    :: FreeBusyRequest -- ^ 'payload'
    -> FreeBusyQuery'
freeBusyQuery' pFbqPayload_ =
    FreeBusyQuery'
    { _fbqQuotaUser = Nothing
    , _fbqPrettyPrint = True
    , _fbqUserIP = Nothing
    , _fbqPayload = pFbqPayload_
    , _fbqKey = Nothing
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

-- | Multipart request metadata.
fbqPayload :: Lens' FreeBusyQuery' FreeBusyRequest
fbqPayload
  = lens _fbqPayload (\ s a -> s{_fbqPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fbqKey :: Lens' FreeBusyQuery' (Maybe AuthKey)
fbqKey = lens _fbqKey (\ s a -> s{_fbqKey = a})

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
        _AuthKey = fbqKey . _Just
        _AuthToken = fbqOAuthToken . _Just

instance GoogleRequest FreeBusyQuery' where
        type Rs FreeBusyQuery' = FreeBusyResponse
        request = requestWith appsCalendarRequest
        requestWith rq FreeBusyQuery'{..}
          = go _fbqQuotaUser (Just _fbqPrettyPrint) _fbqUserIP
              _fbqFields
              _fbqKey
              _fbqOAuthToken
              (Just AltJSON)
              _fbqPayload
          where go
                  = clientBuild (Proxy :: Proxy FreeBusyQueryResource)
                      rq
