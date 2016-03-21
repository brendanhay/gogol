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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of calendar resources for an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.calendars.list@.
module Network.Google.Resource.Directory.Resources.Calendars.List
    (
    -- * REST Resource
      ResourcesCalendarsListResource

    -- * Creating a Request
    , resourcesCalendarsList
    , ResourcesCalendarsList

    -- * Request Lenses
    , rclCustomer
    , rclPageToken
    , rclMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.list@ method which the
-- 'ResourcesCalendarsList' request conforms to.
type ResourcesCalendarsListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "calendars" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CalendarResources

-- | Retrieves a list of calendar resources for an account.
--
-- /See:/ 'resourcesCalendarsList' smart constructor.
data ResourcesCalendarsList = ResourcesCalendarsList'
    { _rclCustomer   :: !Text
    , _rclPageToken  :: !(Maybe Text)
    , _rclMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesCalendarsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rclCustomer'
--
-- * 'rclPageToken'
--
-- * 'rclMaxResults'
resourcesCalendarsList
    :: Text -- ^ 'rclCustomer'
    -> ResourcesCalendarsList
resourcesCalendarsList pRclCustomer_ =
    ResourcesCalendarsList'
    { _rclCustomer = pRclCustomer_
    , _rclPageToken = Nothing
    , _rclMaxResults = Nothing
    }

-- | The unique ID for the customer\'s Google account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rclCustomer :: Lens' ResourcesCalendarsList Text
rclCustomer
  = lens _rclCustomer (\ s a -> s{_rclCustomer = a})

-- | Token to specify the next page in the list.
rclPageToken :: Lens' ResourcesCalendarsList (Maybe Text)
rclPageToken
  = lens _rclPageToken (\ s a -> s{_rclPageToken = a})

-- | Maximum number of results to return.
rclMaxResults :: Lens' ResourcesCalendarsList (Maybe Int32)
rclMaxResults
  = lens _rclMaxResults
      (\ s a -> s{_rclMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ResourcesCalendarsList where
        type Rs ResourcesCalendarsList = CalendarResources
        type Scopes ResourcesCalendarsList =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesCalendarsList'{..}
          = go _rclCustomer _rclPageToken _rclMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsListResource)
                      mempty
