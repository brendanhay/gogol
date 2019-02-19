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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a calendar resource. This method supports patch semantics,
-- meaning you only need to include the fields you wish to update. Fields
-- that are not present in the request will be preserved. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.calendars.patch@.
module Network.Google.Resource.Directory.Resources.Calendars.Patch
    (
    -- * REST Resource
      ResourcesCalendarsPatchResource

    -- * Creating a Request
    , resourcesCalendarsPatch
    , ResourcesCalendarsPatch

    -- * Request Lenses
    , rcpPayload
    , rcpCustomer
    , rcpCalendarResourceId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.patch@ method which the
-- 'ResourcesCalendarsPatch' request conforms to.
type ResourcesCalendarsPatchResource =
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
                         Patch '[JSON] CalendarResource

-- | Updates a calendar resource. This method supports patch semantics,
-- meaning you only need to include the fields you wish to update. Fields
-- that are not present in the request will be preserved. This method
-- supports patch semantics.
--
-- /See:/ 'resourcesCalendarsPatch' smart constructor.
data ResourcesCalendarsPatch =
  ResourcesCalendarsPatch'
    { _rcpPayload            :: !CalendarResource
    , _rcpCustomer           :: !Text
    , _rcpCalendarResourceId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourcesCalendarsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpPayload'
--
-- * 'rcpCustomer'
--
-- * 'rcpCalendarResourceId'
resourcesCalendarsPatch
    :: CalendarResource -- ^ 'rcpPayload'
    -> Text -- ^ 'rcpCustomer'
    -> Text -- ^ 'rcpCalendarResourceId'
    -> ResourcesCalendarsPatch
resourcesCalendarsPatch pRcpPayload_ pRcpCustomer_ pRcpCalendarResourceId_ =
  ResourcesCalendarsPatch'
    { _rcpPayload = pRcpPayload_
    , _rcpCustomer = pRcpCustomer_
    , _rcpCalendarResourceId = pRcpCalendarResourceId_
    }

-- | Multipart request metadata.
rcpPayload :: Lens' ResourcesCalendarsPatch CalendarResource
rcpPayload
  = lens _rcpPayload (\ s a -> s{_rcpPayload = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rcpCustomer :: Lens' ResourcesCalendarsPatch Text
rcpCustomer
  = lens _rcpCustomer (\ s a -> s{_rcpCustomer = a})

-- | The unique ID of the calendar resource to update.
rcpCalendarResourceId :: Lens' ResourcesCalendarsPatch Text
rcpCalendarResourceId
  = lens _rcpCalendarResourceId
      (\ s a -> s{_rcpCalendarResourceId = a})

instance GoogleRequest ResourcesCalendarsPatch where
        type Rs ResourcesCalendarsPatch = CalendarResource
        type Scopes ResourcesCalendarsPatch =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesCalendarsPatch'{..}
          = go _rcpCustomer _rcpCalendarResourceId
              (Just AltJSON)
              _rcpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsPatchResource)
                      mempty
