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
-- Module      : Network.Google.Resource.Genomics.DataSets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a dataset. For the definitions of datasets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.datasets.patch@.
module Network.Google.Resource.Genomics.DataSets.Patch
    (
    -- * REST Resource
      DataSetsPatchResource

    -- * Creating a Request
    , dataSetsPatch
    , DataSetsPatch

    -- * Request Lenses
    , dspXgafv
    , dspUploadProtocol
    , dspUpdateMask
    , dspPp
    , dspAccessToken
    , dspUploadType
    , dspPayload
    , dspBearerToken
    , dspDataSetId
    , dspCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.patch@ method which the
-- 'DataSetsPatch' request conforms to.
type DataSetsPatchResource =
     "v1" :>
       "datasets" :>
         Capture "datasetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] DataSet :> Patch '[JSON] DataSet

-- | Updates a dataset. For the definitions of datasets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This method supports patch semantics.
--
-- /See:/ 'dataSetsPatch' smart constructor.
data DataSetsPatch = DataSetsPatch
    { _dspXgafv          :: !(Maybe Text)
    , _dspUploadProtocol :: !(Maybe Text)
    , _dspUpdateMask     :: !(Maybe Text)
    , _dspPp             :: !Bool
    , _dspAccessToken    :: !(Maybe Text)
    , _dspUploadType     :: !(Maybe Text)
    , _dspPayload        :: !DataSet
    , _dspBearerToken    :: !(Maybe Text)
    , _dspDataSetId      :: !Text
    , _dspCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspXgafv'
--
-- * 'dspUploadProtocol'
--
-- * 'dspUpdateMask'
--
-- * 'dspPp'
--
-- * 'dspAccessToken'
--
-- * 'dspUploadType'
--
-- * 'dspPayload'
--
-- * 'dspBearerToken'
--
-- * 'dspDataSetId'
--
-- * 'dspCallback'
dataSetsPatch
    :: DataSet -- ^ 'dspPayload'
    -> Text -- ^ 'dspDataSetId'
    -> DataSetsPatch
dataSetsPatch pDspPayload_ pDspDataSetId_ =
    DataSetsPatch
    { _dspXgafv = Nothing
    , _dspUploadProtocol = Nothing
    , _dspUpdateMask = Nothing
    , _dspPp = True
    , _dspAccessToken = Nothing
    , _dspUploadType = Nothing
    , _dspPayload = pDspPayload_
    , _dspBearerToken = Nothing
    , _dspDataSetId = pDspDataSetId_
    , _dspCallback = Nothing
    }

-- | V1 error format.
dspXgafv :: Lens' DataSetsPatch (Maybe Text)
dspXgafv = lens _dspXgafv (\ s a -> s{_dspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dspUploadProtocol :: Lens' DataSetsPatch (Maybe Text)
dspUploadProtocol
  = lens _dspUploadProtocol
      (\ s a -> s{_dspUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time, the
-- only mutable field is name. The only acceptable value is \"name\". If
-- unspecified, all mutable fields will be updated.
dspUpdateMask :: Lens' DataSetsPatch (Maybe Text)
dspUpdateMask
  = lens _dspUpdateMask
      (\ s a -> s{_dspUpdateMask = a})

-- | Pretty-print response.
dspPp :: Lens' DataSetsPatch Bool
dspPp = lens _dspPp (\ s a -> s{_dspPp = a})

-- | OAuth access token.
dspAccessToken :: Lens' DataSetsPatch (Maybe Text)
dspAccessToken
  = lens _dspAccessToken
      (\ s a -> s{_dspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dspUploadType :: Lens' DataSetsPatch (Maybe Text)
dspUploadType
  = lens _dspUploadType
      (\ s a -> s{_dspUploadType = a})

-- | Multipart request metadata.
dspPayload :: Lens' DataSetsPatch DataSet
dspPayload
  = lens _dspPayload (\ s a -> s{_dspPayload = a})

-- | OAuth bearer token.
dspBearerToken :: Lens' DataSetsPatch (Maybe Text)
dspBearerToken
  = lens _dspBearerToken
      (\ s a -> s{_dspBearerToken = a})

-- | The ID of the dataset to be updated.
dspDataSetId :: Lens' DataSetsPatch Text
dspDataSetId
  = lens _dspDataSetId (\ s a -> s{_dspDataSetId = a})

-- | JSONP
dspCallback :: Lens' DataSetsPatch (Maybe Text)
dspCallback
  = lens _dspCallback (\ s a -> s{_dspCallback = a})

instance GoogleRequest DataSetsPatch where
        type Rs DataSetsPatch = DataSet
        type Scopes DataSetsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient DataSetsPatch{..}
          = go _dspDataSetId _dspXgafv _dspUploadProtocol
              _dspUpdateMask
              (Just _dspPp)
              _dspAccessToken
              _dspUploadType
              _dspBearerToken
              _dspCallback
              (Just AltJSON)
              _dspPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DataSetsPatchResource)
                      mempty
