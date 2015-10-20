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
    , variantsGet
    , VariantsGet

    -- * Request Lenses
    , vXgafv
    , vUploadProtocol
    , vPp
    , vAccessToken
    , vUploadType
    , vBearerToken
    , vVariantId
    , vCallback
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

-- | Gets a variant by ID.
--
-- /See:/ 'variantsGet' smart constructor.
data VariantsGet = VariantsGet
    { _vXgafv          :: !(Maybe Text)
    , _vUploadProtocol :: !(Maybe Text)
    , _vPp             :: !Bool
    , _vAccessToken    :: !(Maybe Text)
    , _vUploadType     :: !(Maybe Text)
    , _vBearerToken    :: !(Maybe Text)
    , _vVariantId      :: !Text
    , _vCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsGet' with the minimum fields required to make a request.
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
-- * 'vBearerToken'
--
-- * 'vVariantId'
--
-- * 'vCallback'
variantsGet
    :: Text -- ^ 'vVariantId'
    -> VariantsGet
variantsGet pVVariantId_ =
    VariantsGet
    { _vXgafv = Nothing
    , _vUploadProtocol = Nothing
    , _vPp = True
    , _vAccessToken = Nothing
    , _vUploadType = Nothing
    , _vBearerToken = Nothing
    , _vVariantId = pVVariantId_
    , _vCallback = Nothing
    }

-- | V1 error format.
vXgafv :: Lens' VariantsGet (Maybe Text)
vXgafv = lens _vXgafv (\ s a -> s{_vXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vUploadProtocol :: Lens' VariantsGet (Maybe Text)
vUploadProtocol
  = lens _vUploadProtocol
      (\ s a -> s{_vUploadProtocol = a})

-- | Pretty-print response.
vPp :: Lens' VariantsGet Bool
vPp = lens _vPp (\ s a -> s{_vPp = a})

-- | OAuth access token.
vAccessToken :: Lens' VariantsGet (Maybe Text)
vAccessToken
  = lens _vAccessToken (\ s a -> s{_vAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vUploadType :: Lens' VariantsGet (Maybe Text)
vUploadType
  = lens _vUploadType (\ s a -> s{_vUploadType = a})

-- | OAuth bearer token.
vBearerToken :: Lens' VariantsGet (Maybe Text)
vBearerToken
  = lens _vBearerToken (\ s a -> s{_vBearerToken = a})

-- | The ID of the variant.
vVariantId :: Lens' VariantsGet Text
vVariantId
  = lens _vVariantId (\ s a -> s{_vVariantId = a})

-- | JSONP
vCallback :: Lens' VariantsGet (Maybe Text)
vCallback
  = lens _vCallback (\ s a -> s{_vCallback = a})

instance GoogleRequest VariantsGet where
        type Rs VariantsGet = Variant
        requestClient VariantsGet{..}
          = go _vVariantId _vXgafv _vUploadProtocol (Just _vPp)
              _vAccessToken
              _vUploadType
              _vBearerToken
              _vCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsGetResource)
                      mempty
