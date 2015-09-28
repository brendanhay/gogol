{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.ACL.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes to ACL resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.watch@.
module Network.Google.API.Calendar.ACL.Watch
    (
    -- * REST Resource
      ACLWatchAPI

    -- * Creating a Request
    , aCLWatch'
    , ACLWatch'

    -- * Request Lenses
    , awSyncToken
    , awQuotaUser
    , awCalendarId
    , awPrettyPrint
    , awUserIp
    , awShowDeleted
    , awKey
    , awPageToken
    , awOauthToken
    , awMaxResults
    , awFields
    , awAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.acl.watch which the
-- 'ACLWatch'' request conforms to.
type ACLWatchAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           "watch" :>
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
                                 QueryParam "alt" Alt :> Post '[JSON] Channel

-- | Watch for changes to ACL resources.
--
-- /See:/ 'aCLWatch'' smart constructor.
data ACLWatch' = ACLWatch'
    { _awSyncToken   :: !(Maybe Text)
    , _awQuotaUser   :: !(Maybe Text)
    , _awCalendarId  :: !Text
    , _awPrettyPrint :: !Bool
    , _awUserIp      :: !(Maybe Text)
    , _awShowDeleted :: !(Maybe Bool)
    , _awKey         :: !(Maybe Text)
    , _awPageToken   :: !(Maybe Text)
    , _awOauthToken  :: !(Maybe Text)
    , _awMaxResults  :: !(Maybe Nat)
    , _awFields      :: !(Maybe Text)
    , _awAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awSyncToken'
--
-- * 'awQuotaUser'
--
-- * 'awCalendarId'
--
-- * 'awPrettyPrint'
--
-- * 'awUserIp'
--
-- * 'awShowDeleted'
--
-- * 'awKey'
--
-- * 'awPageToken'
--
-- * 'awOauthToken'
--
-- * 'awMaxResults'
--
-- * 'awFields'
--
-- * 'awAlt'
aCLWatch'
    :: Text -- ^ 'calendarId'
    -> ACLWatch'
aCLWatch' pAwCalendarId_ =
    ACLWatch'
    { _awSyncToken = Nothing
    , _awQuotaUser = Nothing
    , _awCalendarId = pAwCalendarId_
    , _awPrettyPrint = True
    , _awUserIp = Nothing
    , _awShowDeleted = Nothing
    , _awKey = Nothing
    , _awPageToken = Nothing
    , _awOauthToken = Nothing
    , _awMaxResults = Nothing
    , _awFields = Nothing
    , _awAlt = JSON
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
awSyncToken :: Lens' ACLWatch' (Maybe Text)
awSyncToken
  = lens _awSyncToken (\ s a -> s{_awSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
awQuotaUser :: Lens' ACLWatch' (Maybe Text)
awQuotaUser
  = lens _awQuotaUser (\ s a -> s{_awQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
awCalendarId :: Lens' ACLWatch' Text
awCalendarId
  = lens _awCalendarId (\ s a -> s{_awCalendarId = a})

-- | Returns response with indentations and line breaks.
awPrettyPrint :: Lens' ACLWatch' Bool
awPrettyPrint
  = lens _awPrettyPrint
      (\ s a -> s{_awPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
awUserIp :: Lens' ACLWatch' (Maybe Text)
awUserIp = lens _awUserIp (\ s a -> s{_awUserIp = a})

-- | Whether to include deleted ACLs in the result. Deleted ACLs are
-- represented by role equal to \"none\". Deleted ACLs will always be
-- included if syncToken is provided. Optional. The default is False.
awShowDeleted :: Lens' ACLWatch' (Maybe Bool)
awShowDeleted
  = lens _awShowDeleted
      (\ s a -> s{_awShowDeleted = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
awKey :: Lens' ACLWatch' (Maybe Text)
awKey = lens _awKey (\ s a -> s{_awKey = a})

-- | Token specifying which result page to return. Optional.
awPageToken :: Lens' ACLWatch' (Maybe Text)
awPageToken
  = lens _awPageToken (\ s a -> s{_awPageToken = a})

-- | OAuth 2.0 token for the current user.
awOauthToken :: Lens' ACLWatch' (Maybe Text)
awOauthToken
  = lens _awOauthToken (\ s a -> s{_awOauthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
awMaxResults :: Lens' ACLWatch' (Maybe Natural)
awMaxResults
  = lens _awMaxResults (\ s a -> s{_awMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
awFields :: Lens' ACLWatch' (Maybe Text)
awFields = lens _awFields (\ s a -> s{_awFields = a})

-- | Data format for the response.
awAlt :: Lens' ACLWatch' Alt
awAlt = lens _awAlt (\ s a -> s{_awAlt = a})

instance GoogleRequest ACLWatch' where
        type Rs ACLWatch' = Channel
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLWatch'{..}
          = go _awSyncToken _awQuotaUser _awCalendarId
              (Just _awPrettyPrint)
              _awUserIp
              _awShowDeleted
              _awKey
              _awPageToken
              _awOauthToken
              _awMaxResults
              _awFields
              (Just _awAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ACLWatchAPI) r u
