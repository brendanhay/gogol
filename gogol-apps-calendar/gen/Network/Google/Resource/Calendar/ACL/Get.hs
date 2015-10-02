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
-- Module      : Network.Google.Resource.Calendar.ACL.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLGet@.
module Network.Google.Resource.Calendar.ACL.Get
    (
    -- * REST Resource
      ACLGetResource

    -- * Creating a Request
    , aCLGet'
    , ACLGet'

    -- * Request Lenses
    , agQuotaUser
    , agCalendarId
    , agPrettyPrint
    , agUserIP
    , agRuleId
    , agKey
    , agOAuthToken
    , agFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLGet@ which the
-- 'ACLGet'' request conforms to.
type ACLGetResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           Capture "ruleId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ACLRule

-- | Returns an access control rule.
--
-- /See:/ 'aCLGet'' smart constructor.
data ACLGet' = ACLGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agCalendarId  :: !Text
    , _agPrettyPrint :: !Bool
    , _agUserIP      :: !(Maybe Text)
    , _agRuleId      :: !Text
    , _agKey         :: !(Maybe Key)
    , _agOAuthToken  :: !(Maybe OAuthToken)
    , _agFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agCalendarId'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIP'
--
-- * 'agRuleId'
--
-- * 'agKey'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
aCLGet'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'ruleId'
    -> ACLGet'
aCLGet' pAgCalendarId_ pAgRuleId_ =
    ACLGet'
    { _agQuotaUser = Nothing
    , _agCalendarId = pAgCalendarId_
    , _agPrettyPrint = True
    , _agUserIP = Nothing
    , _agRuleId = pAgRuleId_
    , _agKey = Nothing
    , _agOAuthToken = Nothing
    , _agFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' ACLGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
agCalendarId :: Lens' ACLGet' Text
agCalendarId
  = lens _agCalendarId (\ s a -> s{_agCalendarId = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' ACLGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIP :: Lens' ACLGet' (Maybe Text)
agUserIP = lens _agUserIP (\ s a -> s{_agUserIP = a})

-- | ACL rule identifier.
agRuleId :: Lens' ACLGet' Text
agRuleId = lens _agRuleId (\ s a -> s{_agRuleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' ACLGet' (Maybe Key)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' ACLGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' ACLGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

instance GoogleAuth ACLGet' where
        authKey = agKey . _Just
        authToken = agOAuthToken . _Just

instance GoogleRequest ACLGet' where
        type Rs ACLGet' = ACLRule
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLGet'{..}
          = go _agQuotaUser _agCalendarId (Just _agPrettyPrint)
              _agUserIP
              _agRuleId
              _agKey
              _agOAuthToken
              _agFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ACLGetResource) r u
