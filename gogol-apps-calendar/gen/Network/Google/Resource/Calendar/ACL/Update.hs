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
      ACLUpdateResource

    -- * Creating a Request
    , aclUpdate'
    , ACLUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auCalendarId
    , auPrettyPrint
    , auUserIP
    , auRuleId
    , auPayload
    , auKey
    , auOAuthToken
    , auFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLUpdate@ which the
-- 'ACLUpdate'' request conforms to.
type ACLUpdateResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           Capture "ruleId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ACLRule :> Put '[JSON] ACLRule

-- | Updates an access control rule.
--
-- /See:/ 'aclUpdate'' smart constructor.
data ACLUpdate' = ACLUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auCalendarId  :: !Text
    , _auPrettyPrint :: !Bool
    , _auUserIP      :: !(Maybe Text)
    , _auRuleId      :: !Text
    , _auPayload     :: !ACLRule
    , _auKey         :: !(Maybe AuthKey)
    , _auOAuthToken  :: !(Maybe OAuthToken)
    , _auFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'auUserIP'
--
-- * 'auRuleId'
--
-- * 'auPayload'
--
-- * 'auKey'
--
-- * 'auOAuthToken'
--
-- * 'auFields'
aclUpdate'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'ruleId'
    -> ACLRule -- ^ 'payload'
    -> ACLUpdate'
aclUpdate' pAuCalendarId_ pAuRuleId_ pAuPayload_ =
    ACLUpdate'
    { _auQuotaUser = Nothing
    , _auCalendarId = pAuCalendarId_
    , _auPrettyPrint = True
    , _auUserIP = Nothing
    , _auRuleId = pAuRuleId_
    , _auPayload = pAuPayload_
    , _auKey = Nothing
    , _auOAuthToken = Nothing
    , _auFields = Nothing
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
auUserIP :: Lens' ACLUpdate' (Maybe Text)
auUserIP = lens _auUserIP (\ s a -> s{_auUserIP = a})

-- | ACL rule identifier.
auRuleId :: Lens' ACLUpdate' Text
auRuleId = lens _auRuleId (\ s a -> s{_auRuleId = a})

-- | Multipart request metadata.
auPayload :: Lens' ACLUpdate' ACLRule
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' ACLUpdate' (Maybe AuthKey)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | OAuth 2.0 token for the current user.
auOAuthToken :: Lens' ACLUpdate' (Maybe OAuthToken)
auOAuthToken
  = lens _auOAuthToken (\ s a -> s{_auOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' ACLUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

instance GoogleAuth ACLUpdate' where
        authKey = auKey . _Just
        authToken = auOAuthToken . _Just

instance GoogleRequest ACLUpdate' where
        type Rs ACLUpdate' = ACLRule
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLUpdate'{..}
          = go _auCalendarId _auRuleId _auQuotaUser
              (Just _auPrettyPrint)
              _auUserIP
              _auFields
              _auKey
              _auOAuthToken
              (Just AltJSON)
              _auPayload
          where go
                  = clientWithRoute (Proxy :: Proxy ACLUpdateResource)
                      r
                      u
