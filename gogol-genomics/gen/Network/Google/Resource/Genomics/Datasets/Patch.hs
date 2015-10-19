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
-- Module      : Network.Google.Resource.Genomics.Datasets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a dataset. This method supports patch semantics.
--
-- /See:/ < Genomics API Reference> for @genomics.datasets.patch@.
module Network.Google.Resource.Genomics.Datasets.Patch
    (
    -- * REST Resource
      DatasetsPatchResource

    -- * Creating a Request
    , datasetsPatch'
    , DatasetsPatch'

    -- * Request Lenses
    , dpXgafv
    , dpUploadProtocol
    , dpUpdateMask
    , dpPp
    , dpAccessToken
    , dpUploadType
    , dpPayload
    , dpBearerToken
    , dpDatasetId
    , dpCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.patch@ method which the
-- 'DatasetsPatch'' request conforms to.
type DatasetsPatchResource =
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
                             ReqBody '[JSON] Dataset :> Patch '[JSON] Dataset

-- | Updates a dataset. This method supports patch semantics.
--
-- /See:/ 'datasetsPatch'' smart constructor.
data DatasetsPatch' = DatasetsPatch'
    { _dpXgafv          :: !(Maybe Text)
    , _dpUploadProtocol :: !(Maybe Text)
    , _dpUpdateMask     :: !(Maybe Text)
    , _dpPp             :: !Bool
    , _dpAccessToken    :: !(Maybe Text)
    , _dpUploadType     :: !(Maybe Text)
    , _dpPayload        :: !Dataset
    , _dpBearerToken    :: !(Maybe Text)
    , _dpDatasetId      :: !Text
    , _dpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpXgafv'
--
-- * 'dpUploadProtocol'
--
-- * 'dpUpdateMask'
--
-- * 'dpPp'
--
-- * 'dpAccessToken'
--
-- * 'dpUploadType'
--
-- * 'dpPayload'
--
-- * 'dpBearerToken'
--
-- * 'dpDatasetId'
--
-- * 'dpCallback'
datasetsPatch'
    :: Dataset -- ^ 'dpPayload'
    -> Text -- ^ 'dpDatasetId'
    -> DatasetsPatch'
datasetsPatch' pDpPayload_ pDpDatasetId_ =
    DatasetsPatch'
    { _dpXgafv = Nothing
    , _dpUploadProtocol = Nothing
    , _dpUpdateMask = Nothing
    , _dpPp = True
    , _dpAccessToken = Nothing
    , _dpUploadType = Nothing
    , _dpPayload = pDpPayload_
    , _dpBearerToken = Nothing
    , _dpDatasetId = pDpDatasetId_
    , _dpCallback = Nothing
    }

-- | V1 error format.
dpXgafv :: Lens' DatasetsPatch' (Maybe Text)
dpXgafv = lens _dpXgafv (\ s a -> s{_dpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dpUploadProtocol :: Lens' DatasetsPatch' (Maybe Text)
dpUploadProtocol
  = lens _dpUploadProtocol
      (\ s a -> s{_dpUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time, the
-- only mutable field is name. The only acceptable value is \"name\". If
-- unspecified, all mutable fields will be updated.
dpUpdateMask :: Lens' DatasetsPatch' (Maybe Text)
dpUpdateMask
  = lens _dpUpdateMask (\ s a -> s{_dpUpdateMask = a})

-- | Pretty-print response.
dpPp :: Lens' DatasetsPatch' Bool
dpPp = lens _dpPp (\ s a -> s{_dpPp = a})

-- | OAuth access token.
dpAccessToken :: Lens' DatasetsPatch' (Maybe Text)
dpAccessToken
  = lens _dpAccessToken
      (\ s a -> s{_dpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dpUploadType :: Lens' DatasetsPatch' (Maybe Text)
dpUploadType
  = lens _dpUploadType (\ s a -> s{_dpUploadType = a})

-- | Multipart request metadata.
dpPayload :: Lens' DatasetsPatch' Dataset
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | OAuth bearer token.
dpBearerToken :: Lens' DatasetsPatch' (Maybe Text)
dpBearerToken
  = lens _dpBearerToken
      (\ s a -> s{_dpBearerToken = a})

-- | The ID of the dataset to be updated.
dpDatasetId :: Lens' DatasetsPatch' Text
dpDatasetId
  = lens _dpDatasetId (\ s a -> s{_dpDatasetId = a})

-- | JSONP
dpCallback :: Lens' DatasetsPatch' (Maybe Text)
dpCallback
  = lens _dpCallback (\ s a -> s{_dpCallback = a})

instance GoogleRequest DatasetsPatch' where
        type Rs DatasetsPatch' = Dataset
        requestClient DatasetsPatch'{..}
          = go _dpDatasetId _dpXgafv _dpUploadProtocol
              _dpUpdateMask
              (Just _dpPp)
              _dpAccessToken
              _dpUploadType
              _dpBearerToken
              _dpCallback
              (Just AltJSON)
              _dpPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DatasetsPatchResource)
                      mempty
