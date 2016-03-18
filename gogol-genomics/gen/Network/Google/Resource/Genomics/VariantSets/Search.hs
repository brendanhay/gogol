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
-- Module      : Network.Google.Resource.Genomics.VariantSets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all variant sets matching search criteria. For the
-- definitions of variant sets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchVariantSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L49).
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variantsets.search@.
module Network.Google.Resource.Genomics.VariantSets.Search
    (
    -- * REST Resource
      VariantSetsSearchResource

    -- * Creating a Request
    , variantSetsSearch
    , VariantSetsSearch

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
-- 'VariantSetsSearch' request conforms to.
type VariantSetsSearchResource =
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

-- | Returns a list of all variant sets matching search criteria. For the
-- definitions of variant sets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchVariantSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L49).
--
-- /See:/ 'variantSetsSearch' smart constructor.
data VariantSetsSearch = VariantSetsSearch
    { _vssXgafv          :: !(Maybe Text)
    , _vssUploadProtocol :: !(Maybe Text)
    , _vssPp             :: !Bool
    , _vssAccessToken    :: !(Maybe Text)
    , _vssUploadType     :: !(Maybe Text)
    , _vssPayload        :: !SearchVariantSetsRequest
    , _vssBearerToken    :: !(Maybe Text)
    , _vssCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSetsSearch' with the minimum fields required to make a request.
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
variantSetsSearch
    :: SearchVariantSetsRequest -- ^ 'vssPayload'
    -> VariantSetsSearch
variantSetsSearch pVssPayload_ =
    VariantSetsSearch
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
vssXgafv :: Lens' VariantSetsSearch (Maybe Text)
vssXgafv = lens _vssXgafv (\ s a -> s{_vssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vssUploadProtocol :: Lens' VariantSetsSearch (Maybe Text)
vssUploadProtocol
  = lens _vssUploadProtocol
      (\ s a -> s{_vssUploadProtocol = a})

-- | Pretty-print response.
vssPp :: Lens' VariantSetsSearch Bool
vssPp = lens _vssPp (\ s a -> s{_vssPp = a})

-- | OAuth access token.
vssAccessToken :: Lens' VariantSetsSearch (Maybe Text)
vssAccessToken
  = lens _vssAccessToken
      (\ s a -> s{_vssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vssUploadType :: Lens' VariantSetsSearch (Maybe Text)
vssUploadType
  = lens _vssUploadType
      (\ s a -> s{_vssUploadType = a})

-- | Multipart request metadata.
vssPayload :: Lens' VariantSetsSearch SearchVariantSetsRequest
vssPayload
  = lens _vssPayload (\ s a -> s{_vssPayload = a})

-- | OAuth bearer token.
vssBearerToken :: Lens' VariantSetsSearch (Maybe Text)
vssBearerToken
  = lens _vssBearerToken
      (\ s a -> s{_vssBearerToken = a})

-- | JSONP
vssCallback :: Lens' VariantSetsSearch (Maybe Text)
vssCallback
  = lens _vssCallback (\ s a -> s{_vssCallback = a})

instance GoogleRequest VariantSetsSearch where
        type Rs VariantSetsSearch = SearchVariantSetsResponse
        requestClient VariantSetsSearch{..}
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
                      (Proxy :: Proxy VariantSetsSearchResource)
                      mempty
