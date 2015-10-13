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
-- Module      : Network.Google.Resource.Genomics.Datasets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a dataset by ID.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsGet@.
module Network.Google.Resource.Genomics.Datasets.Get
    (
    -- * REST Resource
      DatasetsGetResource

    -- * Creating a Request
    , datasetsGet'
    , DatasetsGet'

    -- * Request Lenses
    , dgXgafv
    , dgUploadProtocol
    , dgPp
    , dgAccessToken
    , dgUploadType
    , dgBearerToken
    , dgDatasetId
    , dgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsGet@ method which the
-- 'DatasetsGet'' request conforms to.
type DatasetsGetResource =
     "v1" :>
       "datasets" :>
         Capture "datasetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Dataset

-- | Gets a dataset by ID.
--
-- /See:/ 'datasetsGet'' smart constructor.
data DatasetsGet' = DatasetsGet'
    { _dgXgafv          :: !(Maybe Text)
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgPp             :: !Bool
    , _dgAccessToken    :: !(Maybe Text)
    , _dgUploadType     :: !(Maybe Text)
    , _dgBearerToken    :: !(Maybe Text)
    , _dgDatasetId      :: !Text
    , _dgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgUploadProtocol'
--
-- * 'dgPp'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgBearerToken'
--
-- * 'dgDatasetId'
--
-- * 'dgCallback'
datasetsGet'
    :: Text -- ^ 'datasetId'
    -> DatasetsGet'
datasetsGet' pDgDatasetId_ =
    DatasetsGet'
    { _dgXgafv = Nothing
    , _dgUploadProtocol = Nothing
    , _dgPp = True
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgBearerToken = Nothing
    , _dgDatasetId = pDgDatasetId_
    , _dgCallback = Nothing
    }

-- | V1 error format.
dgXgafv :: Lens' DatasetsGet' (Maybe Text)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DatasetsGet' (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | Pretty-print response.
dgPp :: Lens' DatasetsGet' Bool
dgPp = lens _dgPp (\ s a -> s{_dgPp = a})

-- | OAuth access token.
dgAccessToken :: Lens' DatasetsGet' (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DatasetsGet' (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | OAuth bearer token.
dgBearerToken :: Lens' DatasetsGet' (Maybe Text)
dgBearerToken
  = lens _dgBearerToken
      (\ s a -> s{_dgBearerToken = a})

-- | The ID of the dataset.
dgDatasetId :: Lens' DatasetsGet' Text
dgDatasetId
  = lens _dgDatasetId (\ s a -> s{_dgDatasetId = a})

-- | JSONP
dgCallback :: Lens' DatasetsGet' (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

instance GoogleRequest DatasetsGet' where
        type Rs DatasetsGet' = Dataset
        requestClient DatasetsGet'{..}
          = go _dgDatasetId _dgXgafv _dgUploadProtocol
              (Just _dgPp)
              _dgAccessToken
              _dgUploadType
              _dgBearerToken
              _dgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DatasetsGetResource)
                      mempty
