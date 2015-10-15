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
-- Module      : Network.Google.Resource.Genomics.Datasets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new dataset.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsCreate@.
module Network.Google.Resource.Genomics.Datasets.Create
    (
    -- * REST Resource
      DatasetsCreateResource

    -- * Creating a Request
    , datasetsCreate'
    , DatasetsCreate'

    -- * Request Lenses
    , dcXgafv
    , dcUploadProtocol
    , dcPp
    , dcAccessToken
    , dcUploadType
    , dcPayload
    , dcBearerToken
    , dcCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsCreate@ method which the
-- 'DatasetsCreate'' request conforms to.
type DatasetsCreateResource =
     "v1" :>
       "datasets" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Dataset :> Post '[JSON] Dataset

-- | Creates a new dataset.
--
-- /See:/ 'datasetsCreate'' smart constructor.
data DatasetsCreate' = DatasetsCreate'
    { _dcXgafv          :: !(Maybe Text)
    , _dcUploadProtocol :: !(Maybe Text)
    , _dcPp             :: !Bool
    , _dcAccessToken    :: !(Maybe Text)
    , _dcUploadType     :: !(Maybe Text)
    , _dcPayload        :: !Dataset
    , _dcBearerToken    :: !(Maybe Text)
    , _dcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcXgafv'
--
-- * 'dcUploadProtocol'
--
-- * 'dcPp'
--
-- * 'dcAccessToken'
--
-- * 'dcUploadType'
--
-- * 'dcPayload'
--
-- * 'dcBearerToken'
--
-- * 'dcCallback'
datasetsCreate'
    :: Dataset -- ^ 'payload'
    -> DatasetsCreate'
datasetsCreate' pDcPayload_ =
    DatasetsCreate'
    { _dcXgafv = Nothing
    , _dcUploadProtocol = Nothing
    , _dcPp = True
    , _dcAccessToken = Nothing
    , _dcUploadType = Nothing
    , _dcPayload = pDcPayload_
    , _dcBearerToken = Nothing
    , _dcCallback = Nothing
    }

-- | V1 error format.
dcXgafv :: Lens' DatasetsCreate' (Maybe Text)
dcXgafv = lens _dcXgafv (\ s a -> s{_dcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dcUploadProtocol :: Lens' DatasetsCreate' (Maybe Text)
dcUploadProtocol
  = lens _dcUploadProtocol
      (\ s a -> s{_dcUploadProtocol = a})

-- | Pretty-print response.
dcPp :: Lens' DatasetsCreate' Bool
dcPp = lens _dcPp (\ s a -> s{_dcPp = a})

-- | OAuth access token.
dcAccessToken :: Lens' DatasetsCreate' (Maybe Text)
dcAccessToken
  = lens _dcAccessToken
      (\ s a -> s{_dcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dcUploadType :: Lens' DatasetsCreate' (Maybe Text)
dcUploadType
  = lens _dcUploadType (\ s a -> s{_dcUploadType = a})

-- | Multipart request metadata.
dcPayload :: Lens' DatasetsCreate' Dataset
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

-- | OAuth bearer token.
dcBearerToken :: Lens' DatasetsCreate' (Maybe Text)
dcBearerToken
  = lens _dcBearerToken
      (\ s a -> s{_dcBearerToken = a})

-- | JSONP
dcCallback :: Lens' DatasetsCreate' (Maybe Text)
dcCallback
  = lens _dcCallback (\ s a -> s{_dcCallback = a})

instance GoogleRequest DatasetsCreate' where
        type Rs DatasetsCreate' = Dataset
        requestClient DatasetsCreate'{..}
          = go _dcXgafv _dcUploadProtocol (Just _dcPp)
              _dcAccessToken
              _dcUploadType
              _dcBearerToken
              _dcCallback
              (Just AltJSON)
              _dcPayload
              genomics
          where go
                  = buildClient (Proxy :: Proxy DatasetsCreateResource)
                      mempty
