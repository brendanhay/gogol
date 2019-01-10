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
    , rclOrderBy
    , rclCustomer
    , rclQuery
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
                   QueryParam "orderBy" Text :>
                     QueryParam "query" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] CalendarResources

-- | Retrieves a list of calendar resources for an account.
--
-- /See:/ 'resourcesCalendarsList' smart constructor.
data ResourcesCalendarsList = ResourcesCalendarsList'
    { _rclOrderBy    :: !(Maybe Text)
    , _rclCustomer   :: !Text
    , _rclQuery      :: !(Maybe Text)
    , _rclPageToken  :: !(Maybe Text)
    , _rclMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesCalendarsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rclOrderBy'
--
-- * 'rclCustomer'
--
-- * 'rclQuery'
--
-- * 'rclPageToken'
--
-- * 'rclMaxResults'
resourcesCalendarsList
    :: Text -- ^ 'rclCustomer'
    -> ResourcesCalendarsList
resourcesCalendarsList pRclCustomer_ =
    ResourcesCalendarsList'
    { _rclOrderBy = Nothing
    , _rclCustomer = pRclCustomer_
    , _rclQuery = Nothing
    , _rclPageToken = Nothing
    , _rclMaxResults = Nothing
    }

-- | Field(s) to sort results by in either ascending or descending order.
-- Supported fields include resourceId, resourceName, capacity, buildingId,
-- and floorName. If no order is specified, defaults to ascending. Should
-- be of the form \"field [asc|desc], field [asc|desc], ...\". For example
-- buildingId, capacity desc would return results sorted first by
-- buildingId in ascending order then by capacity in descending order.
rclOrderBy :: Lens' ResourcesCalendarsList (Maybe Text)
rclOrderBy
  = lens _rclOrderBy (\ s a -> s{_rclOrderBy = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rclCustomer :: Lens' ResourcesCalendarsList Text
rclCustomer
  = lens _rclCustomer (\ s a -> s{_rclCustomer = a})

-- | String query used to filter results. Should be of the form \"field
-- operator value\" where field can be any of supported fields and
-- operators can be any of supported operations. Operators include \'=\'
-- for exact match and \':\' for prefix match or HAS match where
-- applicable. For prefix match, the value should always be followed by a
-- *. Supported fields include generatedResourceName, name, buildingId,
-- featureInstances.feature.name. For example buildingId=US-NYC-9TH AND
-- featureInstances.feature.name:Phone.
rclQuery :: Lens' ResourcesCalendarsList (Maybe Text)
rclQuery = lens _rclQuery (\ s a -> s{_rclQuery = a})

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
          = go _rclCustomer _rclOrderBy _rclQuery _rclPageToken
              _rclMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsListResource)
                      mempty
