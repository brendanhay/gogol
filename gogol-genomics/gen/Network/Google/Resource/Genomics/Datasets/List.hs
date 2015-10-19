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
-- Lists datasets within a project.
--
-- /See:/ < Genomics API Reference> for @genomics.datasets.list@.
module Network.Google.Resource.Genomics.Datasets.List
    (
    -- * REST Resource
      DatasetsListResource

    -- * Creating a Request
    , datasetsList'
    , DatasetsList'

    -- * Request Lenses
    , dlXgafv
    , dlUploadProtocol
    , dlPp
    , dlAccessToken
    , dlUploadType
    , dlBearerToken
    , dlPageToken
    , dlProjectId
    , dlPageSize
    , dlCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.list@ method which the
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
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListDatasetsResponse

-- | Lists datasets within a project.
--
-- /See:/ 'datasetsList'' smart constructor.
data DatasetsList' = DatasetsList'
    { _dlXgafv          :: !(Maybe Text)
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlPp             :: !Bool
    , _dlAccessToken    :: !(Maybe Text)
    , _dlUploadType     :: !(Maybe Text)
    , _dlBearerToken    :: !(Maybe Text)
    , _dlPageToken      :: !(Maybe Text)
    , _dlProjectId      :: !(Maybe Text)
    , _dlPageSize       :: !(Maybe Int32)
    , _dlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
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
-- * 'dlPageToken'
--
-- * 'dlProjectId'
--
-- * 'dlPageSize'
--
-- * 'dlCallback'
datasetsList'
    :: DatasetsList'
datasetsList' =
    DatasetsList'
    { _dlXgafv = Nothing
    , _dlUploadProtocol = Nothing
    , _dlPp = True
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlBearerToken = Nothing
    , _dlPageToken = Nothing
    , _dlProjectId = Nothing
    , _dlPageSize = Nothing
    , _dlCallback = Nothing
    }

-- | V1 error format.
dlXgafv :: Lens' DatasetsList' (Maybe Text)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

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

-- | The maximum number of results returned by this request. If unspecified,
-- defaults to 50. The maximum value is 1024.
dlPageSize :: Lens' DatasetsList' (Maybe Int32)
dlPageSize
  = lens _dlPageSize (\ s a -> s{_dlPageSize = a})

-- | JSONP
dlCallback :: Lens' DatasetsList' (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

instance GoogleRequest DatasetsList' where
        type Rs DatasetsList' = ListDatasetsResponse
        requestClient DatasetsList'{..}
          = go _dlXgafv _dlUploadProtocol (Just _dlPp)
              _dlAccessToken
              _dlUploadType
              _dlBearerToken
              _dlPageToken
              _dlProjectId
              _dlPageSize
              _dlCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DatasetsListResource)
                      mempty
