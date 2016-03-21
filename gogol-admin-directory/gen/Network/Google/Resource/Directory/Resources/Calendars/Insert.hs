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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.calendars.insert@.
module Network.Google.Resource.Directory.Resources.Calendars.Insert
    (
    -- * REST Resource
      ResourcesCalendarsInsertResource

    -- * Creating a Request
    , resourcesCalendarsInsert
    , ResourcesCalendarsInsert

    -- * Request Lenses
    , rciPayload
    , rciCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.insert@ method which the
-- 'ResourcesCalendarsInsert' request conforms to.
type ResourcesCalendarsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "calendars" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CalendarResource :>
                       Post '[JSON] CalendarResource

-- | Inserts a calendar resource.
--
-- /See:/ 'resourcesCalendarsInsert' smart constructor.
data ResourcesCalendarsInsert = ResourcesCalendarsInsert'
    { _rciPayload  :: !CalendarResource
    , _rciCustomer :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesCalendarsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rciPayload'
--
-- * 'rciCustomer'
resourcesCalendarsInsert
    :: CalendarResource -- ^ 'rciPayload'
    -> Text -- ^ 'rciCustomer'
    -> ResourcesCalendarsInsert
resourcesCalendarsInsert pRciPayload_ pRciCustomer_ =
    ResourcesCalendarsInsert'
    { _rciPayload = pRciPayload_
    , _rciCustomer = pRciCustomer_
    }

-- | Multipart request metadata.
rciPayload :: Lens' ResourcesCalendarsInsert CalendarResource
rciPayload
  = lens _rciPayload (\ s a -> s{_rciPayload = a})

-- | The unique ID for the customer\'s Google account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rciCustomer :: Lens' ResourcesCalendarsInsert Text
rciCustomer
  = lens _rciCustomer (\ s a -> s{_rciCustomer = a})

instance GoogleRequest ResourcesCalendarsInsert where
        type Rs ResourcesCalendarsInsert = CalendarResource
        type Scopes ResourcesCalendarsInsert =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesCalendarsInsert'{..}
          = go _rciCustomer (Just AltJSON) _rciPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsInsertResource)
                      mempty
