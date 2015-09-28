{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.ACL.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the rules in the access control list for the calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.list@.
module Network.Google.API.Calendar.ACL.List
    (
    -- * REST Resource
      ACLListAPI

    -- * Creating a Request
    , aCLList'
    , ACLList'

    -- * Request Lenses
    , alSyncToken
    , alQuotaUser
    , alCalendarId
    , alPrettyPrint
    , alUserIp
    , alShowDeleted
    , alKey
    , alPageToken
    , alOauthToken
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.acl.list which the
-- 'ACLList'' request conforms to.
type ACLListAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           QueryParam "syncToken" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Nat :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] Acl

-- | Returns the rules in the access control list for the calendar.
--
-- /See:/ 'aCLList'' smart constructor.
data ACLList' = ACLList'
    { _alSyncToken   :: !(Maybe Text)
    , _alQuotaUser   :: !(Maybe Text)
    , _alCalendarId  :: !Text
    , _alPrettyPrint :: !Bool
    , _alUserIp      :: !(Maybe Text)
    , _alShowDeleted :: !(Maybe Bool)
    , _alKey         :: !(Maybe Text)
    , _alPageToken   :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alMaxResults  :: !(Maybe Nat)
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'alUserIp'
--
-- * 'alShowDeleted'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
aCLList'
    :: Text -- ^ 'calendarId'
    -> ACLList'
aCLList' pAlCalendarId_ =
    ACLList'
    { _alSyncToken = Nothing
    , _alQuotaUser = Nothing
    , _alCalendarId = pAlCalendarId_
    , _alPrettyPrint = True
    , _alUserIp = Nothing
    , _alShowDeleted = Nothing
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alMaxResults = Nothing
    , _alFields = Nothing
    , _alAlt = JSON
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
alUserIp :: Lens' ACLList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

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
alKey :: Lens' ACLList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | Token specifying which result page to return. Optional.
alPageToken :: Lens' ACLList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' ACLList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
alMaxResults :: Lens' ACLList' (Maybe Natural)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' ACLList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' ACLList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest ACLList' where
        type Rs ACLList' = Acl
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLList'{..}
          = go _alSyncToken _alQuotaUser _alCalendarId
              (Just _alPrettyPrint)
              _alUserIp
              _alShowDeleted
              _alKey
              _alPageToken
              _alOauthToken
              _alMaxResults
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ACLListAPI) r u
