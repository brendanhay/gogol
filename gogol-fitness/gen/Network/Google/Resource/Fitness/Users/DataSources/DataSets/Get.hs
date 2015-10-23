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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.DataSets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a dataset containing all data points whose start and end times
-- overlap with the specified range of the dataset minimum start time and
-- maximum end time. Specifically, any data point whose start time is less
-- than or equal to the dataset end time and whose end time is greater than
-- or equal to the dataset start time.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.datasets.get@.
module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Get
    (
    -- * REST Resource
      UsersDataSourcesDataSetsGetResource

    -- * Creating a Request
    , usersDataSourcesDataSetsGet
    , UsersDataSourcesDataSetsGet

    -- * Request Lenses
    , udsdsgDataSourceId
    , udsdsgUserId
    , udsdsgDataSetId
    , udsdsgLimit
    , udsdsgPageToken
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.datasets.get@ method which the
-- 'UsersDataSourcesDataSetsGet' request conforms to.
type UsersDataSourcesDataSetsGetResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 "datasets" :>
                   Capture "datasetId" Text :>
                     QueryParam "limit" (JSONText Int32) :>
                       QueryParam "pageToken" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] DataSet

-- | Returns a dataset containing all data points whose start and end times
-- overlap with the specified range of the dataset minimum start time and
-- maximum end time. Specifically, any data point whose start time is less
-- than or equal to the dataset end time and whose end time is greater than
-- or equal to the dataset start time.
--
-- /See:/ 'usersDataSourcesDataSetsGet' smart constructor.
data UsersDataSourcesDataSetsGet = UsersDataSourcesDataSetsGet
    { _udsdsgDataSourceId :: !Text
    , _udsdsgUserId       :: !Text
    , _udsdsgDataSetId    :: !Text
    , _udsdsgLimit        :: !(Maybe (JSONText Int32))
    , _udsdsgPageToken    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDataSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdsgDataSourceId'
--
-- * 'udsdsgUserId'
--
-- * 'udsdsgDataSetId'
--
-- * 'udsdsgLimit'
--
-- * 'udsdsgPageToken'
usersDataSourcesDataSetsGet
    :: Text -- ^ 'udsdsgDataSourceId'
    -> Text -- ^ 'udsdsgUserId'
    -> Text -- ^ 'udsdsgDataSetId'
    -> UsersDataSourcesDataSetsGet
usersDataSourcesDataSetsGet pUdsdsgDataSourceId_ pUdsdsgUserId_ pUdsdsgDataSetId_ =
    UsersDataSourcesDataSetsGet
    { _udsdsgDataSourceId = pUdsdsgDataSourceId_
    , _udsdsgUserId = pUdsdsgUserId_
    , _udsdsgDataSetId = pUdsdsgDataSetId_
    , _udsdsgLimit = Nothing
    , _udsdsgPageToken = Nothing
    }

-- | The data stream ID of the data source that created the dataset.
udsdsgDataSourceId :: Lens' UsersDataSourcesDataSetsGet Text
udsdsgDataSourceId
  = lens _udsdsgDataSourceId
      (\ s a -> s{_udsdsgDataSourceId = a})

-- | Retrieve a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdsgUserId :: Lens' UsersDataSourcesDataSetsGet Text
udsdsgUserId
  = lens _udsdsgUserId (\ s a -> s{_udsdsgUserId = a})

-- | Dataset identifier that is a composite of the minimum data point start
-- time and maximum data point end time represented as nanoseconds from the
-- epoch. The ID is formatted like: \"startTime-endTime\" where startTime
-- and endTime are 64 bit integers.
udsdsgDataSetId :: Lens' UsersDataSourcesDataSetsGet Text
udsdsgDataSetId
  = lens _udsdsgDataSetId
      (\ s a -> s{_udsdsgDataSetId = a})

-- | If specified, no more than this many data points will be included in the
-- dataset. If the there are more data points in the dataset, nextPageToken
-- will be set in the dataset response.
udsdsgLimit :: Lens' UsersDataSourcesDataSetsGet (Maybe Int32)
udsdsgLimit
  = lens _udsdsgLimit (\ s a -> s{_udsdsgLimit = a}) .
      mapping _Coerce

-- | The continuation token, which is used to page through large datasets. To
-- get the next page of a dataset, set this parameter to the value of
-- nextPageToken from the previous response. Each subsequent call will
-- yield a partial dataset with data point end timestamps that are strictly
-- smaller than those in the previous partial response.
udsdsgPageToken :: Lens' UsersDataSourcesDataSetsGet (Maybe Text)
udsdsgPageToken
  = lens _udsdsgPageToken
      (\ s a -> s{_udsdsgPageToken = a})

instance GoogleRequest UsersDataSourcesDataSetsGet
         where
        type Rs UsersDataSourcesDataSetsGet = DataSet
        requestClient UsersDataSourcesDataSetsGet{..}
          = go _udsdsgUserId _udsdsgDataSourceId
              _udsdsgDataSetId
              _udsdsgLimit
              _udsdsgPageToken
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesDataSetsGetResource)
                      mempty
