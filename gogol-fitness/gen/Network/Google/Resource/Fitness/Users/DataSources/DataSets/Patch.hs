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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.DataSets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
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
module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Patch
    (
    -- * REST Resource
      UsersDataSourcesDataSetsPatchResource

    -- * Creating a Request
    , usersDataSourcesDataSetsPatch
    , UsersDataSourcesDataSetsPatch

    -- * Request Lenses
    , udsdspDataSourceId
    , udsdspPayload
    , udsdspUserId
    , udsdspDataSetId
    , udsdspCurrentTimeMillis
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.datasets.patch@ method which the
-- 'UsersDataSourcesDataSetsPatch' request conforms to.
type UsersDataSourcesDataSetsPatchResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 "datasets" :>
                   Capture "datasetId" Text :>
                     QueryParam "currentTimeMillis" (Textual Int64) :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DataSet :> Patch '[JSON] DataSet

-- | Adds data points to a dataset. The dataset need not be previously
-- created. All points within the given dataset will be returned with
-- subsquent calls to retrieve this dataset. Data points can belong to more
-- than one dataset. This method does not use patch semantics.
--
-- /See:/ 'usersDataSourcesDataSetsPatch' smart constructor.
data UsersDataSourcesDataSetsPatch = UsersDataSourcesDataSetsPatch
    { _udsdspDataSourceId      :: !Text
    , _udsdspPayload           :: !DataSet
    , _udsdspUserId            :: !Text
    , _udsdspDataSetId         :: !Text
    , _udsdspCurrentTimeMillis :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDataSetsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdspDataSourceId'
--
-- * 'udsdspPayload'
--
-- * 'udsdspUserId'
--
-- * 'udsdspDataSetId'
--
-- * 'udsdspCurrentTimeMillis'
usersDataSourcesDataSetsPatch
    :: Text -- ^ 'udsdspDataSourceId'
    -> DataSet -- ^ 'udsdspPayload'
    -> Text -- ^ 'udsdspUserId'
    -> Text -- ^ 'udsdspDataSetId'
    -> UsersDataSourcesDataSetsPatch
usersDataSourcesDataSetsPatch pUdsdspDataSourceId_ pUdsdspPayload_ pUdsdspUserId_ pUdsdspDataSetId_ =
    UsersDataSourcesDataSetsPatch
    { _udsdspDataSourceId = pUdsdspDataSourceId_
    , _udsdspPayload = pUdsdspPayload_
    , _udsdspUserId = pUdsdspUserId_
    , _udsdspDataSetId = pUdsdspDataSetId_
    , _udsdspCurrentTimeMillis = Nothing
    }

-- | The data stream ID of the data source that created the dataset.
udsdspDataSourceId :: Lens' UsersDataSourcesDataSetsPatch Text
udsdspDataSourceId
  = lens _udsdspDataSourceId
      (\ s a -> s{_udsdspDataSourceId = a})

-- | Multipart request metadata.
udsdspPayload :: Lens' UsersDataSourcesDataSetsPatch DataSet
udsdspPayload
  = lens _udsdspPayload
      (\ s a -> s{_udsdspPayload = a})

-- | Patch a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdspUserId :: Lens' UsersDataSourcesDataSetsPatch Text
udsdspUserId
  = lens _udsdspUserId (\ s a -> s{_udsdspUserId = a})

-- | Dataset identifier that is a composite of the minimum data point start
-- time and maximum data point end time represented as nanoseconds from the
-- epoch. The ID is formatted like: \"startTime-endTime\" where startTime
-- and endTime are 64 bit integers.
udsdspDataSetId :: Lens' UsersDataSourcesDataSetsPatch Text
udsdspDataSetId
  = lens _udsdspDataSetId
      (\ s a -> s{_udsdspDataSetId = a})

-- | The client\'s current time in milliseconds since epoch. Note that the
-- minStartTimeNs and maxEndTimeNs properties in the request body are in
-- nanoseconds instead of milliseconds.
udsdspCurrentTimeMillis :: Lens' UsersDataSourcesDataSetsPatch (Maybe Int64)
udsdspCurrentTimeMillis
  = lens _udsdspCurrentTimeMillis
      (\ s a -> s{_udsdspCurrentTimeMillis = a})
      . mapping _Coerce

instance GoogleRequest UsersDataSourcesDataSetsPatch
         where
        type Rs UsersDataSourcesDataSetsPatch = DataSet
        type Scopes UsersDataSourcesDataSetsPatch =
             '["https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.location.write"]
        requestClient UsersDataSourcesDataSetsPatch{..}
          = go _udsdspUserId _udsdspDataSourceId
              _udsdspDataSetId
              _udsdspCurrentTimeMillis
              (Just AltJSON)
              _udsdspPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersDataSourcesDataSetsPatchResource)
                      mempty
