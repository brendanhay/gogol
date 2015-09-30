{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.ACL.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLInsert@.
module Calendar.ACL.Insert
    (
    -- * REST Resource
      AclInsertAPI

    -- * Creating a Request
    , aCLInsert
    , ACLInsert

    -- * Request Lenses
    , aiQuotaUser
    , aiCalendarId
    , aiPrettyPrint
    , aiUserIp
    , aiKey
    , aiOauthToken
    , aiFields
    , aiAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLInsert@ which the
-- 'ACLInsert' request conforms to.
type AclInsertAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :> Post '[JSON] ACLRule

-- | Creates an access control rule.
--
-- /See:/ 'aCLInsert' smart constructor.
data ACLInsert = ACLInsert
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiCalendarId  :: !Text
    , _aiPrettyPrint :: !Bool
    , _aiUserIp      :: !(Maybe Text)
    , _aiKey         :: !(Maybe Text)
    , _aiOauthToken  :: !(Maybe Text)
    , _aiFields      :: !(Maybe Text)
    , _aiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiCalendarId'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIp'
--
-- * 'aiKey'
--
-- * 'aiOauthToken'
--
-- * 'aiFields'
--
-- * 'aiAlt'
aCLInsert
    :: Text -- ^ 'calendarId'
    -> ACLInsert
aCLInsert pAiCalendarId_ =
    ACLInsert
    { _aiQuotaUser = Nothing
    , _aiCalendarId = pAiCalendarId_
    , _aiPrettyPrint = True
    , _aiUserIp = Nothing
    , _aiKey = Nothing
    , _aiOauthToken = Nothing
    , _aiFields = Nothing
    , _aiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' ACLInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
aiCalendarId :: Lens' ACLInsert' Text
aiCalendarId
  = lens _aiCalendarId (\ s a -> s{_aiCalendarId = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' ACLInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIp :: Lens' ACLInsert' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' ACLInsert' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' ACLInsert' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' ACLInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' ACLInsert' Text
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest ACLInsert' where
        type Rs ACLInsert' = ACLRule
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLInsert{..}
          = go _aiQuotaUser _aiCalendarId _aiPrettyPrint
              _aiUserIp
              _aiKey
              _aiOauthToken
              _aiFields
              _aiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AclInsertAPI) r u
