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
-- Module      : Network.Google.Resource.Calendar.ACL.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.get@.
module Network.Google.Resource.Calendar.ACL.Get
    (
    -- * REST Resource
      ACLGetResource

    -- * Creating a Request
    , aclGet'
    , ACLGet'

    -- * Request Lenses
    , agCalendarId
    , agRuleId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.acl.get@ method which the
-- 'ACLGet'' request conforms to.
type ACLGetResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           Capture "ruleId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] ACLRule

-- | Returns an access control rule.
--
-- /See:/ 'aclGet'' smart constructor.
data ACLGet' = ACLGet'
    { _agCalendarId :: !Text
    , _agRuleId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agCalendarId'
--
-- * 'agRuleId'
aclGet'
    :: Text -- ^ 'agCalendarId'
    -> Text -- ^ 'agRuleId'
    -> ACLGet'
aclGet' pAgCalendarId_ pAgRuleId_ =
    ACLGet'
    { _agCalendarId = pAgCalendarId_
    , _agRuleId = pAgRuleId_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
agCalendarId :: Lens' ACLGet' Text
agCalendarId
  = lens _agCalendarId (\ s a -> s{_agCalendarId = a})

-- | ACL rule identifier.
agRuleId :: Lens' ACLGet' Text
agRuleId = lens _agRuleId (\ s a -> s{_agRuleId = a})

instance GoogleRequest ACLGet' where
        type Rs ACLGet' = ACLRule
        requestClient ACLGet'{..}
          = go _agCalendarId _agRuleId (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy ACLGetResource) mempty
