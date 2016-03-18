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
-- Module      : Network.Google.Resource.Genomics.DataSets.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a dataset by restoring a dataset which was deleted via this
-- API. For the definitions of datasets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This operation is only possible for a week after the deletion occurred.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.datasets.undelete@.
module Network.Google.Resource.Genomics.DataSets.Undelete
    (
    -- * REST Resource
      DataSetsUndeleteResource

    -- * Creating a Request
    , dataSetsUndelete
    , DataSetsUndelete

    -- * Request Lenses
    , dsuXgafv
    , dsuUploadProtocol
    , dsuPp
    , dsuAccessToken
    , dsuUploadType
    , dsuPayload
    , dsuBearerToken
    , dsuDataSetId
    , dsuCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.undelete@ method which the
-- 'DataSetsUndelete' request conforms to.
type DataSetsUndeleteResource =
     "v1" :>
       "datasets" :>
         CaptureMode "datasetId" "undelete" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UndeleteDataSetRequest :>
                             Post '[JSON] DataSet

-- | Undeletes a dataset by restoring a dataset which was deleted via this
-- API. For the definitions of datasets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This operation is only possible for a week after the deletion occurred.
--
-- /See:/ 'dataSetsUndelete' smart constructor.
data DataSetsUndelete = DataSetsUndelete
    { _dsuXgafv          :: !(Maybe Text)
    , _dsuUploadProtocol :: !(Maybe Text)
    , _dsuPp             :: !Bool
    , _dsuAccessToken    :: !(Maybe Text)
    , _dsuUploadType     :: !(Maybe Text)
    , _dsuPayload        :: !UndeleteDataSetRequest
    , _dsuBearerToken    :: !(Maybe Text)
    , _dsuDataSetId      :: !Text
    , _dsuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsuXgafv'
--
-- * 'dsuUploadProtocol'
--
-- * 'dsuPp'
--
-- * 'dsuAccessToken'
--
-- * 'dsuUploadType'
--
-- * 'dsuPayload'
--
-- * 'dsuBearerToken'
--
-- * 'dsuDataSetId'
--
-- * 'dsuCallback'
dataSetsUndelete
    :: UndeleteDataSetRequest -- ^ 'dsuPayload'
    -> Text -- ^ 'dsuDataSetId'
    -> DataSetsUndelete
dataSetsUndelete pDsuPayload_ pDsuDataSetId_ =
    DataSetsUndelete
    { _dsuXgafv = Nothing
    , _dsuUploadProtocol = Nothing
    , _dsuPp = True
    , _dsuAccessToken = Nothing
    , _dsuUploadType = Nothing
    , _dsuPayload = pDsuPayload_
    , _dsuBearerToken = Nothing
    , _dsuDataSetId = pDsuDataSetId_
    , _dsuCallback = Nothing
    }

-- | V1 error format.
dsuXgafv :: Lens' DataSetsUndelete (Maybe Text)
dsuXgafv = lens _dsuXgafv (\ s a -> s{_dsuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsuUploadProtocol :: Lens' DataSetsUndelete (Maybe Text)
dsuUploadProtocol
  = lens _dsuUploadProtocol
      (\ s a -> s{_dsuUploadProtocol = a})

-- | Pretty-print response.
dsuPp :: Lens' DataSetsUndelete Bool
dsuPp = lens _dsuPp (\ s a -> s{_dsuPp = a})

-- | OAuth access token.
dsuAccessToken :: Lens' DataSetsUndelete (Maybe Text)
dsuAccessToken
  = lens _dsuAccessToken
      (\ s a -> s{_dsuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsuUploadType :: Lens' DataSetsUndelete (Maybe Text)
dsuUploadType
  = lens _dsuUploadType
      (\ s a -> s{_dsuUploadType = a})

-- | Multipart request metadata.
dsuPayload :: Lens' DataSetsUndelete UndeleteDataSetRequest
dsuPayload
  = lens _dsuPayload (\ s a -> s{_dsuPayload = a})

-- | OAuth bearer token.
dsuBearerToken :: Lens' DataSetsUndelete (Maybe Text)
dsuBearerToken
  = lens _dsuBearerToken
      (\ s a -> s{_dsuBearerToken = a})

-- | The ID of the dataset to be undeleted.
dsuDataSetId :: Lens' DataSetsUndelete Text
dsuDataSetId
  = lens _dsuDataSetId (\ s a -> s{_dsuDataSetId = a})

-- | JSONP
dsuCallback :: Lens' DataSetsUndelete (Maybe Text)
dsuCallback
  = lens _dsuCallback (\ s a -> s{_dsuCallback = a})

instance GoogleRequest DataSetsUndelete where
        type Rs DataSetsUndelete = DataSet
        requestClient DataSetsUndelete{..}
          = go _dsuDataSetId _dsuXgafv _dsuUploadProtocol
              (Just _dsuPp)
              _dsuAccessToken
              _dsuUploadType
              _dsuBearerToken
              _dsuCallback
              (Just AltJSON)
              _dsuPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy DataSetsUndeleteResource)
                      mempty
