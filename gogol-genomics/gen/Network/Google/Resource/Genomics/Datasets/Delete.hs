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
-- Module      : Network.Google.Resource.Genomics.Datasets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a dataset.
--
-- /See:/ < Genomics API Reference> for @genomics.datasets.delete@.
module Network.Google.Resource.Genomics.Datasets.Delete
    (
    -- * REST Resource
      DatasetsDeleteResource

    -- * Creating a Request
    , datasetsDelete'
    , DatasetsDelete'

    -- * Request Lenses
    , ddXgafv
    , ddUploadProtocol
    , ddPp
    , ddAccessToken
    , ddUploadType
    , ddBearerToken
    , ddDatasetId
    , ddCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.delete@ method which the
-- 'DatasetsDelete'' request conforms to.
type DatasetsDeleteResource =
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

-- | Deletes a dataset.
--
-- /See:/ 'datasetsDelete'' smart constructor.
data DatasetsDelete' = DatasetsDelete'
    { _ddXgafv          :: !(Maybe Text)
    , _ddUploadProtocol :: !(Maybe Text)
    , _ddPp             :: !Bool
    , _ddAccessToken    :: !(Maybe Text)
    , _ddUploadType     :: !(Maybe Text)
    , _ddBearerToken    :: !(Maybe Text)
    , _ddDatasetId      :: !Text
    , _ddCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddXgafv'
--
-- * 'ddUploadProtocol'
--
-- * 'ddPp'
--
-- * 'ddAccessToken'
--
-- * 'ddUploadType'
--
-- * 'ddBearerToken'
--
-- * 'ddDatasetId'
--
-- * 'ddCallback'
datasetsDelete'
    :: Text -- ^ 'ddDatasetId'
    -> DatasetsDelete'
datasetsDelete' pDdDatasetId_ =
    DatasetsDelete'
    { _ddXgafv = Nothing
    , _ddUploadProtocol = Nothing
    , _ddPp = True
    , _ddAccessToken = Nothing
    , _ddUploadType = Nothing
    , _ddBearerToken = Nothing
    , _ddDatasetId = pDdDatasetId_
    , _ddCallback = Nothing
    }

-- | V1 error format.
ddXgafv :: Lens' DatasetsDelete' (Maybe Text)
ddXgafv = lens _ddXgafv (\ s a -> s{_ddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddUploadProtocol :: Lens' DatasetsDelete' (Maybe Text)
ddUploadProtocol
  = lens _ddUploadProtocol
      (\ s a -> s{_ddUploadProtocol = a})

-- | Pretty-print response.
ddPp :: Lens' DatasetsDelete' Bool
ddPp = lens _ddPp (\ s a -> s{_ddPp = a})

-- | OAuth access token.
ddAccessToken :: Lens' DatasetsDelete' (Maybe Text)
ddAccessToken
  = lens _ddAccessToken
      (\ s a -> s{_ddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddUploadType :: Lens' DatasetsDelete' (Maybe Text)
ddUploadType
  = lens _ddUploadType (\ s a -> s{_ddUploadType = a})

-- | OAuth bearer token.
ddBearerToken :: Lens' DatasetsDelete' (Maybe Text)
ddBearerToken
  = lens _ddBearerToken
      (\ s a -> s{_ddBearerToken = a})

-- | The ID of the dataset to be deleted.
ddDatasetId :: Lens' DatasetsDelete' Text
ddDatasetId
  = lens _ddDatasetId (\ s a -> s{_ddDatasetId = a})

-- | JSONP
ddCallback :: Lens' DatasetsDelete' (Maybe Text)
ddCallback
  = lens _ddCallback (\ s a -> s{_ddCallback = a})

instance GoogleRequest DatasetsDelete' where
        type Rs DatasetsDelete' = Empty
        requestClient DatasetsDelete'{..}
          = go _ddDatasetId _ddXgafv _ddUploadProtocol
              (Just _ddPp)
              _ddAccessToken
              _ddUploadType
              _ddBearerToken
              _ddCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DatasetsDeleteResource)
                      mempty
