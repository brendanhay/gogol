{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Fitness.Users.DataSources.Datasets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a dataset containing all data points whose start and end times
-- overlap with the specified range of the dataset minimum start time and
-- maximum end time. Specifically, any data point whose start time is less
-- than or equal to the dataset end time and whose end time is greater than
-- or equal to the dataset start time.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.datasets.get@.
module Network.Google.API.Fitness.Users.DataSources.Datasets.Get
    (
    -- * REST Resource
      UsersDataSourcesDatasetsGetAPI

    -- * Creating a Request
    , usersDataSourcesDatasetsGet'
    , UsersDataSourcesDatasetsGet'

    -- * Request Lenses
    , udsdgQuotaUser
    , udsdgPrettyPrint
    , udsdgUserIp
    , udsdgDataSourceId
    , udsdgUserId
    , udsdgKey
    , udsdgDatasetId
    , udsdgLimit
    , udsdgPageToken
    , udsdgOauthToken
    , udsdgFields
    , udsdgAlt
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for fitness.users.dataSources.datasets.get which the
-- 'UsersDataSourcesDatasetsGet'' request conforms to.
type UsersDataSourcesDatasetsGetAPI =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           "datasets" :>
             Capture "datasetId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "limit" Int32 :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] Dataset

-- | Returns a dataset containing all data points whose start and end times
-- overlap with the specified range of the dataset minimum start time and
-- maximum end time. Specifically, any data point whose start time is less
-- than or equal to the dataset end time and whose end time is greater than
-- or equal to the dataset start time.
--
-- /See:/ 'usersDataSourcesDatasetsGet'' smart constructor.
data UsersDataSourcesDatasetsGet' = UsersDataSourcesDatasetsGet'
    { _udsdgQuotaUser    :: !(Maybe Text)
    , _udsdgPrettyPrint  :: !Bool
    , _udsdgUserIp       :: !(Maybe Text)
    , _udsdgDataSourceId :: !Text
    , _udsdgUserId       :: !Text
    , _udsdgKey          :: !(Maybe Text)
    , _udsdgDatasetId    :: !Text
    , _udsdgLimit        :: !(Maybe Int32)
    , _udsdgPageToken    :: !(Maybe Text)
    , _udsdgOauthToken   :: !(Maybe Text)
    , _udsdgFields       :: !(Maybe Text)
    , _udsdgAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDatasetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdgQuotaUser'
--
-- * 'udsdgPrettyPrint'
--
-- * 'udsdgUserIp'
--
-- * 'udsdgDataSourceId'
--
-- * 'udsdgUserId'
--
-- * 'udsdgKey'
--
-- * 'udsdgDatasetId'
--
-- * 'udsdgLimit'
--
-- * 'udsdgPageToken'
--
-- * 'udsdgOauthToken'
--
-- * 'udsdgFields'
--
-- * 'udsdgAlt'
usersDataSourcesDatasetsGet'
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'datasetId'
    -> UsersDataSourcesDatasetsGet'
usersDataSourcesDatasetsGet' pUdsdgDataSourceId_ pUdsdgUserId_ pUdsdgDatasetId_ =
    UsersDataSourcesDatasetsGet'
    { _udsdgQuotaUser = Nothing
    , _udsdgPrettyPrint = True
    , _udsdgUserIp = Nothing
    , _udsdgDataSourceId = pUdsdgDataSourceId_
    , _udsdgUserId = pUdsdgUserId_
    , _udsdgKey = Nothing
    , _udsdgDatasetId = pUdsdgDatasetId_
    , _udsdgLimit = Nothing
    , _udsdgPageToken = Nothing
    , _udsdgOauthToken = Nothing
    , _udsdgFields = Nothing
    , _udsdgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udsdgQuotaUser :: Lens' UsersDataSourcesDatasetsGet' (Maybe Text)
udsdgQuotaUser
  = lens _udsdgQuotaUser
      (\ s a -> s{_udsdgQuotaUser = a})

-- | Returns response with indentations and line breaks.
udsdgPrettyPrint :: Lens' UsersDataSourcesDatasetsGet' Bool
udsdgPrettyPrint
  = lens _udsdgPrettyPrint
      (\ s a -> s{_udsdgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udsdgUserIp :: Lens' UsersDataSourcesDatasetsGet' (Maybe Text)
udsdgUserIp
  = lens _udsdgUserIp (\ s a -> s{_udsdgUserIp = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsdgKey :: Lens' UsersDataSourcesDatasetsGet' (Maybe Text)
udsdgKey = lens _udsdgKey (\ s a -> s{_udsdgKey = a})

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

-- | OAuth 2.0 token for the current user.
udsdgOauthToken :: Lens' UsersDataSourcesDatasetsGet' (Maybe Text)
udsdgOauthToken
  = lens _udsdgOauthToken
      (\ s a -> s{_udsdgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsdgFields :: Lens' UsersDataSourcesDatasetsGet' (Maybe Text)
udsdgFields
  = lens _udsdgFields (\ s a -> s{_udsdgFields = a})

-- | Data format for the response.
udsdgAlt :: Lens' UsersDataSourcesDatasetsGet' Alt
udsdgAlt = lens _udsdgAlt (\ s a -> s{_udsdgAlt = a})

instance GoogleRequest UsersDataSourcesDatasetsGet'
         where
        type Rs UsersDataSourcesDatasetsGet' = Dataset
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDataSourcesDatasetsGet'{..}
          = go _udsdgQuotaUser (Just _udsdgPrettyPrint)
              _udsdgUserIp
              _udsdgDataSourceId
              _udsdgUserId
              _udsdgKey
              _udsdgDatasetId
              _udsdgLimit
              _udsdgPageToken
              _udsdgOauthToken
              _udsdgFields
              (Just _udsdgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDataSourcesDatasetsGetAPI)
                      r
                      u
