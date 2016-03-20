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
-- Module      : Network.Google.Resource.Genomics.Variants.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of variants matching the criteria. For the definitions of
-- variants and other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchVariants](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L126).
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variants.search@.
module Network.Google.Resource.Genomics.Variants.Search
    (
    -- * REST Resource
      VariantsSearchResource

    -- * Creating a Request
    , variantsSearch
    , VariantsSearch

    -- * Request Lenses
    , vsXgafv
    , vsUploadProtocol
    , vsPp
    , vsAccessToken
    , vsUploadType
    , vsPayload
    , vsBearerToken
    , vsCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.search@ method which the
-- 'VariantsSearch' request conforms to.
type VariantsSearchResource =
     "v1" :>
       "variants" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchVariantsRequest :>
                             Post '[JSON] SearchVariantsResponse

-- | Gets a list of variants matching the criteria. For the definitions of
-- variants and other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchVariants](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L126).
--
-- /See:/ 'variantsSearch' smart constructor.
data VariantsSearch = VariantsSearch
    { _vsXgafv          :: !(Maybe Text)
    , _vsUploadProtocol :: !(Maybe Text)
    , _vsPp             :: !Bool
    , _vsAccessToken    :: !(Maybe Text)
    , _vsUploadType     :: !(Maybe Text)
    , _vsPayload        :: !SearchVariantsRequest
    , _vsBearerToken    :: !(Maybe Text)
    , _vsCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsXgafv'
--
-- * 'vsUploadProtocol'
--
-- * 'vsPp'
--
-- * 'vsAccessToken'
--
-- * 'vsUploadType'
--
-- * 'vsPayload'
--
-- * 'vsBearerToken'
--
-- * 'vsCallback'
variantsSearch
    :: SearchVariantsRequest -- ^ 'vsPayload'
    -> VariantsSearch
variantsSearch pVsPayload_ =
    VariantsSearch
    { _vsXgafv = Nothing
    , _vsUploadProtocol = Nothing
    , _vsPp = True
    , _vsAccessToken = Nothing
    , _vsUploadType = Nothing
    , _vsPayload = pVsPayload_
    , _vsBearerToken = Nothing
    , _vsCallback = Nothing
    }

-- | V1 error format.
vsXgafv :: Lens' VariantsSearch (Maybe Text)
vsXgafv = lens _vsXgafv (\ s a -> s{_vsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vsUploadProtocol :: Lens' VariantsSearch (Maybe Text)
vsUploadProtocol
  = lens _vsUploadProtocol
      (\ s a -> s{_vsUploadProtocol = a})

-- | Pretty-print response.
vsPp :: Lens' VariantsSearch Bool
vsPp = lens _vsPp (\ s a -> s{_vsPp = a})

-- | OAuth access token.
vsAccessToken :: Lens' VariantsSearch (Maybe Text)
vsAccessToken
  = lens _vsAccessToken
      (\ s a -> s{_vsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vsUploadType :: Lens' VariantsSearch (Maybe Text)
vsUploadType
  = lens _vsUploadType (\ s a -> s{_vsUploadType = a})

-- | Multipart request metadata.
vsPayload :: Lens' VariantsSearch SearchVariantsRequest
vsPayload
  = lens _vsPayload (\ s a -> s{_vsPayload = a})

-- | OAuth bearer token.
vsBearerToken :: Lens' VariantsSearch (Maybe Text)
vsBearerToken
  = lens _vsBearerToken
      (\ s a -> s{_vsBearerToken = a})

-- | JSONP
vsCallback :: Lens' VariantsSearch (Maybe Text)
vsCallback
  = lens _vsCallback (\ s a -> s{_vsCallback = a})

instance GoogleRequest VariantsSearch where
        type Rs VariantsSearch = SearchVariantsResponse
        requestClient VariantsSearch{..}
          = go _vsXgafv _vsUploadProtocol (Just _vsPp)
              _vsAccessToken
              _vsUploadType
              _vsBearerToken
              _vsCallback
              (Just AltJSON)
              _vsPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsSearchResource)
                      mempty
