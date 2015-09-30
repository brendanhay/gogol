{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.ACL.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an access control rule. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLPatch@.
module Calendar.ACL.Patch
    (
    -- * REST Resource
      AclPatchAPI

    -- * Creating a Request
    , aCLPatch
    , ACLPatch

    -- * Request Lenses
    , apQuotaUser
    , apCalendarId
    , apPrettyPrint
    , apUserIp
    , apRuleId
    , apKey
    , apOauthToken
    , apFields
    , apAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLPatch@ which the
-- 'ACLPatch' request conforms to.
type AclPatchAPI =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           Capture "ruleId" Text :> Patch '[JSON] ACLRule

-- | Updates an access control rule. This method supports patch semantics.
--
-- /See:/ 'aCLPatch' smart constructor.
data ACLPatch = ACLPatch
    { _apQuotaUser   :: !(Maybe Text)
    , _apCalendarId  :: !Text
    , _apPrettyPrint :: !Bool
    , _apUserIp      :: !(Maybe Text)
    , _apRuleId      :: !Text
    , _apKey         :: !(Maybe Text)
    , _apOauthToken  :: !(Maybe Text)
    , _apFields      :: !(Maybe Text)
    , _apAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apCalendarId'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIp'
--
-- * 'apRuleId'
--
-- * 'apKey'
--
-- * 'apOauthToken'
--
-- * 'apFields'
--
-- * 'apAlt'
aCLPatch
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'ruleId'
    -> ACLPatch
aCLPatch pApCalendarId_ pApRuleId_ =
    ACLPatch
    { _apQuotaUser = Nothing
    , _apCalendarId = pApCalendarId_
    , _apPrettyPrint = True
    , _apUserIp = Nothing
    , _apRuleId = pApRuleId_
    , _apKey = Nothing
    , _apOauthToken = Nothing
    , _apFields = Nothing
    , _apAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' ACLPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
apCalendarId :: Lens' ACLPatch' Text
apCalendarId
  = lens _apCalendarId (\ s a -> s{_apCalendarId = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' ACLPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIp :: Lens' ACLPatch' (Maybe Text)
apUserIp = lens _apUserIp (\ s a -> s{_apUserIp = a})

-- | ACL rule identifier.
apRuleId :: Lens' ACLPatch' Text
apRuleId = lens _apRuleId (\ s a -> s{_apRuleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' ACLPatch' (Maybe Text)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | OAuth 2.0 token for the current user.
apOauthToken :: Lens' ACLPatch' (Maybe Text)
apOauthToken
  = lens _apOauthToken (\ s a -> s{_apOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' ACLPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

-- | Data format for the response.
apAlt :: Lens' ACLPatch' Text
apAlt = lens _apAlt (\ s a -> s{_apAlt = a})

instance GoogleRequest ACLPatch' where
        type Rs ACLPatch' = ACLRule
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLPatch{..}
          = go _apQuotaUser _apCalendarId _apPrettyPrint
              _apUserIp
              _apRuleId
              _apKey
              _apOauthToken
              _apFields
              _apAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AclPatchAPI) r u
