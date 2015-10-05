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
-- Module      : Network.Google.Resource.Genomics.Datasets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists datasets within a project.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsDatasetsList@.
module Network.Google.Resource.Genomics.Datasets.List
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
    , dlProjectNumber
    , dlKey
    , dlPageToken
    , dlOAuthToken
    , dlPageSize
    , dlFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsList@ which the
-- 'DatasetsList'' request conforms to.
type DatasetsListResource =
     "datasets" :>
       QueryParam "projectNumber" Int64 :>
         QueryParam "pageToken" Text :>
           QueryParam "pageSize" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListDatasetsResponse

-- | Lists datasets within a project.
--
-- /See:/ 'datasetsList'' smart constructor.
data DatasetsList' = DatasetsList'
    { _dlQuotaUser     :: !(Maybe Text)
    , _dlPrettyPrint   :: !Bool
    , _dlUserIP        :: !(Maybe Text)
    , _dlProjectNumber :: !(Maybe Int64)
    , _dlKey           :: !(Maybe Key)
    , _dlPageToken     :: !(Maybe Text)
    , _dlOAuthToken    :: !(Maybe OAuthToken)
    , _dlPageSize      :: !(Maybe Int32)
    , _dlFields        :: !(Maybe Text)
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
-- * 'dlProjectNumber'
--
-- * 'dlKey'
--
-- * 'dlPageToken'
--
-- * 'dlOAuthToken'
--
-- * 'dlPageSize'
--
-- * 'dlFields'
datasetsList'
    :: DatasetsList'
datasetsList' =
    DatasetsList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlUserIP = Nothing
    , _dlProjectNumber = Nothing
    , _dlKey = Nothing
    , _dlPageToken = Nothing
    , _dlOAuthToken = Nothing
    , _dlPageSize = Nothing
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

-- | Required. The project to list datasets for.
dlProjectNumber :: Lens' DatasetsList' (Maybe Int64)
dlProjectNumber
  = lens _dlProjectNumber
      (\ s a -> s{_dlProjectNumber = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DatasetsList' (Maybe Key)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
dlPageToken :: Lens' DatasetsList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DatasetsList' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | The maximum number of results returned by this request. If unspecified,
-- defaults to 50.
dlPageSize :: Lens' DatasetsList' (Maybe Int32)
dlPageSize
  = lens _dlPageSize (\ s a -> s{_dlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DatasetsList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

instance GoogleAuth DatasetsList' where
        authKey = dlKey . _Just
        authToken = dlOAuthToken . _Just

instance GoogleRequest DatasetsList' where
        type Rs DatasetsList' = ListDatasetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsList'{..}
          = go _dlProjectNumber _dlPageToken _dlPageSize
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
