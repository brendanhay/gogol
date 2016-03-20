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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.calendars.delete@.
module Network.Google.Resource.Directory.Resources.Calendars.Delete
    (
    -- * REST Resource
      ResourcesCalendarsDeleteResource

    -- * Creating a Request
    , resourcesCalendarsDelete
    , ResourcesCalendarsDelete

    -- * Request Lenses
    , rcdCustomer
    , rcdCalendarResourceId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.delete@ method which the
-- 'ResourcesCalendarsDelete' request conforms to.
type ResourcesCalendarsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "calendars" :>
                   Capture "calendarResourceId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a calendar resource.
--
-- /See:/ 'resourcesCalendarsDelete' smart constructor.
data ResourcesCalendarsDelete = ResourcesCalendarsDelete
    { _rcdCustomer           :: !Text
    , _rcdCalendarResourceId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesCalendarsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcdCustomer'
--
-- * 'rcdCalendarResourceId'
resourcesCalendarsDelete
    :: Text -- ^ 'rcdCustomer'
    -> Text -- ^ 'rcdCalendarResourceId'
    -> ResourcesCalendarsDelete
resourcesCalendarsDelete pRcdCustomer_ pRcdCalendarResourceId_ =
    ResourcesCalendarsDelete
    { _rcdCustomer = pRcdCustomer_
    , _rcdCalendarResourceId = pRcdCalendarResourceId_
    }

-- | The unique ID for the customer\'s Google account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rcdCustomer :: Lens' ResourcesCalendarsDelete Text
rcdCustomer
  = lens _rcdCustomer (\ s a -> s{_rcdCustomer = a})

-- | The unique ID of the calendar resource to delete.
rcdCalendarResourceId :: Lens' ResourcesCalendarsDelete Text
rcdCalendarResourceId
  = lens _rcdCalendarResourceId
      (\ s a -> s{_rcdCalendarResourceId = a})

instance GoogleRequest ResourcesCalendarsDelete where
        type Rs ResourcesCalendarsDelete = ()
        type Scopes ResourcesCalendarsDelete =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesCalendarsDelete{..}
          = go _rcdCustomer _rcdCalendarResourceId
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsDeleteResource)
                      mempty
