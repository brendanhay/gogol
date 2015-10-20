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
-- Module      : Network.Google.Resource.Genomics.Variants.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a variant.
--
-- /See:/ < Genomics API Reference> for @genomics.variants.delete@.
module Network.Google.Resource.Genomics.Variants.Delete
    (
    -- * REST Resource
      VariantsDeleteResource

    -- * Creating a Request
    , variantsDelete
    , VariantsDelete

    -- * Request Lenses
    , vddXgafv
    , vddUploadProtocol
    , vddPp
    , vddAccessToken
    , vddUploadType
    , vddBearerToken
    , vddVariantId
    , vddCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.delete@ method which the
-- 'VariantsDelete' request conforms to.
type VariantsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a variant.
--
-- /See:/ 'variantsDelete' smart constructor.
data VariantsDelete = VariantsDelete
    { _vddXgafv          :: !(Maybe Text)
    , _vddUploadProtocol :: !(Maybe Text)
    , _vddPp             :: !Bool
    , _vddAccessToken    :: !(Maybe Text)
    , _vddUploadType     :: !(Maybe Text)
    , _vddBearerToken    :: !(Maybe Text)
    , _vddVariantId      :: !Text
    , _vddCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vddXgafv'
--
-- * 'vddUploadProtocol'
--
-- * 'vddPp'
--
-- * 'vddAccessToken'
--
-- * 'vddUploadType'
--
-- * 'vddBearerToken'
--
-- * 'vddVariantId'
--
-- * 'vddCallback'
variantsDelete
    :: Text -- ^ 'vddVariantId'
    -> VariantsDelete
variantsDelete pVddVariantId_ =
    VariantsDelete
    { _vddXgafv = Nothing
    , _vddUploadProtocol = Nothing
    , _vddPp = True
    , _vddAccessToken = Nothing
    , _vddUploadType = Nothing
    , _vddBearerToken = Nothing
    , _vddVariantId = pVddVariantId_
    , _vddCallback = Nothing
    }

-- | V1 error format.
vddXgafv :: Lens' VariantsDelete (Maybe Text)
vddXgafv = lens _vddXgafv (\ s a -> s{_vddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vddUploadProtocol :: Lens' VariantsDelete (Maybe Text)
vddUploadProtocol
  = lens _vddUploadProtocol
      (\ s a -> s{_vddUploadProtocol = a})

-- | Pretty-print response.
vddPp :: Lens' VariantsDelete Bool
vddPp = lens _vddPp (\ s a -> s{_vddPp = a})

-- | OAuth access token.
vddAccessToken :: Lens' VariantsDelete (Maybe Text)
vddAccessToken
  = lens _vddAccessToken
      (\ s a -> s{_vddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vddUploadType :: Lens' VariantsDelete (Maybe Text)
vddUploadType
  = lens _vddUploadType
      (\ s a -> s{_vddUploadType = a})

-- | OAuth bearer token.
vddBearerToken :: Lens' VariantsDelete (Maybe Text)
vddBearerToken
  = lens _vddBearerToken
      (\ s a -> s{_vddBearerToken = a})

-- | The ID of the variant to be deleted.
vddVariantId :: Lens' VariantsDelete Text
vddVariantId
  = lens _vddVariantId (\ s a -> s{_vddVariantId = a})

-- | JSONP
vddCallback :: Lens' VariantsDelete (Maybe Text)
vddCallback
  = lens _vddCallback (\ s a -> s{_vddCallback = a})

instance GoogleRequest VariantsDelete where
        type Rs VariantsDelete = Empty
        requestClient VariantsDelete{..}
          = go _vddVariantId _vddXgafv _vddUploadProtocol
              (Just _vddPp)
              _vddAccessToken
              _vddUploadType
              _vddBearerToken
              _vddCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsDeleteResource)
                      mempty
