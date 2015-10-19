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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a variant by ID.
--
-- /See:/ < Genomics API Reference> for @genomics.variants.get@.
module Network.Google.Resource.Genomics.Variants.Get
    (
    -- * REST Resource
      VariantsGetResource

    -- * Creating a Request
    , variantsGet'
    , VariantsGet'

    -- * Request Lenses
    , vggXgafv
    , vggUploadProtocol
    , vggPp
    , vggAccessToken
    , vggUploadType
    , vggBearerToken
    , vggVariantId
    , vggCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.get@ method which the
-- 'VariantsGet'' request conforms to.
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

-- | Gets a variant by ID.
--
-- /See:/ 'variantsGet'' smart constructor.
data VariantsGet' = VariantsGet'
    { _vggXgafv          :: !(Maybe Text)
    , _vggUploadProtocol :: !(Maybe Text)
    , _vggPp             :: !Bool
    , _vggAccessToken    :: !(Maybe Text)
    , _vggUploadType     :: !(Maybe Text)
    , _vggBearerToken    :: !(Maybe Text)
    , _vggVariantId      :: !Text
    , _vggCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vggXgafv'
--
-- * 'vggUploadProtocol'
--
-- * 'vggPp'
--
-- * 'vggAccessToken'
--
-- * 'vggUploadType'
--
-- * 'vggBearerToken'
--
-- * 'vggVariantId'
--
-- * 'vggCallback'
variantsGet'
    :: Text -- ^ 'vggVariantId'
    -> VariantsGet'
variantsGet' pVggVariantId_ =
    VariantsGet'
    { _vggXgafv = Nothing
    , _vggUploadProtocol = Nothing
    , _vggPp = True
    , _vggAccessToken = Nothing
    , _vggUploadType = Nothing
    , _vggBearerToken = Nothing
    , _vggVariantId = pVggVariantId_
    , _vggCallback = Nothing
    }

-- | V1 error format.
vggXgafv :: Lens' VariantsGet' (Maybe Text)
vggXgafv = lens _vggXgafv (\ s a -> s{_vggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vggUploadProtocol :: Lens' VariantsGet' (Maybe Text)
vggUploadProtocol
  = lens _vggUploadProtocol
      (\ s a -> s{_vggUploadProtocol = a})

-- | Pretty-print response.
vggPp :: Lens' VariantsGet' Bool
vggPp = lens _vggPp (\ s a -> s{_vggPp = a})

-- | OAuth access token.
vggAccessToken :: Lens' VariantsGet' (Maybe Text)
vggAccessToken
  = lens _vggAccessToken
      (\ s a -> s{_vggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vggUploadType :: Lens' VariantsGet' (Maybe Text)
vggUploadType
  = lens _vggUploadType
      (\ s a -> s{_vggUploadType = a})

-- | OAuth bearer token.
vggBearerToken :: Lens' VariantsGet' (Maybe Text)
vggBearerToken
  = lens _vggBearerToken
      (\ s a -> s{_vggBearerToken = a})

-- | The ID of the variant.
vggVariantId :: Lens' VariantsGet' Text
vggVariantId
  = lens _vggVariantId (\ s a -> s{_vggVariantId = a})

-- | JSONP
vggCallback :: Lens' VariantsGet' (Maybe Text)
vggCallback
  = lens _vggCallback (\ s a -> s{_vggCallback = a})

instance GoogleRequest VariantsGet' where
        type Rs VariantsGet' = Variant
        requestClient VariantsGet'{..}
          = go _vggVariantId _vggXgafv _vggUploadProtocol
              (Just _vggPp)
              _vggAccessToken
              _vggUploadType
              _vggBearerToken
              _vggCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsGetResource)
                      mempty
