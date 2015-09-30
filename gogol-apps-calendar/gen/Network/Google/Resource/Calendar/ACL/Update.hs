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
-- Module      : Network.Google.Resource.Calendar.ACL.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLUpdate@.
module Network.Google.Resource.Calendar.ACL.Update
    (
    -- * REST Resource
      AclUpdateResource

    -- * Creating a Request
    , aCLUpdate'
    , ACLUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auCalendarId
    , auPrettyPrint
    , auUserIp
    , auRuleId
    , auKey
    , auOauthToken
    , auFields
    , auAlt
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLUpdate@ which the
-- 'ACLUpdate'' request conforms to.
type AclUpdateResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           Capture "ruleId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] ACLRule

-- | Updates an access control rule.
--
-- /See:/ 'aCLUpdate'' smart constructor.
data ACLUpdate' = ACLUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auCalendarId  :: !Text
    , _auPrettyPrint :: !Bool
    , _auUserIp      :: !(Maybe Text)
    , _auRuleId      :: !Text
    , _auKey         :: !(Maybe Text)
    , _auOauthToken  :: !(Maybe Text)
    , _auFields      :: !(Maybe Text)
    , _auAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auCalendarId'
--
-- * 'auPrettyPrint'
--
-- * 'auUserIp'
--
-- * 'auRuleId'
--
-- * 'auKey'
--
-- * 'auOauthToken'
--
-- * 'auFields'
--
-- * 'auAlt'
aCLUpdate'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'ruleId'
    -> ACLUpdate'
aCLUpdate' pAuCalendarId_ pAuRuleId_ =
    ACLUpdate'
    { _auQuotaUser = Nothing
    , _auCalendarId = pAuCalendarId_
    , _auPrettyPrint = True
    , _auUserIp = Nothing
    , _auRuleId = pAuRuleId_
    , _auKey = Nothing
    , _auOauthToken = Nothing
    , _auFields = Nothing
    , _auAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' ACLUpdate' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
auCalendarId :: Lens' ACLUpdate' Text
auCalendarId
  = lens _auCalendarId (\ s a -> s{_auCalendarId = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' ACLUpdate' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIp :: Lens' ACLUpdate' (Maybe Text)
auUserIp = lens _auUserIp (\ s a -> s{_auUserIp = a})

-- | ACL rule identifier.
auRuleId :: Lens' ACLUpdate' Text
auRuleId = lens _auRuleId (\ s a -> s{_auRuleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' ACLUpdate' (Maybe Text)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | OAuth 2.0 token for the current user.
auOauthToken :: Lens' ACLUpdate' (Maybe Text)
auOauthToken
  = lens _auOauthToken (\ s a -> s{_auOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' ACLUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

-- | Data format for the response.
auAlt :: Lens' ACLUpdate' Alt
auAlt = lens _auAlt (\ s a -> s{_auAlt = a})

instance GoogleRequest ACLUpdate' where
        type Rs ACLUpdate' = ACLRule
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLUpdate'{..}
          = go _auQuotaUser _auCalendarId (Just _auPrettyPrint)
              _auUserIp
              _auRuleId
              _auKey
              _auOauthToken
              _auFields
              (Just _auAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AclUpdateResource)
                      r
                      u
