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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.DataPointChanges.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries for user\'s data point changes for a particular data source.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.dataPointChanges.list@.
module Network.Google.Resource.Fitness.Users.DataSources.DataPointChanges.List
    (
    -- * REST Resource
      UsersDataSourcesDataPointChangesListResource

    -- * Creating a Request
    , usersDataSourcesDataPointChangesList
    , UsersDataSourcesDataPointChangesList

    -- * Request Lenses
    , udsdpclDataSourceId
    , udsdpclUserId
    , udsdpclLimit
    , udsdpclPageToken
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.dataPointChanges.list@ method which the
-- 'UsersDataSourcesDataPointChangesList' request conforms to.
type UsersDataSourcesDataPointChangesListResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 "dataPointChanges" :>
                   QueryParam "limit" (Textual Int32) :>
                     QueryParam "pageToken" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListDataPointChangesResponse

-- | Queries for user\'s data point changes for a particular data source.
--
-- /See:/ 'usersDataSourcesDataPointChangesList' smart constructor.
data UsersDataSourcesDataPointChangesList =
  UsersDataSourcesDataPointChangesList'
    { _udsdpclDataSourceId :: !Text
    , _udsdpclUserId       :: !Text
    , _udsdpclLimit        :: !(Maybe (Textual Int32))
    , _udsdpclPageToken    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSourcesDataPointChangesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdpclDataSourceId'
--
-- * 'udsdpclUserId'
--
-- * 'udsdpclLimit'
--
-- * 'udsdpclPageToken'
usersDataSourcesDataPointChangesList
    :: Text -- ^ 'udsdpclDataSourceId'
    -> Text -- ^ 'udsdpclUserId'
    -> UsersDataSourcesDataPointChangesList
usersDataSourcesDataPointChangesList pUdsdpclDataSourceId_ pUdsdpclUserId_ =
  UsersDataSourcesDataPointChangesList'
    { _udsdpclDataSourceId = pUdsdpclDataSourceId_
    , _udsdpclUserId = pUdsdpclUserId_
    , _udsdpclLimit = Nothing
    , _udsdpclPageToken = Nothing
    }


-- | The data stream ID of the data source that created the dataset.
udsdpclDataSourceId :: Lens' UsersDataSourcesDataPointChangesList Text
udsdpclDataSourceId
  = lens _udsdpclDataSourceId
      (\ s a -> s{_udsdpclDataSourceId = a})

-- | List data points for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdpclUserId :: Lens' UsersDataSourcesDataPointChangesList Text
udsdpclUserId
  = lens _udsdpclUserId
      (\ s a -> s{_udsdpclUserId = a})

-- | If specified, no more than this many data point changes will be included
-- in the response.
udsdpclLimit :: Lens' UsersDataSourcesDataPointChangesList (Maybe Int32)
udsdpclLimit
  = lens _udsdpclLimit (\ s a -> s{_udsdpclLimit = a})
      . mapping _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
udsdpclPageToken :: Lens' UsersDataSourcesDataPointChangesList (Maybe Text)
udsdpclPageToken
  = lens _udsdpclPageToken
      (\ s a -> s{_udsdpclPageToken = a})

instance GoogleRequest
           UsersDataSourcesDataPointChangesList
         where
        type Rs UsersDataSourcesDataPointChangesList =
             ListDataPointChangesResponse
        type Scopes UsersDataSourcesDataPointChangesList =
             '["https://www.googleapis.com/auth/fitness.activity.read",
               "https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.blood_glucose.read",
               "https://www.googleapis.com/auth/fitness.blood_glucose.write",
               "https://www.googleapis.com/auth/fitness.blood_pressure.read",
               "https://www.googleapis.com/auth/fitness.blood_pressure.write",
               "https://www.googleapis.com/auth/fitness.body.read",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.body_temperature.read",
               "https://www.googleapis.com/auth/fitness.body_temperature.write",
               "https://www.googleapis.com/auth/fitness.location.read",
               "https://www.googleapis.com/auth/fitness.location.write",
               "https://www.googleapis.com/auth/fitness.nutrition.read",
               "https://www.googleapis.com/auth/fitness.nutrition.write",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
               "https://www.googleapis.com/auth/fitness.reproductive_health.read",
               "https://www.googleapis.com/auth/fitness.reproductive_health.write"]
        requestClient
          UsersDataSourcesDataPointChangesList'{..}
          = go _udsdpclUserId _udsdpclDataSourceId
              _udsdpclLimit
              _udsdpclPageToken
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersDataSourcesDataPointChangesListResource)
                      mempty
