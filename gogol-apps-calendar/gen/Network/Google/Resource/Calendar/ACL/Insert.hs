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
module Network.Google.Resource.Calendar.ACL.Insert
    (
    -- * REST Resource
      ACLInsertResource

    -- * Creating a Request
    , aclInsert'
    , ACLInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiCalendarId
    , aiPrettyPrint
    , aiUserIP
    , aiPayload
    , aiKey
    , aiOAuthToken
    , aiFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLInsert@ which the
-- 'ACLInsert'' request conforms to.
type ACLInsertResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ACLRule :> Post '[JSON] ACLRule

-- | Creates an access control rule.
--
-- /See:/ 'aclInsert'' smart constructor.
data ACLInsert' = ACLInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiCalendarId  :: !Text
    , _aiPrettyPrint :: !Bool
    , _aiUserIP      :: !(Maybe Text)
    , _aiPayload     :: !ACLRule
    , _aiKey         :: !(Maybe Key)
    , _aiOAuthToken  :: !(Maybe OAuthToken)
    , _aiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'aiUserIP'
--
-- * 'aiPayload'
--
-- * 'aiKey'
--
-- * 'aiOAuthToken'
--
-- * 'aiFields'
aclInsert'
    :: Text -- ^ 'calendarId'
    -> ACLRule -- ^ 'payload'
    -> ACLInsert'
aclInsert' pAiCalendarId_ pAiPayload_ =
    ACLInsert'
    { _aiQuotaUser = Nothing
    , _aiCalendarId = pAiCalendarId_
    , _aiPrettyPrint = True
    , _aiUserIP = Nothing
    , _aiPayload = pAiPayload_
    , _aiKey = Nothing
    , _aiOAuthToken = Nothing
    , _aiFields = Nothing
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
aiUserIP :: Lens' ACLInsert' (Maybe Text)
aiUserIP = lens _aiUserIP (\ s a -> s{_aiUserIP = a})

-- | Multipart request metadata.
aiPayload :: Lens' ACLInsert' ACLRule
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' ACLInsert' (Maybe Key)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOAuthToken :: Lens' ACLInsert' (Maybe OAuthToken)
aiOAuthToken
  = lens _aiOAuthToken (\ s a -> s{_aiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' ACLInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

instance GoogleAuth ACLInsert' where
        authKey = aiKey . _Just
        authToken = aiOAuthToken . _Just

instance GoogleRequest ACLInsert' where
        type Rs ACLInsert' = ACLRule
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLInsert'{..}
          = go _aiCalendarId _aiQuotaUser (Just _aiPrettyPrint)
              _aiUserIP
              _aiFields
              _aiKey
              _aiOAuthToken
              (Just AltJSON)
              _aiPayload
          where go
                  = clientWithRoute (Proxy :: Proxy ACLInsertResource)
                      r
                      u
