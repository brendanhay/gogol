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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all variant sets matching search criteria. Implements
-- [GlobalAllianceApi.searchVariantSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L49).
--
-- /See:/ < Genomics API Reference> for @genomics.variantsets.search@.
module Network.Google.Resource.Genomics.Variantsets.Search
    (
    -- * REST Resource
      VariantsetsSearchResource

    -- * Creating a Request
    , variantsetsSearch
    , VariantsetsSearch

    -- * Request Lenses
    , vssXgafv
    , vssUploadProtocol
    , vssPp
    , vssAccessToken
    , vssUploadType
    , vssPayload
    , vssBearerToken
    , vssCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.search@ method which the
-- 'VariantsetsSearch' request conforms to.
type VariantsetsSearchResource =
     "v1" :>
       "variantsets" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchVariantSetsRequest :>
                             Post '[JSON] SearchVariantSetsResponse

-- | Returns a list of all variant sets matching search criteria. Implements
-- [GlobalAllianceApi.searchVariantSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L49).
--
-- /See:/ 'variantsetsSearch' smart constructor.
data VariantsetsSearch = VariantsetsSearch
    { _vssXgafv          :: !(Maybe Text)
    , _vssUploadProtocol :: !(Maybe Text)
    , _vssPp             :: !Bool
    , _vssAccessToken    :: !(Maybe Text)
    , _vssUploadType     :: !(Maybe Text)
    , _vssPayload        :: !SearchVariantSetsRequest
    , _vssBearerToken    :: !(Maybe Text)
    , _vssCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vssXgafv'
--
-- * 'vssUploadProtocol'
--
-- * 'vssPp'
--
-- * 'vssAccessToken'
--
-- * 'vssUploadType'
--
-- * 'vssPayload'
--
-- * 'vssBearerToken'
--
-- * 'vssCallback'
variantsetsSearch
    :: SearchVariantSetsRequest -- ^ 'vssPayload'
    -> VariantsetsSearch
variantsetsSearch pVssPayload_ =
    VariantsetsSearch
    { _vssXgafv = Nothing
    , _vssUploadProtocol = Nothing
    , _vssPp = True
    , _vssAccessToken = Nothing
    , _vssUploadType = Nothing
    , _vssPayload = pVssPayload_
    , _vssBearerToken = Nothing
    , _vssCallback = Nothing
    }

-- | V1 error format.
vssXgafv :: Lens' VariantsetsSearch (Maybe Text)
vssXgafv = lens _vssXgafv (\ s a -> s{_vssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vssUploadProtocol :: Lens' VariantsetsSearch (Maybe Text)
vssUploadProtocol
  = lens _vssUploadProtocol
      (\ s a -> s{_vssUploadProtocol = a})

-- | Pretty-print response.
vssPp :: Lens' VariantsetsSearch Bool
vssPp = lens _vssPp (\ s a -> s{_vssPp = a})

-- | OAuth access token.
vssAccessToken :: Lens' VariantsetsSearch (Maybe Text)
vssAccessToken
  = lens _vssAccessToken
      (\ s a -> s{_vssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vssUploadType :: Lens' VariantsetsSearch (Maybe Text)
vssUploadType
  = lens _vssUploadType
      (\ s a -> s{_vssUploadType = a})

-- | Multipart request metadata.
vssPayload :: Lens' VariantsetsSearch SearchVariantSetsRequest
vssPayload
  = lens _vssPayload (\ s a -> s{_vssPayload = a})

-- | OAuth bearer token.
vssBearerToken :: Lens' VariantsetsSearch (Maybe Text)
vssBearerToken
  = lens _vssBearerToken
      (\ s a -> s{_vssBearerToken = a})

-- | JSONP
vssCallback :: Lens' VariantsetsSearch (Maybe Text)
vssCallback
  = lens _vssCallback (\ s a -> s{_vssCallback = a})

instance GoogleRequest VariantsetsSearch where
        type Rs VariantsetsSearch = SearchVariantSetsResponse
        requestClient VariantsetsSearch{..}
          = go _vssXgafv _vssUploadProtocol (Just _vssPp)
              _vssAccessToken
              _vssUploadType
              _vssBearerToken
              _vssCallback
              (Just AltJSON)
              _vssPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantsetsSearchResource)
                      mempty
