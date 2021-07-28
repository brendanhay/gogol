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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.insert@.
module Network.Google.Resource.Calendar.ACL.Insert
    (
    -- * REST Resource
      ACLInsertResource

    -- * Creating a Request
    , aclInsert
    , ACLInsert

    -- * Request Lenses
    , aiCalendarId
    , aiPayload
    , aiSendNotifications
    ) where

import Network.Google.AppsCalendar.Types
import Network.Google.Prelude

-- | A resource alias for @calendar.acl.insert@ method which the
-- 'ACLInsert' request conforms to.
type ACLInsertResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               QueryParam "sendNotifications" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ACLRule :> Post '[JSON] ACLRule

-- | Creates an access control rule.
--
-- /See:/ 'aclInsert' smart constructor.
data ACLInsert =
  ACLInsert'
    { _aiCalendarId :: !Text
    , _aiPayload :: !ACLRule
    , _aiSendNotifications :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ACLInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiCalendarId'
--
-- * 'aiPayload'
--
-- * 'aiSendNotifications'
aclInsert
    :: Text -- ^ 'aiCalendarId'
    -> ACLRule -- ^ 'aiPayload'
    -> ACLInsert
aclInsert pAiCalendarId_ pAiPayload_ =
  ACLInsert'
    { _aiCalendarId = pAiCalendarId_
    , _aiPayload = pAiPayload_
    , _aiSendNotifications = Nothing
    }


-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
aiCalendarId :: Lens' ACLInsert Text
aiCalendarId
  = lens _aiCalendarId (\ s a -> s{_aiCalendarId = a})

-- | Multipart request metadata.
aiPayload :: Lens' ACLInsert ACLRule
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | Whether to send notifications about the calendar sharing change.
-- Optional. The default is True.
aiSendNotifications :: Lens' ACLInsert (Maybe Bool)
aiSendNotifications
  = lens _aiSendNotifications
      (\ s a -> s{_aiSendNotifications = a})

instance GoogleRequest ACLInsert where
        type Rs ACLInsert = ACLRule
        type Scopes ACLInsert =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient ACLInsert'{..}
          = go _aiCalendarId _aiSendNotifications
              (Just AltJSON)
              _aiPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy ACLInsertResource)
                      mempty
