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
-- Module      : Network.Google.Resource.Genomics.DataSets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists datasets within a project. For the definitions of datasets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.datasets.list@.
module Network.Google.Resource.Genomics.DataSets.List
    (
    -- * REST Resource
      DataSetsListResource

    -- * Creating a Request
    , dataSetsList
    , DataSetsList

    -- * Request Lenses
    , dslXgafv
    , dslUploadProtocol
    , dslPp
    , dslAccessToken
    , dslUploadType
    , dslBearerToken
    , dslPageToken
    , dslProjectId
    , dslPageSize
    , dslCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.list@ method which the
-- 'DataSetsList' request conforms to.
type DataSetsListResource =
     "v1" :>
       "datasets" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListDataSetsResponse

-- | Lists datasets within a project. For the definitions of datasets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'dataSetsList' smart constructor.
data DataSetsList = DataSetsList'
    { _dslXgafv          :: !(Maybe Xgafv)
    , _dslUploadProtocol :: !(Maybe Text)
    , _dslPp             :: !Bool
    , _dslAccessToken    :: !(Maybe Text)
    , _dslUploadType     :: !(Maybe Text)
    , _dslBearerToken    :: !(Maybe Text)
    , _dslPageToken      :: !(Maybe Text)
    , _dslProjectId      :: !(Maybe Text)
    , _dslPageSize       :: !(Maybe (Textual Int32))
    , _dslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslXgafv'
--
-- * 'dslUploadProtocol'
--
-- * 'dslPp'
--
-- * 'dslAccessToken'
--
-- * 'dslUploadType'
--
-- * 'dslBearerToken'
--
-- * 'dslPageToken'
--
-- * 'dslProjectId'
--
-- * 'dslPageSize'
--
-- * 'dslCallback'
dataSetsList
    :: DataSetsList
dataSetsList =
    DataSetsList'
    { _dslXgafv = Nothing
    , _dslUploadProtocol = Nothing
    , _dslPp = True
    , _dslAccessToken = Nothing
    , _dslUploadType = Nothing
    , _dslBearerToken = Nothing
    , _dslPageToken = Nothing
    , _dslProjectId = Nothing
    , _dslPageSize = Nothing
    , _dslCallback = Nothing
    }

-- | V1 error format.
dslXgafv :: Lens' DataSetsList (Maybe Xgafv)
dslXgafv = lens _dslXgafv (\ s a -> s{_dslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dslUploadProtocol :: Lens' DataSetsList (Maybe Text)
dslUploadProtocol
  = lens _dslUploadProtocol
      (\ s a -> s{_dslUploadProtocol = a})

-- | Pretty-print response.
dslPp :: Lens' DataSetsList Bool
dslPp = lens _dslPp (\ s a -> s{_dslPp = a})

-- | OAuth access token.
dslAccessToken :: Lens' DataSetsList (Maybe Text)
dslAccessToken
  = lens _dslAccessToken
      (\ s a -> s{_dslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dslUploadType :: Lens' DataSetsList (Maybe Text)
dslUploadType
  = lens _dslUploadType
      (\ s a -> s{_dslUploadType = a})

-- | OAuth bearer token.
dslBearerToken :: Lens' DataSetsList (Maybe Text)
dslBearerToken
  = lens _dslBearerToken
      (\ s a -> s{_dslBearerToken = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
dslPageToken :: Lens' DataSetsList (Maybe Text)
dslPageToken
  = lens _dslPageToken (\ s a -> s{_dslPageToken = a})

-- | Required. The Google Cloud project ID to list datasets for.
dslProjectId :: Lens' DataSetsList (Maybe Text)
dslProjectId
  = lens _dslProjectId (\ s a -> s{_dslProjectId = a})

-- | The maximum number of results to return in a single page. If
-- unspecified, defaults to 50. The maximum value is 1024.
dslPageSize :: Lens' DataSetsList (Maybe Int32)
dslPageSize
  = lens _dslPageSize (\ s a -> s{_dslPageSize = a}) .
      mapping _Coerce

-- | JSONP
dslCallback :: Lens' DataSetsList (Maybe Text)
dslCallback
  = lens _dslCallback (\ s a -> s{_dslCallback = a})

instance GoogleRequest DataSetsList where
        type Rs DataSetsList = ListDataSetsResponse
        type Scopes DataSetsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient DataSetsList'{..}
          = go _dslXgafv _dslUploadProtocol (Just _dslPp)
              _dslAccessToken
              _dslUploadType
              _dslBearerToken
              _dslPageToken
              _dslProjectId
              _dslPageSize
              _dslCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DataSetsListResource)
                      mempty
