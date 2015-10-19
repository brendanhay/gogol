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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Datasets.Get
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
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesDatasetsGet@.
module Network.Google.Resource.Fitness.Users.DataSources.Datasets.Get
    (
    -- * REST Resource
      UsersDataSourcesDatasetsGetResource

    -- * Creating a Request
    , usersDataSourcesDatasetsGet'
    , UsersDataSourcesDatasetsGet'

    -- * Request Lenses
    , udsdgDataSourceId
    , udsdgUserId
    , udsdgDatasetId
    , udsdgLimit
    , udsdgPageToken
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesDatasetsGet@ method which the
-- 'UsersDataSourcesDatasetsGet'' request conforms to.
type UsersDataSourcesDatasetsGetResource =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           "datasets" :>
             Capture "datasetId" Text :>
               QueryParam "limit" Int32 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Dataset

-- | Returns a dataset containing all data points whose start and end times
-- overlap with the specified range of the dataset minimum start time and
-- maximum end time. Specifically, any data point whose start time is less
-- than or equal to the dataset end time and whose end time is greater than
-- or equal to the dataset start time.
--
-- /See:/ 'usersDataSourcesDatasetsGet'' smart constructor.
data UsersDataSourcesDatasetsGet' = UsersDataSourcesDatasetsGet'
    { _udsdgDataSourceId :: !Text
    , _udsdgUserId       :: !Text
    , _udsdgDatasetId    :: !Text
    , _udsdgLimit        :: !(Maybe Int32)
    , _udsdgPageToken    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDatasetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdgDataSourceId'
--
-- * 'udsdgUserId'
--
-- * 'udsdgDatasetId'
--
-- * 'udsdgLimit'
--
-- * 'udsdgPageToken'
usersDataSourcesDatasetsGet'
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'datasetId'
    -> UsersDataSourcesDatasetsGet'
usersDataSourcesDatasetsGet' pUdsdgDataSourceId_ pUdsdgUserId_ pUdsdgDatasetId_ =
    UsersDataSourcesDatasetsGet'
    { _udsdgDataSourceId = pUdsdgDataSourceId_
    , _udsdgUserId = pUdsdgUserId_
    , _udsdgDatasetId = pUdsdgDatasetId_
    , _udsdgLimit = Nothing
    , _udsdgPageToken = Nothing
    }

-- | The data stream ID of the data source that created the dataset.
udsdgDataSourceId :: Lens' UsersDataSourcesDatasetsGet' Text
udsdgDataSourceId
  = lens _udsdgDataSourceId
      (\ s a -> s{_udsdgDataSourceId = a})

-- | Retrieve a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdgUserId :: Lens' UsersDataSourcesDatasetsGet' Text
udsdgUserId
  = lens _udsdgUserId (\ s a -> s{_udsdgUserId = a})

-- | Dataset identifier that is a composite of the minimum data point start
-- time and maximum data point end time represented as nanoseconds from the
-- epoch. The ID is formatted like: \"startTime-endTime\" where startTime
-- and endTime are 64 bit integers.
udsdgDatasetId :: Lens' UsersDataSourcesDatasetsGet' Text
udsdgDatasetId
  = lens _udsdgDatasetId
      (\ s a -> s{_udsdgDatasetId = a})

-- | If specified, no more than this many data points will be included in the
-- dataset. If the there are more data points in the dataset, nextPageToken
-- will be set in the dataset response.
udsdgLimit :: Lens' UsersDataSourcesDatasetsGet' (Maybe Int32)
udsdgLimit
  = lens _udsdgLimit (\ s a -> s{_udsdgLimit = a})

-- | The continuation token, which is used to page through large datasets. To
-- get the next page of a dataset, set this parameter to the value of
-- nextPageToken from the previous response. Each subsequent call will
-- yield a partial dataset with data point end timestamps that are strictly
-- smaller than those in the previous partial response.
udsdgPageToken :: Lens' UsersDataSourcesDatasetsGet' (Maybe Text)
udsdgPageToken
  = lens _udsdgPageToken
      (\ s a -> s{_udsdgPageToken = a})

instance GoogleRequest UsersDataSourcesDatasetsGet'
         where
        type Rs UsersDataSourcesDatasetsGet' = Dataset
        requestClient UsersDataSourcesDatasetsGet'{..}
          = go _udsdgUserId _udsdgDataSourceId _udsdgDatasetId
              _udsdgLimit
              _udsdgPageToken
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesDatasetsGetResource)
                      mempty
