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
-- Module      : Network.Google.Resource.Genomics.Datasets.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Undeletes a dataset by restoring a dataset which was deleted via this
-- API. This operation is only possible for a week after the deletion
-- occurred.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsUndelete@.
module Network.Google.Resource.Genomics.Datasets.Undelete
    (
    -- * REST Resource
      DatasetsUndeleteResource

    -- * Creating a Request
    , datasetsUndelete'
    , DatasetsUndelete'

    -- * Request Lenses
    , duXgafv
    , duUploadProtocol
    , duPp
    , duAccessToken
    , duUploadType
    , duPayload
    , duBearerToken
    , duDatasetId
    , duCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsUndelete@ method which the
-- 'DatasetsUndelete'' request conforms to.
type DatasetsUndeleteResource =
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
                           ReqBody '[JSON] UndeleteDatasetRequest :>
                             Post '[JSON] Dataset

-- | Undeletes a dataset by restoring a dataset which was deleted via this
-- API. This operation is only possible for a week after the deletion
-- occurred.
--
-- /See:/ 'datasetsUndelete'' smart constructor.
data DatasetsUndelete' = DatasetsUndelete'
    { _duXgafv          :: !(Maybe Text)
    , _duUploadProtocol :: !(Maybe Text)
    , _duPp             :: !Bool
    , _duAccessToken    :: !(Maybe Text)
    , _duUploadType     :: !(Maybe Text)
    , _duPayload        :: !UndeleteDatasetRequest
    , _duBearerToken    :: !(Maybe Text)
    , _duDatasetId      :: !Text
    , _duCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duXgafv'
--
-- * 'duUploadProtocol'
--
-- * 'duPp'
--
-- * 'duAccessToken'
--
-- * 'duUploadType'
--
-- * 'duPayload'
--
-- * 'duBearerToken'
--
-- * 'duDatasetId'
--
-- * 'duCallback'
datasetsUndelete'
    :: UndeleteDatasetRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsUndelete'
datasetsUndelete' pDuPayload_ pDuDatasetId_ =
    DatasetsUndelete'
    { _duXgafv = Nothing
    , _duUploadProtocol = Nothing
    , _duPp = True
    , _duAccessToken = Nothing
    , _duUploadType = Nothing
    , _duPayload = pDuPayload_
    , _duBearerToken = Nothing
    , _duDatasetId = pDuDatasetId_
    , _duCallback = Nothing
    }

-- | V1 error format.
duXgafv :: Lens' DatasetsUndelete' (Maybe Text)
duXgafv = lens _duXgafv (\ s a -> s{_duXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
duUploadProtocol :: Lens' DatasetsUndelete' (Maybe Text)
duUploadProtocol
  = lens _duUploadProtocol
      (\ s a -> s{_duUploadProtocol = a})

-- | Pretty-print response.
duPp :: Lens' DatasetsUndelete' Bool
duPp = lens _duPp (\ s a -> s{_duPp = a})

-- | OAuth access token.
duAccessToken :: Lens' DatasetsUndelete' (Maybe Text)
duAccessToken
  = lens _duAccessToken
      (\ s a -> s{_duAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
duUploadType :: Lens' DatasetsUndelete' (Maybe Text)
duUploadType
  = lens _duUploadType (\ s a -> s{_duUploadType = a})

-- | Multipart request metadata.
duPayload :: Lens' DatasetsUndelete' UndeleteDatasetRequest
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | OAuth bearer token.
duBearerToken :: Lens' DatasetsUndelete' (Maybe Text)
duBearerToken
  = lens _duBearerToken
      (\ s a -> s{_duBearerToken = a})

-- | The ID of the dataset to be undeleted.
duDatasetId :: Lens' DatasetsUndelete' Text
duDatasetId
  = lens _duDatasetId (\ s a -> s{_duDatasetId = a})

-- | JSONP
duCallback :: Lens' DatasetsUndelete' (Maybe Text)
duCallback
  = lens _duCallback (\ s a -> s{_duCallback = a})

instance GoogleRequest DatasetsUndelete' where
        type Rs DatasetsUndelete' = Dataset
        requestClient DatasetsUndelete'{..}
          = go _duDatasetId _duXgafv _duUploadProtocol
              (Just _duPp)
              _duAccessToken
              _duUploadType
              _duBearerToken
              _duCallback
              (Just AltJSON)
              _duPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy DatasetsUndeleteResource)
                      mempty
