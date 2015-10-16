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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Datasets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Performs an inclusive delete of all data points whose start and end
-- times have any overlap with the time range specified by the dataset ID.
-- For most data types, the entire data point will be deleted. For data
-- types where the time span represents a consistent value (such as
-- com.google.activity.segment), and a data point straddles either end
-- point of the dataset, only the overlapping portion of the data point
-- will be deleted.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesDatasetsDelete@.
module Network.Google.Resource.Fitness.Users.DataSources.Datasets.Delete
    (
    -- * REST Resource
      UsersDataSourcesDatasetsDeleteResource

    -- * Creating a Request
    , usersDataSourcesDatasetsDelete'
    , UsersDataSourcesDatasetsDelete'

    -- * Request Lenses
    , udsddDataSourceId
    , udsddUserId
    , udsddDatasetId
    , udsddModifiedTimeMillis
    , udsddCurrentTimeMillis
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesDatasetsDelete@ method which the
-- 'UsersDataSourcesDatasetsDelete'' request conforms to.
type UsersDataSourcesDatasetsDeleteResource =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           "datasets" :>
             Capture "datasetId" Text :>
               QueryParam "modifiedTimeMillis" Int64 :>
                 QueryParam "currentTimeMillis" Int64 :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Performs an inclusive delete of all data points whose start and end
-- times have any overlap with the time range specified by the dataset ID.
-- For most data types, the entire data point will be deleted. For data
-- types where the time span represents a consistent value (such as
-- com.google.activity.segment), and a data point straddles either end
-- point of the dataset, only the overlapping portion of the data point
-- will be deleted.
--
-- /See:/ 'usersDataSourcesDatasetsDelete'' smart constructor.
data UsersDataSourcesDatasetsDelete' = UsersDataSourcesDatasetsDelete'
    { _udsddDataSourceId       :: !Text
    , _udsddUserId             :: !Text
    , _udsddDatasetId          :: !Text
    , _udsddModifiedTimeMillis :: !(Maybe Int64)
    , _udsddCurrentTimeMillis  :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDatasetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsddDataSourceId'
--
-- * 'udsddUserId'
--
-- * 'udsddDatasetId'
--
-- * 'udsddModifiedTimeMillis'
--
-- * 'udsddCurrentTimeMillis'
usersDataSourcesDatasetsDelete'
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'datasetId'
    -> UsersDataSourcesDatasetsDelete'
usersDataSourcesDatasetsDelete' pUdsddDataSourceId_ pUdsddUserId_ pUdsddDatasetId_ =
    UsersDataSourcesDatasetsDelete'
    { _udsddDataSourceId = pUdsddDataSourceId_
    , _udsddUserId = pUdsddUserId_
    , _udsddDatasetId = pUdsddDatasetId_
    , _udsddModifiedTimeMillis = Nothing
    , _udsddCurrentTimeMillis = Nothing
    }

-- | The data stream ID of the data source that created the dataset.
udsddDataSourceId :: Lens' UsersDataSourcesDatasetsDelete' Text
udsddDataSourceId
  = lens _udsddDataSourceId
      (\ s a -> s{_udsddDataSourceId = a})

-- | Delete a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsddUserId :: Lens' UsersDataSourcesDatasetsDelete' Text
udsddUserId
  = lens _udsddUserId (\ s a -> s{_udsddUserId = a})

-- | Dataset identifier that is a composite of the minimum data point start
-- time and maximum data point end time represented as nanoseconds from the
-- epoch. The ID is formatted like: \"startTime-endTime\" where startTime
-- and endTime are 64 bit integers.
udsddDatasetId :: Lens' UsersDataSourcesDatasetsDelete' Text
udsddDatasetId
  = lens _udsddDatasetId
      (\ s a -> s{_udsddDatasetId = a})

-- | When the operation was performed on the client.
udsddModifiedTimeMillis :: Lens' UsersDataSourcesDatasetsDelete' (Maybe Int64)
udsddModifiedTimeMillis
  = lens _udsddModifiedTimeMillis
      (\ s a -> s{_udsddModifiedTimeMillis = a})

-- | The client\'s current time in milliseconds since epoch.
udsddCurrentTimeMillis :: Lens' UsersDataSourcesDatasetsDelete' (Maybe Int64)
udsddCurrentTimeMillis
  = lens _udsddCurrentTimeMillis
      (\ s a -> s{_udsddCurrentTimeMillis = a})

instance GoogleRequest
         UsersDataSourcesDatasetsDelete' where
        type Rs UsersDataSourcesDatasetsDelete' = ()
        requestClient UsersDataSourcesDatasetsDelete'{..}
          = go _udsddUserId _udsddDataSourceId _udsddDatasetId
              _udsddModifiedTimeMillis
              _udsddCurrentTimeMillis
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersDataSourcesDatasetsDeleteResource)
                      mempty
