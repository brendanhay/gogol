{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Datasets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all datasets in the specified project to which you have been
-- granted the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsList@.
module Network.Google.Resource.BigQuery.Datasets.List
    (
    -- * REST Resource
      DatasetsListResource

    -- * Creating a Request
    , datasetsList'
    , DatasetsList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlUserIP
    , dlAll
    , dlKey
    , dlPageToken
    , dlProjectId
    , dlOAuthToken
    , dlMaxResults
    , dlFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsList@ which the
-- 'DatasetsList'' request conforms to.
type DatasetsListResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           QueryParam "all" Bool :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] DatasetList

-- | Lists all datasets in the specified project to which you have been
-- granted the READER dataset role.
--
-- /See:/ 'datasetsList'' smart constructor.
data DatasetsList' = DatasetsList'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlUserIP      :: !(Maybe Text)
    , _dlAll         :: !(Maybe Bool)
    , _dlKey         :: !(Maybe Key)
    , _dlPageToken   :: !(Maybe Text)
    , _dlProjectId   :: !Text
    , _dlOAuthToken  :: !(Maybe OAuthToken)
    , _dlMaxResults  :: !(Maybe Word32)
    , _dlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlUserIP'
--
-- * 'dlAll'
--
-- * 'dlKey'
--
-- * 'dlPageToken'
--
-- * 'dlProjectId'
--
-- * 'dlOAuthToken'
--
-- * 'dlMaxResults'
--
-- * 'dlFields'
datasetsList'
    :: Text -- ^ 'projectId'
    -> DatasetsList'
datasetsList' pDlProjectId_ =
    DatasetsList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlUserIP = Nothing
    , _dlAll = Nothing
    , _dlKey = Nothing
    , _dlPageToken = Nothing
    , _dlProjectId = pDlProjectId_
    , _dlOAuthToken = Nothing
    , _dlMaxResults = Nothing
    , _dlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DatasetsList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DatasetsList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIP :: Lens' DatasetsList' (Maybe Text)
dlUserIP = lens _dlUserIP (\ s a -> s{_dlUserIP = a})

-- | Whether to list all datasets, including hidden ones
dlAll :: Lens' DatasetsList' (Maybe Bool)
dlAll = lens _dlAll (\ s a -> s{_dlAll = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DatasetsList' (Maybe Key)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
dlPageToken :: Lens' DatasetsList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | Project ID of the datasets to be listed
dlProjectId :: Lens' DatasetsList' Text
dlProjectId
  = lens _dlProjectId (\ s a -> s{_dlProjectId = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DatasetsList' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | The maximum number of results to return
dlMaxResults :: Lens' DatasetsList' (Maybe Word32)
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DatasetsList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

instance GoogleAuth DatasetsList' where
        authKey = dlKey . _Just
        authToken = dlOAuthToken . _Just

instance GoogleRequest DatasetsList' where
        type Rs DatasetsList' = DatasetList
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsList'{..}
          = go _dlProjectId _dlAll _dlPageToken _dlMaxResults
              _dlQuotaUser
              (Just _dlPrettyPrint)
              _dlUserIP
              _dlFields
              _dlKey
              _dlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsListResource)
                      r
                      u
