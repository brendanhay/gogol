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
-- Module      : Network.Google.Resource.Genomics.Variants.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a variant by ID. For the definitions of variants and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variants.get@.
module Network.Google.Resource.Genomics.Variants.Get
    (
    -- * REST Resource
      VariantsGetResource

    -- * Creating a Request
    , variantsGet
    , VariantsGet

    -- * Request Lenses
    , vgXgafv
    , vgUploadProtocol
    , vgPp
    , vgAccessToken
    , vgUploadType
    , vgBearerToken
    , vgVariantId
    , vgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.get@ method which the
-- 'VariantsGet' request conforms to.
type VariantsGetResource =
     "v1" :>
       "variants" :>
         Capture "variantId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Variant

-- | Gets a variant by ID. For the definitions of variants and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'variantsGet' smart constructor.
data VariantsGet = VariantsGet'
    { _vgXgafv          :: !(Maybe Text)
    , _vgUploadProtocol :: !(Maybe Text)
    , _vgPp             :: !Bool
    , _vgAccessToken    :: !(Maybe Text)
    , _vgUploadType     :: !(Maybe Text)
    , _vgBearerToken    :: !(Maybe Text)
    , _vgVariantId      :: !Text
    , _vgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgXgafv'
--
-- * 'vgUploadProtocol'
--
-- * 'vgPp'
--
-- * 'vgAccessToken'
--
-- * 'vgUploadType'
--
-- * 'vgBearerToken'
--
-- * 'vgVariantId'
--
-- * 'vgCallback'
variantsGet
    :: Text -- ^ 'vgVariantId'
    -> VariantsGet
variantsGet pVgVariantId_ =
    VariantsGet'
    { _vgXgafv = Nothing
    , _vgUploadProtocol = Nothing
    , _vgPp = True
    , _vgAccessToken = Nothing
    , _vgUploadType = Nothing
    , _vgBearerToken = Nothing
    , _vgVariantId = pVgVariantId_
    , _vgCallback = Nothing
    }

-- | V1 error format.
vgXgafv :: Lens' VariantsGet (Maybe Text)
vgXgafv = lens _vgXgafv (\ s a -> s{_vgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vgUploadProtocol :: Lens' VariantsGet (Maybe Text)
vgUploadProtocol
  = lens _vgUploadProtocol
      (\ s a -> s{_vgUploadProtocol = a})

-- | Pretty-print response.
vgPp :: Lens' VariantsGet Bool
vgPp = lens _vgPp (\ s a -> s{_vgPp = a})

-- | OAuth access token.
vgAccessToken :: Lens' VariantsGet (Maybe Text)
vgAccessToken
  = lens _vgAccessToken
      (\ s a -> s{_vgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vgUploadType :: Lens' VariantsGet (Maybe Text)
vgUploadType
  = lens _vgUploadType (\ s a -> s{_vgUploadType = a})

-- | OAuth bearer token.
vgBearerToken :: Lens' VariantsGet (Maybe Text)
vgBearerToken
  = lens _vgBearerToken
      (\ s a -> s{_vgBearerToken = a})

-- | The ID of the variant.
vgVariantId :: Lens' VariantsGet Text
vgVariantId
  = lens _vgVariantId (\ s a -> s{_vgVariantId = a})

-- | JSONP
vgCallback :: Lens' VariantsGet (Maybe Text)
vgCallback
  = lens _vgCallback (\ s a -> s{_vgCallback = a})

instance GoogleRequest VariantsGet where
        type Rs VariantsGet = Variant
        type Scopes VariantsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient VariantsGet'{..}
          = go _vgVariantId _vgXgafv _vgUploadProtocol
              (Just _vgPp)
              _vgAccessToken
              _vgUploadType
              _vgBearerToken
              _vgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsGetResource)
                      mempty
