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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a variant. For the definitions of variants and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variants.delete@.
module Network.Google.Resource.Genomics.Variants.Delete
    (
    -- * REST Resource
      VariantsDeleteResource

    -- * Creating a Request
    , variantsDelete
    , VariantsDelete

    -- * Request Lenses
    , vdXgafv
    , vdUploadProtocol
    , vdPp
    , vdAccessToken
    , vdUploadType
    , vdBearerToken
    , vdVariantId
    , vdCallback
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

-- | Deletes a variant. For the definitions of variants and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'variantsDelete' smart constructor.
data VariantsDelete = VariantsDelete'
    { _vdXgafv          :: !(Maybe Text)
    , _vdUploadProtocol :: !(Maybe Text)
    , _vdPp             :: !Bool
    , _vdAccessToken    :: !(Maybe Text)
    , _vdUploadType     :: !(Maybe Text)
    , _vdBearerToken    :: !(Maybe Text)
    , _vdVariantId      :: !Text
    , _vdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdXgafv'
--
-- * 'vdUploadProtocol'
--
-- * 'vdPp'
--
-- * 'vdAccessToken'
--
-- * 'vdUploadType'
--
-- * 'vdBearerToken'
--
-- * 'vdVariantId'
--
-- * 'vdCallback'
variantsDelete
    :: Text -- ^ 'vdVariantId'
    -> VariantsDelete
variantsDelete pVdVariantId_ =
    VariantsDelete'
    { _vdXgafv = Nothing
    , _vdUploadProtocol = Nothing
    , _vdPp = True
    , _vdAccessToken = Nothing
    , _vdUploadType = Nothing
    , _vdBearerToken = Nothing
    , _vdVariantId = pVdVariantId_
    , _vdCallback = Nothing
    }

-- | V1 error format.
vdXgafv :: Lens' VariantsDelete (Maybe Text)
vdXgafv = lens _vdXgafv (\ s a -> s{_vdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vdUploadProtocol :: Lens' VariantsDelete (Maybe Text)
vdUploadProtocol
  = lens _vdUploadProtocol
      (\ s a -> s{_vdUploadProtocol = a})

-- | Pretty-print response.
vdPp :: Lens' VariantsDelete Bool
vdPp = lens _vdPp (\ s a -> s{_vdPp = a})

-- | OAuth access token.
vdAccessToken :: Lens' VariantsDelete (Maybe Text)
vdAccessToken
  = lens _vdAccessToken
      (\ s a -> s{_vdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vdUploadType :: Lens' VariantsDelete (Maybe Text)
vdUploadType
  = lens _vdUploadType (\ s a -> s{_vdUploadType = a})

-- | OAuth bearer token.
vdBearerToken :: Lens' VariantsDelete (Maybe Text)
vdBearerToken
  = lens _vdBearerToken
      (\ s a -> s{_vdBearerToken = a})

-- | The ID of the variant to be deleted.
vdVariantId :: Lens' VariantsDelete Text
vdVariantId
  = lens _vdVariantId (\ s a -> s{_vdVariantId = a})

-- | JSONP
vdCallback :: Lens' VariantsDelete (Maybe Text)
vdCallback
  = lens _vdCallback (\ s a -> s{_vdCallback = a})

instance GoogleRequest VariantsDelete where
        type Rs VariantsDelete = Empty
        type Scopes VariantsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantsDelete'{..}
          = go _vdVariantId _vdXgafv _vdUploadProtocol
              (Just _vdPp)
              _vdAccessToken
              _vdUploadType
              _vdBearerToken
              _vdCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsDeleteResource)
                      mempty
