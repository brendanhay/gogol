{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Datasets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds data points to a dataset. The dataset need not be previously
-- created. All points within the given dataset will be returned with
-- subsquent calls to retrieve this dataset. Data points can belong to more
-- than one dataset. This method does not use patch semantics.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesDatasetsPatch@.
module Network.Google.Resource.Fitness.Users.DataSources.Datasets.Patch
    (
    -- * REST Resource
      UsersDataSourcesDatasetsPatchResource

    -- * Creating a Request
    , usersDataSourcesDatasetsPatch'
    , UsersDataSourcesDatasetsPatch'

    -- * Request Lenses
    , udsdpQuotaUser
    , udsdpPrettyPrint
    , udsdpDataset
    , udsdpUserIP
    , udsdpDataSourceId
    , udsdpUserId
    , udsdpKey
    , udsdpDatasetId
    , udsdpCurrentTimeMillis
    , udsdpOAuthToken
    , udsdpFields
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesDatasetsPatch@ which the
-- 'UsersDataSourcesDatasetsPatch'' request conforms to.
type UsersDataSourcesDatasetsPatchResource =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           "datasets" :>
             Capture "datasetId" Text :>
               QueryParam "currentTimeMillis" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Dataset :> Patch '[JSON] Dataset

-- | Adds data points to a dataset. The dataset need not be previously
-- created. All points within the given dataset will be returned with
-- subsquent calls to retrieve this dataset. Data points can belong to more
-- than one dataset. This method does not use patch semantics.
--
-- /See:/ 'usersDataSourcesDatasetsPatch'' smart constructor.
data UsersDataSourcesDatasetsPatch' = UsersDataSourcesDatasetsPatch'
    { _udsdpQuotaUser         :: !(Maybe Text)
    , _udsdpPrettyPrint       :: !Bool
    , _udsdpDataset           :: !Dataset
    , _udsdpUserIP            :: !(Maybe Text)
    , _udsdpDataSourceId      :: !Text
    , _udsdpUserId            :: !Text
    , _udsdpKey               :: !(Maybe Key)
    , _udsdpDatasetId         :: !Text
    , _udsdpCurrentTimeMillis :: !(Maybe Int64)
    , _udsdpOAuthToken        :: !(Maybe OAuthToken)
    , _udsdpFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDatasetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdpQuotaUser'
--
-- * 'udsdpPrettyPrint'
--
-- * 'udsdpDataset'
--
-- * 'udsdpUserIP'
--
-- * 'udsdpDataSourceId'
--
-- * 'udsdpUserId'
--
-- * 'udsdpKey'
--
-- * 'udsdpDatasetId'
--
-- * 'udsdpCurrentTimeMillis'
--
-- * 'udsdpOAuthToken'
--
-- * 'udsdpFields'
usersDataSourcesDatasetsPatch'
    :: Dataset -- ^ 'Dataset'
    -> Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'datasetId'
    -> UsersDataSourcesDatasetsPatch'
usersDataSourcesDatasetsPatch' pUdsdpDataset_ pUdsdpDataSourceId_ pUdsdpUserId_ pUdsdpDatasetId_ =
    UsersDataSourcesDatasetsPatch'
    { _udsdpQuotaUser = Nothing
    , _udsdpPrettyPrint = True
    , _udsdpDataset = pUdsdpDataset_
    , _udsdpUserIP = Nothing
    , _udsdpDataSourceId = pUdsdpDataSourceId_
    , _udsdpUserId = pUdsdpUserId_
    , _udsdpKey = Nothing
    , _udsdpDatasetId = pUdsdpDatasetId_
    , _udsdpCurrentTimeMillis = Nothing
    , _udsdpOAuthToken = Nothing
    , _udsdpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udsdpQuotaUser :: Lens' UsersDataSourcesDatasetsPatch' (Maybe Text)
udsdpQuotaUser
  = lens _udsdpQuotaUser
      (\ s a -> s{_udsdpQuotaUser = a})

-- | Returns response with indentations and line breaks.
udsdpPrettyPrint :: Lens' UsersDataSourcesDatasetsPatch' Bool
udsdpPrettyPrint
  = lens _udsdpPrettyPrint
      (\ s a -> s{_udsdpPrettyPrint = a})

-- | Multipart request metadata.
udsdpDataset :: Lens' UsersDataSourcesDatasetsPatch' Dataset
udsdpDataset
  = lens _udsdpDataset (\ s a -> s{_udsdpDataset = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udsdpUserIP :: Lens' UsersDataSourcesDatasetsPatch' (Maybe Text)
udsdpUserIP
  = lens _udsdpUserIP (\ s a -> s{_udsdpUserIP = a})

-- | The data stream ID of the data source that created the dataset.
udsdpDataSourceId :: Lens' UsersDataSourcesDatasetsPatch' Text
udsdpDataSourceId
  = lens _udsdpDataSourceId
      (\ s a -> s{_udsdpDataSourceId = a})

-- | Patch a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdpUserId :: Lens' UsersDataSourcesDatasetsPatch' Text
udsdpUserId
  = lens _udsdpUserId (\ s a -> s{_udsdpUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsdpKey :: Lens' UsersDataSourcesDatasetsPatch' (Maybe Key)
udsdpKey = lens _udsdpKey (\ s a -> s{_udsdpKey = a})

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

-- | OAuth 2.0 token for the current user.
udsdpOAuthToken :: Lens' UsersDataSourcesDatasetsPatch' (Maybe OAuthToken)
udsdpOAuthToken
  = lens _udsdpOAuthToken
      (\ s a -> s{_udsdpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsdpFields :: Lens' UsersDataSourcesDatasetsPatch' (Maybe Text)
udsdpFields
  = lens _udsdpFields (\ s a -> s{_udsdpFields = a})

instance GoogleAuth UsersDataSourcesDatasetsPatch'
         where
        authKey = udsdpKey . _Just
        authToken = udsdpOAuthToken . _Just

instance GoogleRequest UsersDataSourcesDatasetsPatch'
         where
        type Rs UsersDataSourcesDatasetsPatch' = Dataset
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u
          UsersDataSourcesDatasetsPatch'{..}
          = go _udsdpCurrentTimeMillis _udsdpUserId
              _udsdpDataSourceId
              _udsdpDatasetId
              _udsdpQuotaUser
              (Just _udsdpPrettyPrint)
              _udsdpUserIP
              _udsdpFields
              _udsdpKey
              _udsdpOAuthToken
              (Just AltJSON)
              _udsdpDataset
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy UsersDataSourcesDatasetsPatchResource)
                      r
                      u
