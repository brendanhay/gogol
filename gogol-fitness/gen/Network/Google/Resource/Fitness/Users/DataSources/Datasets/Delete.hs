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
    , udsddQuotaUser
    , udsddPrettyPrint
    , udsddUserIP
    , udsddDataSourceId
    , udsddUserId
    , udsddKey
    , udsddDatasetId
    , udsddModifiedTimeMillis
    , udsddCurrentTimeMillis
    , udsddOAuthToken
    , udsddFields
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesDatasetsDelete@ which the
-- 'UsersDataSourcesDatasetsDelete'' request conforms to.
type UsersDataSourcesDatasetsDeleteResource =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           "datasets" :>
             Capture "datasetId" Text :>
               QueryParam "modifiedTimeMillis" Int64 :>
                 QueryParam "currentTimeMillis" Int64 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
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
    { _udsddQuotaUser          :: !(Maybe Text)
    , _udsddPrettyPrint        :: !Bool
    , _udsddUserIP             :: !(Maybe Text)
    , _udsddDataSourceId       :: !Text
    , _udsddUserId             :: !Text
    , _udsddKey                :: !(Maybe AuthKey)
    , _udsddDatasetId          :: !Text
    , _udsddModifiedTimeMillis :: !(Maybe Int64)
    , _udsddCurrentTimeMillis  :: !(Maybe Int64)
    , _udsddOAuthToken         :: !(Maybe OAuthToken)
    , _udsddFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDatasetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsddQuotaUser'
--
-- * 'udsddPrettyPrint'
--
-- * 'udsddUserIP'
--
-- * 'udsddDataSourceId'
--
-- * 'udsddUserId'
--
-- * 'udsddKey'
--
-- * 'udsddDatasetId'
--
-- * 'udsddModifiedTimeMillis'
--
-- * 'udsddCurrentTimeMillis'
--
-- * 'udsddOAuthToken'
--
-- * 'udsddFields'
usersDataSourcesDatasetsDelete'
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'datasetId'
    -> UsersDataSourcesDatasetsDelete'
usersDataSourcesDatasetsDelete' pUdsddDataSourceId_ pUdsddUserId_ pUdsddDatasetId_ =
    UsersDataSourcesDatasetsDelete'
    { _udsddQuotaUser = Nothing
    , _udsddPrettyPrint = True
    , _udsddUserIP = Nothing
    , _udsddDataSourceId = pUdsddDataSourceId_
    , _udsddUserId = pUdsddUserId_
    , _udsddKey = Nothing
    , _udsddDatasetId = pUdsddDatasetId_
    , _udsddModifiedTimeMillis = Nothing
    , _udsddCurrentTimeMillis = Nothing
    , _udsddOAuthToken = Nothing
    , _udsddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udsddQuotaUser :: Lens' UsersDataSourcesDatasetsDelete' (Maybe Text)
udsddQuotaUser
  = lens _udsddQuotaUser
      (\ s a -> s{_udsddQuotaUser = a})

-- | Returns response with indentations and line breaks.
udsddPrettyPrint :: Lens' UsersDataSourcesDatasetsDelete' Bool
udsddPrettyPrint
  = lens _udsddPrettyPrint
      (\ s a -> s{_udsddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udsddUserIP :: Lens' UsersDataSourcesDatasetsDelete' (Maybe Text)
udsddUserIP
  = lens _udsddUserIP (\ s a -> s{_udsddUserIP = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsddKey :: Lens' UsersDataSourcesDatasetsDelete' (Maybe AuthKey)
udsddKey = lens _udsddKey (\ s a -> s{_udsddKey = a})

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

-- | OAuth 2.0 token for the current user.
udsddOAuthToken :: Lens' UsersDataSourcesDatasetsDelete' (Maybe OAuthToken)
udsddOAuthToken
  = lens _udsddOAuthToken
      (\ s a -> s{_udsddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsddFields :: Lens' UsersDataSourcesDatasetsDelete' (Maybe Text)
udsddFields
  = lens _udsddFields (\ s a -> s{_udsddFields = a})

instance GoogleAuth UsersDataSourcesDatasetsDelete'
         where
        _AuthKey = udsddKey . _Just
        _AuthToken = udsddOAuthToken . _Just

instance GoogleRequest
         UsersDataSourcesDatasetsDelete' where
        type Rs UsersDataSourcesDatasetsDelete' = ()
        request = requestWith fitnessRequest
        requestWith rq UsersDataSourcesDatasetsDelete'{..}
          = go _udsddUserId _udsddDataSourceId _udsddDatasetId
              _udsddModifiedTimeMillis
              _udsddCurrentTimeMillis
              _udsddQuotaUser
              (Just _udsddPrettyPrint)
              _udsddUserIP
              _udsddFields
              _udsddKey
              _udsddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy UsersDataSourcesDatasetsDeleteResource)
                      rq
