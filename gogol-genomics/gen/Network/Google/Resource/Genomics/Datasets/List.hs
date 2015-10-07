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
-- Module      : Network.Google.Resource.Genomics.Datasets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists datasets within a project.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsList@.
module Network.Google.Resource.Genomics.Datasets.List
    (
    -- * REST Resource
      DatasetsListResource

    -- * Creating a Request
    , datasetsList'
    , DatasetsList'

    -- * Request Lenses
    , dlXgafv
    , dlQuotaUser
    , dlPrettyPrint
    , dlUploadProtocol
    , dlPp
    , dlAccessToken
    , dlUploadType
    , dlBearerToken
    , dlKey
    , dlPageToken
    , dlProjectId
    , dlOAuthToken
    , dlPageSize
    , dlFields
    , dlCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsList@ method which the
-- 'DatasetsList'' request conforms to.
type DatasetsListResource =
     "v1" :>
       "datasets" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "pageSize" Int32 :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListDatasetsResponse

-- | Lists datasets within a project.
--
-- /See:/ 'datasetsList'' smart constructor.
data DatasetsList' = DatasetsList'
    { _dlXgafv          :: !(Maybe Text)
    , _dlQuotaUser      :: !(Maybe Text)
    , _dlPrettyPrint    :: !Bool
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlPp             :: !Bool
    , _dlAccessToken    :: !(Maybe Text)
    , _dlUploadType     :: !(Maybe Text)
    , _dlBearerToken    :: !(Maybe Text)
    , _dlKey            :: !(Maybe AuthKey)
    , _dlPageToken      :: !(Maybe Text)
    , _dlProjectId      :: !(Maybe Text)
    , _dlOAuthToken     :: !(Maybe OAuthToken)
    , _dlPageSize       :: !(Maybe Int32)
    , _dlFields         :: !(Maybe Text)
    , _dlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlUploadProtocol'
--
-- * 'dlPp'
--
-- * 'dlAccessToken'
--
-- * 'dlUploadType'
--
-- * 'dlBearerToken'
--
-- * 'dlKey'
--
-- * 'dlPageToken'
--
-- * 'dlProjectId'
--
-- * 'dlOAuthToken'
--
-- * 'dlPageSize'
--
-- * 'dlFields'
--
-- * 'dlCallback'
datasetsList'
    :: DatasetsList'
datasetsList' =
    DatasetsList'
    { _dlXgafv = Nothing
    , _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlUploadProtocol = Nothing
    , _dlPp = True
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlBearerToken = Nothing
    , _dlKey = Nothing
    , _dlPageToken = Nothing
    , _dlProjectId = Nothing
    , _dlOAuthToken = Nothing
    , _dlPageSize = Nothing
    , _dlFields = Nothing
    , _dlCallback = Nothing
    }

-- | V1 error format.
dlXgafv :: Lens' DatasetsList' (Maybe Text)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
dlQuotaUser :: Lens' DatasetsList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DatasetsList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlUploadProtocol :: Lens' DatasetsList' (Maybe Text)
dlUploadProtocol
  = lens _dlUploadProtocol
      (\ s a -> s{_dlUploadProtocol = a})

-- | Pretty-print response.
dlPp :: Lens' DatasetsList' Bool
dlPp = lens _dlPp (\ s a -> s{_dlPp = a})

-- | OAuth access token.
dlAccessToken :: Lens' DatasetsList' (Maybe Text)
dlAccessToken
  = lens _dlAccessToken
      (\ s a -> s{_dlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlUploadType :: Lens' DatasetsList' (Maybe Text)
dlUploadType
  = lens _dlUploadType (\ s a -> s{_dlUploadType = a})

-- | OAuth bearer token.
dlBearerToken :: Lens' DatasetsList' (Maybe Text)
dlBearerToken
  = lens _dlBearerToken
      (\ s a -> s{_dlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DatasetsList' (Maybe AuthKey)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
dlPageToken :: Lens' DatasetsList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | Required. The project to list datasets for.
dlProjectId :: Lens' DatasetsList' (Maybe Text)
dlProjectId
  = lens _dlProjectId (\ s a -> s{_dlProjectId = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DatasetsList' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | The maximum number of results returned by this request. If unspecified,
-- defaults to 50. The maximum value is 1024.
dlPageSize :: Lens' DatasetsList' (Maybe Int32)
dlPageSize
  = lens _dlPageSize (\ s a -> s{_dlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DatasetsList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

-- | JSONP
dlCallback :: Lens' DatasetsList' (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

instance GoogleAuth DatasetsList' where
        _AuthKey = dlKey . _Just
        _AuthToken = dlOAuthToken . _Just

instance GoogleRequest DatasetsList' where
        type Rs DatasetsList' = ListDatasetsResponse
        request = requestWith genomicsRequest
        requestWith rq DatasetsList'{..}
          = go _dlXgafv _dlUploadProtocol (Just _dlPp)
              _dlAccessToken
              _dlUploadType
              _dlBearerToken
              _dlPageToken
              _dlProjectId
              _dlPageSize
              _dlCallback
              _dlQuotaUser
              (Just _dlPrettyPrint)
              _dlFields
              _dlKey
              _dlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DatasetsListResource)
                      rq
