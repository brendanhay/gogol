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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.DataSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs an inclusive delete of all data points whose start and end
-- times have any overlap with the time range specified by the dataset ID.
-- For most data types, the entire data point will be deleted. For data
-- types where the time span represents a consistent value (such as
-- com.google.activity.segment), and a data point straddles either end
-- point of the dataset, only the overlapping portion of the data point
-- will be deleted.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.datasets.delete@.
module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Delete
    (
    -- * REST Resource
      UsersDataSourcesDataSetsDeleteResource

    -- * Creating a Request
    , usersDataSourcesDataSetsDelete
    , UsersDataSourcesDataSetsDelete

    -- * Request Lenses
    , udsdsdDataSourceId
    , udsdsdUserId
    , udsdsdDataSetId
    , udsdsdModifiedTimeMillis
    , udsdsdCurrentTimeMillis
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.datasets.delete@ method which the
-- 'UsersDataSourcesDataSetsDelete' request conforms to.
type UsersDataSourcesDataSetsDeleteResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 "datasets" :>
                   Capture "datasetId" Text :>
                     QueryParam "modifiedTimeMillis" (Textual Int64) :>
                       QueryParam "currentTimeMillis" (Textual Int64) :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Performs an inclusive delete of all data points whose start and end
-- times have any overlap with the time range specified by the dataset ID.
-- For most data types, the entire data point will be deleted. For data
-- types where the time span represents a consistent value (such as
-- com.google.activity.segment), and a data point straddles either end
-- point of the dataset, only the overlapping portion of the data point
-- will be deleted.
--
-- /See:/ 'usersDataSourcesDataSetsDelete' smart constructor.
data UsersDataSourcesDataSetsDelete = UsersDataSourcesDataSetsDelete
    { _udsdsdDataSourceId       :: !Text
    , _udsdsdUserId             :: !Text
    , _udsdsdDataSetId          :: !Text
    , _udsdsdModifiedTimeMillis :: !(Maybe (Textual Int64))
    , _udsdsdCurrentTimeMillis  :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDataSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdsdDataSourceId'
--
-- * 'udsdsdUserId'
--
-- * 'udsdsdDataSetId'
--
-- * 'udsdsdModifiedTimeMillis'
--
-- * 'udsdsdCurrentTimeMillis'
usersDataSourcesDataSetsDelete
    :: Text -- ^ 'udsdsdDataSourceId'
    -> Text -- ^ 'udsdsdUserId'
    -> Text -- ^ 'udsdsdDataSetId'
    -> UsersDataSourcesDataSetsDelete
usersDataSourcesDataSetsDelete pUdsdsdDataSourceId_ pUdsdsdUserId_ pUdsdsdDataSetId_ =
    UsersDataSourcesDataSetsDelete
    { _udsdsdDataSourceId = pUdsdsdDataSourceId_
    , _udsdsdUserId = pUdsdsdUserId_
    , _udsdsdDataSetId = pUdsdsdDataSetId_
    , _udsdsdModifiedTimeMillis = Nothing
    , _udsdsdCurrentTimeMillis = Nothing
    }

-- | The data stream ID of the data source that created the dataset.
udsdsdDataSourceId :: Lens' UsersDataSourcesDataSetsDelete Text
udsdsdDataSourceId
  = lens _udsdsdDataSourceId
      (\ s a -> s{_udsdsdDataSourceId = a})

-- | Delete a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdsdUserId :: Lens' UsersDataSourcesDataSetsDelete Text
udsdsdUserId
  = lens _udsdsdUserId (\ s a -> s{_udsdsdUserId = a})

-- | Dataset identifier that is a composite of the minimum data point start
-- time and maximum data point end time represented as nanoseconds from the
-- epoch. The ID is formatted like: \"startTime-endTime\" where startTime
-- and endTime are 64 bit integers.
udsdsdDataSetId :: Lens' UsersDataSourcesDataSetsDelete Text
udsdsdDataSetId
  = lens _udsdsdDataSetId
      (\ s a -> s{_udsdsdDataSetId = a})

-- | When the operation was performed on the client.
udsdsdModifiedTimeMillis :: Lens' UsersDataSourcesDataSetsDelete (Maybe Int64)
udsdsdModifiedTimeMillis
  = lens _udsdsdModifiedTimeMillis
      (\ s a -> s{_udsdsdModifiedTimeMillis = a})
      . mapping _Coerce

-- | The client\'s current time in milliseconds since epoch.
udsdsdCurrentTimeMillis :: Lens' UsersDataSourcesDataSetsDelete (Maybe Int64)
udsdsdCurrentTimeMillis
  = lens _udsdsdCurrentTimeMillis
      (\ s a -> s{_udsdsdCurrentTimeMillis = a})
      . mapping _Coerce

instance GoogleRequest UsersDataSourcesDataSetsDelete
         where
        type Rs UsersDataSourcesDataSetsDelete = ()
        type Scopes UsersDataSourcesDataSetsDelete =
             '["https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.location.write"]
        requestClient UsersDataSourcesDataSetsDelete{..}
          = go _udsdsdUserId _udsdsdDataSourceId
              _udsdsdDataSetId
              _udsdsdModifiedTimeMillis
              _udsdsdCurrentTimeMillis
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersDataSourcesDataSetsDeleteResource)
                      mempty
