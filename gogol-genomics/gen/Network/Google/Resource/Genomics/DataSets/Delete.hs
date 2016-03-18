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
-- Module      : Network.Google.Resource.Genomics.DataSets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a dataset. For the definitions of datasets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.datasets.delete@.
module Network.Google.Resource.Genomics.DataSets.Delete
    (
    -- * REST Resource
      DataSetsDeleteResource

    -- * Creating a Request
    , dataSetsDelete
    , DataSetsDelete

    -- * Request Lenses
    , dsdXgafv
    , dsdUploadProtocol
    , dsdPp
    , dsdAccessToken
    , dsdUploadType
    , dsdBearerToken
    , dsdDataSetId
    , dsdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.delete@ method which the
-- 'DataSetsDelete' request conforms to.
type DataSetsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a dataset. For the definitions of datasets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'dataSetsDelete' smart constructor.
data DataSetsDelete = DataSetsDelete
    { _dsdXgafv          :: !(Maybe Text)
    , _dsdUploadProtocol :: !(Maybe Text)
    , _dsdPp             :: !Bool
    , _dsdAccessToken    :: !(Maybe Text)
    , _dsdUploadType     :: !(Maybe Text)
    , _dsdBearerToken    :: !(Maybe Text)
    , _dsdDataSetId      :: !Text
    , _dsdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdXgafv'
--
-- * 'dsdUploadProtocol'
--
-- * 'dsdPp'
--
-- * 'dsdAccessToken'
--
-- * 'dsdUploadType'
--
-- * 'dsdBearerToken'
--
-- * 'dsdDataSetId'
--
-- * 'dsdCallback'
dataSetsDelete
    :: Text -- ^ 'dsdDataSetId'
    -> DataSetsDelete
dataSetsDelete pDsdDataSetId_ =
    DataSetsDelete
    { _dsdXgafv = Nothing
    , _dsdUploadProtocol = Nothing
    , _dsdPp = True
    , _dsdAccessToken = Nothing
    , _dsdUploadType = Nothing
    , _dsdBearerToken = Nothing
    , _dsdDataSetId = pDsdDataSetId_
    , _dsdCallback = Nothing
    }

-- | V1 error format.
dsdXgafv :: Lens' DataSetsDelete (Maybe Text)
dsdXgafv = lens _dsdXgafv (\ s a -> s{_dsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsdUploadProtocol :: Lens' DataSetsDelete (Maybe Text)
dsdUploadProtocol
  = lens _dsdUploadProtocol
      (\ s a -> s{_dsdUploadProtocol = a})

-- | Pretty-print response.
dsdPp :: Lens' DataSetsDelete Bool
dsdPp = lens _dsdPp (\ s a -> s{_dsdPp = a})

-- | OAuth access token.
dsdAccessToken :: Lens' DataSetsDelete (Maybe Text)
dsdAccessToken
  = lens _dsdAccessToken
      (\ s a -> s{_dsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsdUploadType :: Lens' DataSetsDelete (Maybe Text)
dsdUploadType
  = lens _dsdUploadType
      (\ s a -> s{_dsdUploadType = a})

-- | OAuth bearer token.
dsdBearerToken :: Lens' DataSetsDelete (Maybe Text)
dsdBearerToken
  = lens _dsdBearerToken
      (\ s a -> s{_dsdBearerToken = a})

-- | The ID of the dataset to be deleted.
dsdDataSetId :: Lens' DataSetsDelete Text
dsdDataSetId
  = lens _dsdDataSetId (\ s a -> s{_dsdDataSetId = a})

-- | JSONP
dsdCallback :: Lens' DataSetsDelete (Maybe Text)
dsdCallback
  = lens _dsdCallback (\ s a -> s{_dsdCallback = a})

instance GoogleRequest DataSetsDelete where
        type Rs DataSetsDelete = Empty
        requestClient DataSetsDelete{..}
          = go _dsdDataSetId _dsdXgafv _dsdUploadProtocol
              (Just _dsdPp)
              _dsdAccessToken
              _dsdUploadType
              _dsdBearerToken
              _dsdCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DataSetsDeleteResource)
                      mempty
