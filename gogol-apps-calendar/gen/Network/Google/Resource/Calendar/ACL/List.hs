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
-- Module      : Network.Google.Resource.Calendar.ACL.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the rules in the access control list for the calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLList@.
module Network.Google.Resource.Calendar.ACL.List
    (
    -- * REST Resource
      ACLListResource

    -- * Creating a Request
    , aclList'
    , ACLList'

    -- * Request Lenses
    , alSyncToken
    , alQuotaUser
    , alCalendarId
    , alPrettyPrint
    , alUserIP
    , alShowDeleted
    , alKey
    , alPageToken
    , alOAuthToken
    , alMaxResults
    , alFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLList@ which the
-- 'ACLList'' request conforms to.
type ACLListResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           QueryParam "syncToken" Text :>
             QueryParam "showDeleted" Bool :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] ACL

-- | Returns the rules in the access control list for the calendar.
--
-- /See:/ 'aclList'' smart constructor.
data ACLList' = ACLList'
    { _alSyncToken   :: !(Maybe Text)
    , _alQuotaUser   :: !(Maybe Text)
    , _alCalendarId  :: !Text
    , _alPrettyPrint :: !Bool
    , _alUserIP      :: !(Maybe Text)
    , _alShowDeleted :: !(Maybe Bool)
    , _alKey         :: !(Maybe AuthKey)
    , _alPageToken   :: !(Maybe Text)
    , _alOAuthToken  :: !(Maybe OAuthToken)
    , _alMaxResults  :: !(Maybe Int32)
    , _alFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alSyncToken'
--
-- * 'alQuotaUser'
--
-- * 'alCalendarId'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIP'
--
-- * 'alShowDeleted'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alOAuthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
aclList'
    :: Text -- ^ 'calendarId'
    -> ACLList'
aclList' pAlCalendarId_ =
    ACLList'
    { _alSyncToken = Nothing
    , _alQuotaUser = Nothing
    , _alCalendarId = pAlCalendarId_
    , _alPrettyPrint = True
    , _alUserIP = Nothing
    , _alShowDeleted = Nothing
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alOAuthToken = Nothing
    , _alMaxResults = Nothing
    , _alFields = Nothing
    }

-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. All entries
-- deleted since the previous list request will always be in the result set
-- and it is not allowed to set showDeleted to False. If the syncToken
-- expires, the server will respond with a 410 GONE response code and the
-- client should clear its storage and perform a full synchronization
-- without any syncToken. Learn more about incremental synchronization.
-- Optional. The default is to return all entries.
alSyncToken :: Lens' ACLList' (Maybe Text)
alSyncToken
  = lens _alSyncToken (\ s a -> s{_alSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' ACLList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
alCalendarId :: Lens' ACLList' Text
alCalendarId
  = lens _alCalendarId (\ s a -> s{_alCalendarId = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' ACLList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIP :: Lens' ACLList' (Maybe Text)
alUserIP = lens _alUserIP (\ s a -> s{_alUserIP = a})

-- | Whether to include deleted ACLs in the result. Deleted ACLs are
-- represented by role equal to \"none\". Deleted ACLs will always be
-- included if syncToken is provided. Optional. The default is False.
alShowDeleted :: Lens' ACLList' (Maybe Bool)
alShowDeleted
  = lens _alShowDeleted
      (\ s a -> s{_alShowDeleted = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' ACLList' (Maybe AuthKey)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | Token specifying which result page to return. Optional.
alPageToken :: Lens' ACLList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOAuthToken :: Lens' ACLList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
alMaxResults :: Lens' ACLList' (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' ACLList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth ACLList' where
        authKey = alKey . _Just
        authToken = alOAuthToken . _Just

instance GoogleRequest ACLList' where
        type Rs ACLList' = ACL
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLList'{..}
          = go _alCalendarId _alSyncToken _alShowDeleted
              _alPageToken
              _alMaxResults
              _alQuotaUser
              (Just _alPrettyPrint)
              _alUserIP
              _alFields
              _alKey
              _alOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ACLListResource) r
                      u
