{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.ACL.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.delete@.
module Network.Google.API.Calendar.ACL.Delete
    (
    -- * REST Resource
      ACLDeleteAPI

    -- * Creating a Request
    , aCLDelete'
    , ACLDelete'

    -- * Request Lenses
    , adQuotaUser
    , adCalendarId
    , adPrettyPrint
    , adUserIp
    , adRuleId
    , adKey
    , adOauthToken
    , adFields
    , adAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.acl.delete which the
-- 'ACLDelete'' request conforms to.
type ACLDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an access control rule.
--
-- /See:/ 'aCLDelete'' smart constructor.
data ACLDelete' = ACLDelete'
    { _adQuotaUser   :: !(Maybe Text)
    , _adCalendarId  :: !Text
    , _adPrettyPrint :: !Bool
    , _adUserIp      :: !(Maybe Text)
    , _adRuleId      :: !Text
    , _adKey         :: !(Maybe Text)
    , _adOauthToken  :: !(Maybe Text)
    , _adFields      :: !(Maybe Text)
    , _adAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'adUserIp'
--
-- * 'adRuleId'
--
-- * 'adKey'
--
-- * 'adOauthToken'
--
-- * 'adFields'
--
-- * 'adAlt'
aCLDelete'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'ruleId'
    -> ACLDelete'
aCLDelete' pAdCalendarId_ pAdRuleId_ =
    ACLDelete'
    { _adQuotaUser = Nothing
    , _adCalendarId = pAdCalendarId_
    , _adPrettyPrint = True
    , _adUserIp = Nothing
    , _adRuleId = pAdRuleId_
    , _adKey = Nothing
    , _adOauthToken = Nothing
    , _adFields = Nothing
    , _adAlt = JSON
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
adUserIp :: Lens' ACLDelete' (Maybe Text)
adUserIp = lens _adUserIp (\ s a -> s{_adUserIp = a})

-- | ACL rule identifier.
adRuleId :: Lens' ACLDelete' Text
adRuleId = lens _adRuleId (\ s a -> s{_adRuleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' ACLDelete' (Maybe Text)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | OAuth 2.0 token for the current user.
adOauthToken :: Lens' ACLDelete' (Maybe Text)
adOauthToken
  = lens _adOauthToken (\ s a -> s{_adOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' ACLDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

-- | Data format for the response.
adAlt :: Lens' ACLDelete' Alt
adAlt = lens _adAlt (\ s a -> s{_adAlt = a})

instance GoogleRequest ACLDelete' where
        type Rs ACLDelete' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLDelete'{..}
          = go _adQuotaUser _adCalendarId (Just _adPrettyPrint)
              _adUserIp
              _adRuleId
              _adKey
              _adOauthToken
              _adFields
              (Just _adAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ACLDeleteAPI) r u
