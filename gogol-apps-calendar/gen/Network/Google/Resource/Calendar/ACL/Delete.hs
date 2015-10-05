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
-- Module      : Network.Google.Resource.Calendar.ACL.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLDelete@.
module Network.Google.Resource.Calendar.ACL.Delete
    (
    -- * REST Resource
      ACLDeleteResource

    -- * Creating a Request
    , aclDelete'
    , ACLDelete'

    -- * Request Lenses
    , adQuotaUser
    , adCalendarId
    , adPrettyPrint
    , adUserIP
    , adRuleId
    , adKey
    , adOAuthToken
    , adFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLDelete@ which the
-- 'ACLDelete'' request conforms to.
type ACLDeleteResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           Capture "ruleId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an access control rule.
--
-- /See:/ 'aclDelete'' smart constructor.
data ACLDelete' = ACLDelete'
    { _adQuotaUser   :: !(Maybe Text)
    , _adCalendarId  :: !Text
    , _adPrettyPrint :: !Bool
    , _adUserIP      :: !(Maybe Text)
    , _adRuleId      :: !Text
    , _adKey         :: !(Maybe Key)
    , _adOAuthToken  :: !(Maybe OAuthToken)
    , _adFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adCalendarId'
--
-- * 'adPrettyPrint'
--
-- * 'adUserIP'
--
-- * 'adRuleId'
--
-- * 'adKey'
--
-- * 'adOAuthToken'
--
-- * 'adFields'
aclDelete'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'ruleId'
    -> ACLDelete'
aclDelete' pAdCalendarId_ pAdRuleId_ =
    ACLDelete'
    { _adQuotaUser = Nothing
    , _adCalendarId = pAdCalendarId_
    , _adPrettyPrint = True
    , _adUserIP = Nothing
    , _adRuleId = pAdRuleId_
    , _adKey = Nothing
    , _adOAuthToken = Nothing
    , _adFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adQuotaUser :: Lens' ACLDelete' (Maybe Text)
adQuotaUser
  = lens _adQuotaUser (\ s a -> s{_adQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
adCalendarId :: Lens' ACLDelete' Text
adCalendarId
  = lens _adCalendarId (\ s a -> s{_adCalendarId = a})

-- | Returns response with indentations and line breaks.
adPrettyPrint :: Lens' ACLDelete' Bool
adPrettyPrint
  = lens _adPrettyPrint
      (\ s a -> s{_adPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adUserIP :: Lens' ACLDelete' (Maybe Text)
adUserIP = lens _adUserIP (\ s a -> s{_adUserIP = a})

-- | ACL rule identifier.
adRuleId :: Lens' ACLDelete' Text
adRuleId = lens _adRuleId (\ s a -> s{_adRuleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' ACLDelete' (Maybe Key)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | OAuth 2.0 token for the current user.
adOAuthToken :: Lens' ACLDelete' (Maybe OAuthToken)
adOAuthToken
  = lens _adOAuthToken (\ s a -> s{_adOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' ACLDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

instance GoogleAuth ACLDelete' where
        authKey = adKey . _Just
        authToken = adOAuthToken . _Just

instance GoogleRequest ACLDelete' where
        type Rs ACLDelete' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLDelete'{..}
          = go _adCalendarId _adRuleId _adQuotaUser
              (Just _adPrettyPrint)
              _adUserIP
              _adFields
              _adKey
              _adOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ACLDeleteResource)
                      r
                      u
