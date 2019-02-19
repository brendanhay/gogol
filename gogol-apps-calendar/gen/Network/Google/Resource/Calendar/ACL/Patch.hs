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
-- Module      : Network.Google.Resource.Calendar.ACL.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an access control rule. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.patch@.
module Network.Google.Resource.Calendar.ACL.Patch
    (
    -- * REST Resource
      ACLPatchResource

    -- * Creating a Request
    , aclPatch
    , ACLPatch

    -- * Request Lenses
    , apCalendarId
    , apRuleId
    , apPayload
    , apSendNotifications
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.acl.patch@ method which the
-- 'ACLPatch' request conforms to.
type ACLPatchResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               Capture "ruleId" Text :>
                 QueryParam "sendNotifications" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ACLRule :> Patch '[JSON] ACLRule

-- | Updates an access control rule. This method supports patch semantics.
--
-- /See:/ 'aclPatch' smart constructor.
data ACLPatch =
  ACLPatch'
    { _apCalendarId        :: !Text
    , _apRuleId            :: !Text
    , _apPayload           :: !ACLRule
    , _apSendNotifications :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ACLPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apCalendarId'
--
-- * 'apRuleId'
--
-- * 'apPayload'
--
-- * 'apSendNotifications'
aclPatch
    :: Text -- ^ 'apCalendarId'
    -> Text -- ^ 'apRuleId'
    -> ACLRule -- ^ 'apPayload'
    -> ACLPatch
aclPatch pApCalendarId_ pApRuleId_ pApPayload_ =
  ACLPatch'
    { _apCalendarId = pApCalendarId_
    , _apRuleId = pApRuleId_
    , _apPayload = pApPayload_
    , _apSendNotifications = Nothing
    }


-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
apCalendarId :: Lens' ACLPatch Text
apCalendarId
  = lens _apCalendarId (\ s a -> s{_apCalendarId = a})

-- | ACL rule identifier.
apRuleId :: Lens' ACLPatch Text
apRuleId = lens _apRuleId (\ s a -> s{_apRuleId = a})

-- | Multipart request metadata.
apPayload :: Lens' ACLPatch ACLRule
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | Whether to send notifications about the calendar sharing change. Note
-- that there are no notifications on access removal. Optional. The default
-- is True.
apSendNotifications :: Lens' ACLPatch (Maybe Bool)
apSendNotifications
  = lens _apSendNotifications
      (\ s a -> s{_apSendNotifications = a})

instance GoogleRequest ACLPatch where
        type Rs ACLPatch = ACLRule
        type Scopes ACLPatch =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient ACLPatch'{..}
          = go _apCalendarId _apRuleId _apSendNotifications
              (Just AltJSON)
              _apPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy ACLPatchResource)
                      mempty
