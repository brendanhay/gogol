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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new variant set. The provided variant set must have a valid
-- \`datasetId\` set - all other fields are optional. Note that the \`id\`
-- field will be ignored, as this is assigned by the server.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsCreate@.
module Network.Google.Resource.Genomics.Variantsets.Create
    (
    -- * REST Resource
      VariantsetsCreateResource

    -- * Creating a Request
    , variantsetsCreate'
    , VariantsetsCreate'

    -- * Request Lenses
    , vcXgafv
    , vcUploadProtocol
    , vcPp
    , vcAccessToken
    , vcUploadType
    , vcPayload
    , vcBearerToken
    , vcCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsCreate@ method which the
-- 'VariantsetsCreate'' request conforms to.
type VariantsetsCreateResource =
     "v1" :>
       "variantsets" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] VariantSet :> Post '[JSON] VariantSet

-- | Creates a new variant set. The provided variant set must have a valid
-- \`datasetId\` set - all other fields are optional. Note that the \`id\`
-- field will be ignored, as this is assigned by the server.
--
-- /See:/ 'variantsetsCreate'' smart constructor.
data VariantsetsCreate' = VariantsetsCreate'
    { _vcXgafv          :: !(Maybe Text)
    , _vcUploadProtocol :: !(Maybe Text)
    , _vcPp             :: !Bool
    , _vcAccessToken    :: !(Maybe Text)
    , _vcUploadType     :: !(Maybe Text)
    , _vcPayload        :: !VariantSet
    , _vcBearerToken    :: !(Maybe Text)
    , _vcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcXgafv'
--
-- * 'vcUploadProtocol'
--
-- * 'vcPp'
--
-- * 'vcAccessToken'
--
-- * 'vcUploadType'
--
-- * 'vcPayload'
--
-- * 'vcBearerToken'
--
-- * 'vcCallback'
variantsetsCreate'
    :: VariantSet -- ^ 'payload'
    -> VariantsetsCreate'
variantsetsCreate' pVcPayload_ =
    VariantsetsCreate'
    { _vcXgafv = Nothing
    , _vcUploadProtocol = Nothing
    , _vcPp = True
    , _vcAccessToken = Nothing
    , _vcUploadType = Nothing
    , _vcPayload = pVcPayload_
    , _vcBearerToken = Nothing
    , _vcCallback = Nothing
    }

-- | V1 error format.
vcXgafv :: Lens' VariantsetsCreate' (Maybe Text)
vcXgafv = lens _vcXgafv (\ s a -> s{_vcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vcUploadProtocol :: Lens' VariantsetsCreate' (Maybe Text)
vcUploadProtocol
  = lens _vcUploadProtocol
      (\ s a -> s{_vcUploadProtocol = a})

-- | Pretty-print response.
vcPp :: Lens' VariantsetsCreate' Bool
vcPp = lens _vcPp (\ s a -> s{_vcPp = a})

-- | OAuth access token.
vcAccessToken :: Lens' VariantsetsCreate' (Maybe Text)
vcAccessToken
  = lens _vcAccessToken
      (\ s a -> s{_vcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vcUploadType :: Lens' VariantsetsCreate' (Maybe Text)
vcUploadType
  = lens _vcUploadType (\ s a -> s{_vcUploadType = a})

-- | Multipart request metadata.
vcPayload :: Lens' VariantsetsCreate' VariantSet
vcPayload
  = lens _vcPayload (\ s a -> s{_vcPayload = a})

-- | OAuth bearer token.
vcBearerToken :: Lens' VariantsetsCreate' (Maybe Text)
vcBearerToken
  = lens _vcBearerToken
      (\ s a -> s{_vcBearerToken = a})

-- | JSONP
vcCallback :: Lens' VariantsetsCreate' (Maybe Text)
vcCallback
  = lens _vcCallback (\ s a -> s{_vcCallback = a})

instance GoogleRequest VariantsetsCreate' where
        type Rs VariantsetsCreate' = VariantSet
        requestClient VariantsetsCreate'{..}
          = go _vcXgafv _vcUploadProtocol (Just _vcPp)
              _vcAccessToken
              _vcUploadType
              _vcBearerToken
              _vcCallback
              (Just AltJSON)
              _vcPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantsetsCreateResource)
                      mempty
