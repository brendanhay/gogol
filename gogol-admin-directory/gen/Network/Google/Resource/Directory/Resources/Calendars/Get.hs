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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.calendars.get@.
module Network.Google.Resource.Directory.Resources.Calendars.Get
    (
    -- * REST Resource
      ResourcesCalendarsGetResource

    -- * Creating a Request
    , resourcesCalendarsGet
    , ResourcesCalendarsGet

    -- * Request Lenses
    , rcgCustomer
    , rcgCalendarResourceId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.get@ method which the
-- 'ResourcesCalendarsGet' request conforms to.
type ResourcesCalendarsGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "calendars" :>
                   Capture "calendarResourceId" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] CalendarResource

-- | Retrieves a calendar resource.
--
-- /See:/ 'resourcesCalendarsGet' smart constructor.
data ResourcesCalendarsGet =
  ResourcesCalendarsGet'
    { _rcgCustomer           :: !Text
    , _rcgCalendarResourceId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourcesCalendarsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcgCustomer'
--
-- * 'rcgCalendarResourceId'
resourcesCalendarsGet
    :: Text -- ^ 'rcgCustomer'
    -> Text -- ^ 'rcgCalendarResourceId'
    -> ResourcesCalendarsGet
resourcesCalendarsGet pRcgCustomer_ pRcgCalendarResourceId_ =
  ResourcesCalendarsGet'
    { _rcgCustomer = pRcgCustomer_
    , _rcgCalendarResourceId = pRcgCalendarResourceId_
    }

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rcgCustomer :: Lens' ResourcesCalendarsGet Text
rcgCustomer
  = lens _rcgCustomer (\ s a -> s{_rcgCustomer = a})

-- | The unique ID of the calendar resource to retrieve.
rcgCalendarResourceId :: Lens' ResourcesCalendarsGet Text
rcgCalendarResourceId
  = lens _rcgCalendarResourceId
      (\ s a -> s{_rcgCalendarResourceId = a})

instance GoogleRequest ResourcesCalendarsGet where
        type Rs ResourcesCalendarsGet = CalendarResource
        type Scopes ResourcesCalendarsGet =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesCalendarsGet'{..}
          = go _rcgCustomer _rcgCalendarResourceId
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsGetResource)
                      mempty
