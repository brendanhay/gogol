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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Datasets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds data points to a dataset. The dataset need not be previously
-- created. All points within the given dataset will be returned with
-- subsquent calls to retrieve this dataset. Data points can belong to more
-- than one dataset. This method does not use patch semantics.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.datasets.patch@.
module Network.Google.Resource.Fitness.Users.DataSources.Datasets.Patch
    (
    -- * REST Resource
      UsersDataSourcesDatasetsPatchResource

    -- * Creating a Request
    , usersDataSourcesDatasetsPatch'
    , UsersDataSourcesDatasetsPatch'

    -- * Request Lenses
    , udsdpDataSourceId
    , udsdpPayload
    , udsdpUserId
    , udsdpDatasetId
    , udsdpCurrentTimeMillis
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.datasets.patch@ method which the
-- 'UsersDataSourcesDatasetsPatch'' request conforms to.
type UsersDataSourcesDatasetsPatchResource =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           "datasets" :>
             Capture "datasetId" Text :>
               QueryParam "currentTimeMillis" Int64 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Dataset :> Patch '[JSON] Dataset

-- | Adds data points to a dataset. The dataset need not be previously
-- created. All points within the given dataset will be returned with
-- subsquent calls to retrieve this dataset. Data points can belong to more
-- than one dataset. This method does not use patch semantics.
--
-- /See:/ 'usersDataSourcesDatasetsPatch'' smart constructor.
data UsersDataSourcesDatasetsPatch' = UsersDataSourcesDatasetsPatch'
    { _udsdpDataSourceId      :: !Text
    , _udsdpPayload           :: !Dataset
    , _udsdpUserId            :: !Text
    , _udsdpDatasetId         :: !Text
    , _udsdpCurrentTimeMillis :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDatasetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdpDataSourceId'
--
-- * 'udsdpPayload'
--
-- * 'udsdpUserId'
--
-- * 'udsdpDatasetId'
--
-- * 'udsdpCurrentTimeMillis'
usersDataSourcesDatasetsPatch'
    :: Text -- ^ 'udsdpDataSourceId'
    -> Dataset -- ^ 'udsdpPayload'
    -> Text -- ^ 'udsdpUserId'
    -> Text -- ^ 'udsdpDatasetId'
    -> UsersDataSourcesDatasetsPatch'
usersDataSourcesDatasetsPatch' pUdsdpDataSourceId_ pUdsdpPayload_ pUdsdpUserId_ pUdsdpDatasetId_ =
    UsersDataSourcesDatasetsPatch'
    { _udsdpDataSourceId = pUdsdpDataSourceId_
    , _udsdpPayload = pUdsdpPayload_
    , _udsdpUserId = pUdsdpUserId_
    , _udsdpDatasetId = pUdsdpDatasetId_
    , _udsdpCurrentTimeMillis = Nothing
    }

-- | The data stream ID of the data source that created the dataset.
udsdpDataSourceId :: Lens' UsersDataSourcesDatasetsPatch' Text
udsdpDataSourceId
  = lens _udsdpDataSourceId
      (\ s a -> s{_udsdpDataSourceId = a})

-- | Multipart request metadata.
udsdpPayload :: Lens' UsersDataSourcesDatasetsPatch' Dataset
udsdpPayload
  = lens _udsdpPayload (\ s a -> s{_udsdpPayload = a})

-- | Patch a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdpUserId :: Lens' UsersDataSourcesDatasetsPatch' Text
udsdpUserId
  = lens _udsdpUserId (\ s a -> s{_udsdpUserId = a})

-- | Dataset identifier that is a composite of the minimum data point start
-- time and maximum data point end time represented as nanoseconds from the
-- epoch. The ID is formatted like: \"startTime-endTime\" where startTime
-- and endTime are 64 bit integers.
udsdpDatasetId :: Lens' UsersDataSourcesDatasetsPatch' Text
udsdpDatasetId
  = lens _udsdpDatasetId
      (\ s a -> s{_udsdpDatasetId = a})

-- | The client\'s current time in milliseconds since epoch. Note that the
-- minStartTimeNs and maxEndTimeNs properties in the request body are in
-- nanoseconds instead of milliseconds.
udsdpCurrentTimeMillis :: Lens' UsersDataSourcesDatasetsPatch' (Maybe Int64)
udsdpCurrentTimeMillis
  = lens _udsdpCurrentTimeMillis
      (\ s a -> s{_udsdpCurrentTimeMillis = a})

instance GoogleRequest UsersDataSourcesDatasetsPatch'
         where
        type Rs UsersDataSourcesDatasetsPatch' = Dataset
        requestClient UsersDataSourcesDatasetsPatch'{..}
          = go _udsdpUserId _udsdpDataSourceId _udsdpDatasetId
              _udsdpCurrentTimeMillis
              (Just AltJSON)
              _udsdpPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersDataSourcesDatasetsPatchResource)
                      mempty
