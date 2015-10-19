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
    , variantsetsSearch'
    , VariantsetsSearch'

    -- * Request Lenses
    , vXgafv
    , vUploadProtocol
    , vPp
    , vAccessToken
    , vUploadType
    , vPayload
    , vBearerToken
    , vCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.search@ method which the
-- 'VariantsetsSearch'' request conforms to.
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
-- /See:/ 'variantsetsSearch'' smart constructor.
data VariantsetsSearch' = VariantsetsSearch'
    { _vXgafv          :: !(Maybe Text)
    , _vUploadProtocol :: !(Maybe Text)
    , _vPp             :: !Bool
    , _vAccessToken    :: !(Maybe Text)
    , _vUploadType     :: !(Maybe Text)
    , _vPayload        :: !SearchVariantSetsRequest
    , _vBearerToken    :: !(Maybe Text)
    , _vCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vXgafv'
--
-- * 'vUploadProtocol'
--
-- * 'vPp'
--
-- * 'vAccessToken'
--
-- * 'vUploadType'
--
-- * 'vPayload'
--
-- * 'vBearerToken'
--
-- * 'vCallback'
variantsetsSearch'
    :: SearchVariantSetsRequest -- ^ 'vPayload'
    -> VariantsetsSearch'
variantsetsSearch' pVPayload_ =
    VariantsetsSearch'
    { _vXgafv = Nothing
    , _vUploadProtocol = Nothing
    , _vPp = True
    , _vAccessToken = Nothing
    , _vUploadType = Nothing
    , _vPayload = pVPayload_
    , _vBearerToken = Nothing
    , _vCallback = Nothing
    }

-- | V1 error format.
vXgafv :: Lens' VariantsetsSearch' (Maybe Text)
vXgafv = lens _vXgafv (\ s a -> s{_vXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vUploadProtocol :: Lens' VariantsetsSearch' (Maybe Text)
vUploadProtocol
  = lens _vUploadProtocol
      (\ s a -> s{_vUploadProtocol = a})

-- | Pretty-print response.
vPp :: Lens' VariantsetsSearch' Bool
vPp = lens _vPp (\ s a -> s{_vPp = a})

-- | OAuth access token.
vAccessToken :: Lens' VariantsetsSearch' (Maybe Text)
vAccessToken
  = lens _vAccessToken (\ s a -> s{_vAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vUploadType :: Lens' VariantsetsSearch' (Maybe Text)
vUploadType
  = lens _vUploadType (\ s a -> s{_vUploadType = a})

-- | Multipart request metadata.
vPayload :: Lens' VariantsetsSearch' SearchVariantSetsRequest
vPayload = lens _vPayload (\ s a -> s{_vPayload = a})

-- | OAuth bearer token.
vBearerToken :: Lens' VariantsetsSearch' (Maybe Text)
vBearerToken
  = lens _vBearerToken (\ s a -> s{_vBearerToken = a})

-- | JSONP
vCallback :: Lens' VariantsetsSearch' (Maybe Text)
vCallback
  = lens _vCallback (\ s a -> s{_vCallback = a})

instance GoogleRequest VariantsetsSearch' where
        type Rs VariantsetsSearch' =
             SearchVariantSetsResponse
        requestClient VariantsetsSearch'{..}
          = go _vXgafv _vUploadProtocol (Just _vPp)
              _vAccessToken
              _vUploadType
              _vBearerToken
              _vCallback
              (Just AltJSON)
              _vPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantsetsSearchResource)
                      mempty
