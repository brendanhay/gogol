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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.update@.
module Network.Google.Resource.Calendar.ACL.Update
    (
    -- * REST Resource
      ACLUpdateResource

    -- * Creating a Request
    , aclUpdate
    , ACLUpdate

    -- * Request Lenses
    , auCalendarId
    , auRuleId
    , auPayload
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.acl.update@ method which the
-- 'ACLUpdate' request conforms to.
type ACLUpdateResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               Capture "ruleId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ACLRule :> Put '[JSON] ACLRule

-- | Updates an access control rule.
--
-- /See:/ 'aclUpdate' smart constructor.
data ACLUpdate = ACLUpdate
    { _auCalendarId :: !Text
    , _auRuleId     :: !Text
    , _auPayload    :: !ACLRule
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auCalendarId'
--
-- * 'auRuleId'
--
-- * 'auPayload'
aclUpdate
    :: Text -- ^ 'auCalendarId'
    -> Text -- ^ 'auRuleId'
    -> ACLRule -- ^ 'auPayload'
    -> ACLUpdate
aclUpdate pAuCalendarId_ pAuRuleId_ pAuPayload_ =
    ACLUpdate
    { _auCalendarId = pAuCalendarId_
    , _auRuleId = pAuRuleId_
    , _auPayload = pAuPayload_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
auCalendarId :: Lens' ACLUpdate Text
auCalendarId
  = lens _auCalendarId (\ s a -> s{_auCalendarId = a})

-- | ACL rule identifier.
auRuleId :: Lens' ACLUpdate Text
auRuleId = lens _auRuleId (\ s a -> s{_auRuleId = a})

-- | Multipart request metadata.
auPayload :: Lens' ACLUpdate ACLRule
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

instance GoogleRequest ACLUpdate where
        type Rs ACLUpdate = ACLRule
        requestClient ACLUpdate{..}
          = go _auCalendarId _auRuleId (Just AltJSON)
              _auPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy ACLUpdateResource)
                      mempty
