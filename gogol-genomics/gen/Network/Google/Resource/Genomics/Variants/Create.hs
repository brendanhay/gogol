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
-- Module      : Network.Google.Resource.Genomics.Variants.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new variant. For the definitions of variants and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variants.create@.
module Network.Google.Resource.Genomics.Variants.Create
    (
    -- * REST Resource
      VariantsCreateResource

    -- * Creating a Request
    , variantsCreate
    , VariantsCreate

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

-- | A resource alias for @genomics.variants.create@ method which the
-- 'VariantsCreate' request conforms to.
type VariantsCreateResource =
     "v1" :>
       "variants" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Variant :> Post '[JSON] Variant

-- | Creates a new variant. For the definitions of variants and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'variantsCreate' smart constructor.
data VariantsCreate = VariantsCreate
    { _vcXgafv          :: !(Maybe Text)
    , _vcUploadProtocol :: !(Maybe Text)
    , _vcPp             :: !Bool
    , _vcAccessToken    :: !(Maybe Text)
    , _vcUploadType     :: !(Maybe Text)
    , _vcPayload        :: !Variant
    , _vcBearerToken    :: !(Maybe Text)
    , _vcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsCreate' with the minimum fields required to make a request.
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
variantsCreate
    :: Variant -- ^ 'vcPayload'
    -> VariantsCreate
variantsCreate pVcPayload_ =
    VariantsCreate
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
vcXgafv :: Lens' VariantsCreate (Maybe Text)
vcXgafv = lens _vcXgafv (\ s a -> s{_vcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vcUploadProtocol :: Lens' VariantsCreate (Maybe Text)
vcUploadProtocol
  = lens _vcUploadProtocol
      (\ s a -> s{_vcUploadProtocol = a})

-- | Pretty-print response.
vcPp :: Lens' VariantsCreate Bool
vcPp = lens _vcPp (\ s a -> s{_vcPp = a})

-- | OAuth access token.
vcAccessToken :: Lens' VariantsCreate (Maybe Text)
vcAccessToken
  = lens _vcAccessToken
      (\ s a -> s{_vcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vcUploadType :: Lens' VariantsCreate (Maybe Text)
vcUploadType
  = lens _vcUploadType (\ s a -> s{_vcUploadType = a})

-- | Multipart request metadata.
vcPayload :: Lens' VariantsCreate Variant
vcPayload
  = lens _vcPayload (\ s a -> s{_vcPayload = a})

-- | OAuth bearer token.
vcBearerToken :: Lens' VariantsCreate (Maybe Text)
vcBearerToken
  = lens _vcBearerToken
      (\ s a -> s{_vcBearerToken = a})

-- | JSONP
vcCallback :: Lens' VariantsCreate (Maybe Text)
vcCallback
  = lens _vcCallback (\ s a -> s{_vcCallback = a})

instance GoogleRequest VariantsCreate where
        type Rs VariantsCreate = Variant
        type Scopes VariantsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantsCreate{..}
          = go _vcXgafv _vcUploadProtocol (Just _vcPp)
              _vcAccessToken
              _vcUploadType
              _vcBearerToken
              _vcCallback
              (Just AltJSON)
              _vcPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsCreateResource)
                      mempty
