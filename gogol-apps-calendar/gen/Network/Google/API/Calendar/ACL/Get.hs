{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.ACL.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.get@.
module Network.Google.API.Calendar.ACL.Get
    (
    -- * REST Resource
      ACLGetAPI

    -- * Creating a Request
    , aCLGet'
    , ACLGet'

    -- * Request Lenses
    , agQuotaUser
    , agCalendarId
    , agPrettyPrint
    , agUserIp
    , agRuleId
    , agKey
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.acl.get which the
-- 'ACLGet'' request conforms to.
type ACLGetAPI =
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
                         QueryParam "alt" Alt :> Get '[JSON] AclRule

-- | Returns an access control rule.
--
-- /See:/ 'aCLGet'' smart constructor.
data ACLGet' = ACLGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agCalendarId  :: !Text
    , _agPrettyPrint :: !Bool
    , _agUserIp      :: !(Maybe Text)
    , _agRuleId      :: !Text
    , _agKey         :: !(Maybe Text)
    , _agOauthToken  :: !(Maybe Text)
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Alt
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
-- * 'agUserIp'
--
-- * 'agRuleId'
--
-- * 'agKey'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
aCLGet'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'ruleId'
    -> ACLGet'
aCLGet' pAgCalendarId_ pAgRuleId_ =
    ACLGet'
    { _agQuotaUser = Nothing
    , _agCalendarId = pAgCalendarId_
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agRuleId = pAgRuleId_
    , _agKey = Nothing
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = JSON
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
agUserIp :: Lens' ACLGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | ACL rule identifier.
agRuleId :: Lens' ACLGet' Text
agRuleId = lens _agRuleId (\ s a -> s{_agRuleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' ACLGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' ACLGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' ACLGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' ACLGet' Alt
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest ACLGet' where
        type Rs ACLGet' = AclRule
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLGet'{..}
          = go _agQuotaUser _agCalendarId (Just _agPrettyPrint)
              _agUserIp
              _agRuleId
              _agKey
              _agOauthToken
              _agFields
              (Just _agAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ACLGetAPI) r u
