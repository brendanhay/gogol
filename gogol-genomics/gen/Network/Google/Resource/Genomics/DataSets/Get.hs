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
-- Module      : Network.Google.Resource.Genomics.DataSets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a dataset by ID.
--
-- /See:/ < Genomics API Reference> for @genomics.datasets.get@.
module Network.Google.Resource.Genomics.DataSets.Get
    (
    -- * REST Resource
      DataSetsGetResource

    -- * Creating a Request
    , dataSetsGet
    , DataSetsGet

    -- * Request Lenses
    , dsgXgafv
    , dsgUploadProtocol
    , dsgPp
    , dsgAccessToken
    , dsgUploadType
    , dsgBearerToken
    , dsgDataSetId
    , dsgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.get@ method which the
-- 'DataSetsGet' request conforms to.
type DataSetsGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] DataSet

-- | Gets a dataset by ID.
--
-- /See:/ 'dataSetsGet' smart constructor.
data DataSetsGet = DataSetsGet
    { _dsgXgafv          :: !(Maybe Text)
    , _dsgUploadProtocol :: !(Maybe Text)
    , _dsgPp             :: !Bool
    , _dsgAccessToken    :: !(Maybe Text)
    , _dsgUploadType     :: !(Maybe Text)
    , _dsgBearerToken    :: !(Maybe Text)
    , _dsgDataSetId      :: !Text
    , _dsgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgXgafv'
--
-- * 'dsgUploadProtocol'
--
-- * 'dsgPp'
--
-- * 'dsgAccessToken'
--
-- * 'dsgUploadType'
--
-- * 'dsgBearerToken'
--
-- * 'dsgDataSetId'
--
-- * 'dsgCallback'
dataSetsGet
    :: Text -- ^ 'dsgDataSetId'
    -> DataSetsGet
dataSetsGet pDsgDataSetId_ =
    DataSetsGet
    { _dsgXgafv = Nothing
    , _dsgUploadProtocol = Nothing
    , _dsgPp = True
    , _dsgAccessToken = Nothing
    , _dsgUploadType = Nothing
    , _dsgBearerToken = Nothing
    , _dsgDataSetId = pDsgDataSetId_
    , _dsgCallback = Nothing
    }

-- | V1 error format.
dsgXgafv :: Lens' DataSetsGet (Maybe Text)
dsgXgafv = lens _dsgXgafv (\ s a -> s{_dsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsgUploadProtocol :: Lens' DataSetsGet (Maybe Text)
dsgUploadProtocol
  = lens _dsgUploadProtocol
      (\ s a -> s{_dsgUploadProtocol = a})

-- | Pretty-print response.
dsgPp :: Lens' DataSetsGet Bool
dsgPp = lens _dsgPp (\ s a -> s{_dsgPp = a})

-- | OAuth access token.
dsgAccessToken :: Lens' DataSetsGet (Maybe Text)
dsgAccessToken
  = lens _dsgAccessToken
      (\ s a -> s{_dsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsgUploadType :: Lens' DataSetsGet (Maybe Text)
dsgUploadType
  = lens _dsgUploadType
      (\ s a -> s{_dsgUploadType = a})

-- | OAuth bearer token.
dsgBearerToken :: Lens' DataSetsGet (Maybe Text)
dsgBearerToken
  = lens _dsgBearerToken
      (\ s a -> s{_dsgBearerToken = a})

-- | The ID of the dataset.
dsgDataSetId :: Lens' DataSetsGet Text
dsgDataSetId
  = lens _dsgDataSetId (\ s a -> s{_dsgDataSetId = a})

-- | JSONP
dsgCallback :: Lens' DataSetsGet (Maybe Text)
dsgCallback
  = lens _dsgCallback (\ s a -> s{_dsgCallback = a})

instance GoogleRequest DataSetsGet where
        type Rs DataSetsGet = DataSet
        requestClient DataSetsGet{..}
          = go _dsgDataSetId _dsgXgafv _dsgUploadProtocol
              (Just _dsgPp)
              _dsgAccessToken
              _dsgUploadType
              _dsgBearerToken
              _dsgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DataSetsGetResource)
                      mempty
