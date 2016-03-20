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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.calendars.update@.
module Network.Google.Resource.Directory.Resources.Calendars.Update
    (
    -- * REST Resource
      ResourcesCalendarsUpdateResource

    -- * Creating a Request
    , resourcesCalendarsUpdate
    , ResourcesCalendarsUpdate

    -- * Request Lenses
    , rcuPayload
    , rcuCustomer
    , rcuCalendarResourceId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.update@ method which the
-- 'ResourcesCalendarsUpdate' request conforms to.
type ResourcesCalendarsUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "calendars" :>
                   Capture "calendarResourceId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CalendarResource :>
                         Put '[JSON] CalendarResource

-- | Updates a calendar resource.
--
-- /See:/ 'resourcesCalendarsUpdate' smart constructor.
data ResourcesCalendarsUpdate = ResourcesCalendarsUpdate
    { _rcuPayload            :: !CalendarResource
    , _rcuCustomer           :: !Text
    , _rcuCalendarResourceId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesCalendarsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcuPayload'
--
-- * 'rcuCustomer'
--
-- * 'rcuCalendarResourceId'
resourcesCalendarsUpdate
    :: CalendarResource -- ^ 'rcuPayload'
    -> Text -- ^ 'rcuCustomer'
    -> Text -- ^ 'rcuCalendarResourceId'
    -> ResourcesCalendarsUpdate
resourcesCalendarsUpdate pRcuPayload_ pRcuCustomer_ pRcuCalendarResourceId_ =
    ResourcesCalendarsUpdate
    { _rcuPayload = pRcuPayload_
    , _rcuCustomer = pRcuCustomer_
    , _rcuCalendarResourceId = pRcuCalendarResourceId_
    }

-- | Multipart request metadata.
rcuPayload :: Lens' ResourcesCalendarsUpdate CalendarResource
rcuPayload
  = lens _rcuPayload (\ s a -> s{_rcuPayload = a})

-- | The unique ID for the customer\'s Google account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rcuCustomer :: Lens' ResourcesCalendarsUpdate Text
rcuCustomer
  = lens _rcuCustomer (\ s a -> s{_rcuCustomer = a})

-- | The unique ID of the calendar resource to update.
rcuCalendarResourceId :: Lens' ResourcesCalendarsUpdate Text
rcuCalendarResourceId
  = lens _rcuCalendarResourceId
      (\ s a -> s{_rcuCalendarResourceId = a})

instance GoogleRequest ResourcesCalendarsUpdate where
        type Rs ResourcesCalendarsUpdate = CalendarResource
        type Scopes ResourcesCalendarsUpdate =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesCalendarsUpdate{..}
          = go _rcuCustomer _rcuCalendarResourceId
              (Just AltJSON)
              _rcuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsUpdateResource)
                      mempty
