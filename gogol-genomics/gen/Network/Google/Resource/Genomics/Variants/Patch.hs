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
-- Module      : Network.Google.Resource.Genomics.Variants.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a variant. For the definitions of variants and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This method supports patch semantics. Returns the modified variant
-- without its calls.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variants.patch@.
module Network.Google.Resource.Genomics.Variants.Patch
    (
    -- * REST Resource
      VariantsPatchResource

    -- * Creating a Request
    , variantsPatch
    , VariantsPatch

    -- * Request Lenses
    , vpXgafv
    , vpUploadProtocol
    , vpUpdateMask
    , vpPp
    , vpAccessToken
    , vpUploadType
    , vpPayload
    , vpBearerToken
    , vpVariantId
    , vpCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.patch@ method which the
-- 'VariantsPatch' request conforms to.
type VariantsPatchResource =
     "v1" :>
       "variants" :>
         Capture "variantId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Variant :> Patch '[JSON] Variant

-- | Updates a variant. For the definitions of variants and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- This method supports patch semantics. Returns the modified variant
-- without its calls.
--
-- /See:/ 'variantsPatch' smart constructor.
data VariantsPatch = VariantsPatch
    { _vpXgafv          :: !(Maybe Text)
    , _vpUploadProtocol :: !(Maybe Text)
    , _vpUpdateMask     :: !(Maybe Text)
    , _vpPp             :: !Bool
    , _vpAccessToken    :: !(Maybe Text)
    , _vpUploadType     :: !(Maybe Text)
    , _vpPayload        :: !Variant
    , _vpBearerToken    :: !(Maybe Text)
    , _vpVariantId      :: !Text
    , _vpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpXgafv'
--
-- * 'vpUploadProtocol'
--
-- * 'vpUpdateMask'
--
-- * 'vpPp'
--
-- * 'vpAccessToken'
--
-- * 'vpUploadType'
--
-- * 'vpPayload'
--
-- * 'vpBearerToken'
--
-- * 'vpVariantId'
--
-- * 'vpCallback'
variantsPatch
    :: Variant -- ^ 'vpPayload'
    -> Text -- ^ 'vpVariantId'
    -> VariantsPatch
variantsPatch pVpPayload_ pVpVariantId_ =
    VariantsPatch
    { _vpXgafv = Nothing
    , _vpUploadProtocol = Nothing
    , _vpUpdateMask = Nothing
    , _vpPp = True
    , _vpAccessToken = Nothing
    , _vpUploadType = Nothing
    , _vpPayload = pVpPayload_
    , _vpBearerToken = Nothing
    , _vpVariantId = pVpVariantId_
    , _vpCallback = Nothing
    }

-- | V1 error format.
vpXgafv :: Lens' VariantsPatch (Maybe Text)
vpXgafv = lens _vpXgafv (\ s a -> s{_vpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vpUploadProtocol :: Lens' VariantsPatch (Maybe Text)
vpUploadProtocol
  = lens _vpUploadProtocol
      (\ s a -> s{_vpUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time,
-- mutable fields are names and info. Acceptable values are \"names\" and
-- \"info\". If unspecified, all mutable fields will be updated.
vpUpdateMask :: Lens' VariantsPatch (Maybe Text)
vpUpdateMask
  = lens _vpUpdateMask (\ s a -> s{_vpUpdateMask = a})

-- | Pretty-print response.
vpPp :: Lens' VariantsPatch Bool
vpPp = lens _vpPp (\ s a -> s{_vpPp = a})

-- | OAuth access token.
vpAccessToken :: Lens' VariantsPatch (Maybe Text)
vpAccessToken
  = lens _vpAccessToken
      (\ s a -> s{_vpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vpUploadType :: Lens' VariantsPatch (Maybe Text)
vpUploadType
  = lens _vpUploadType (\ s a -> s{_vpUploadType = a})

-- | Multipart request metadata.
vpPayload :: Lens' VariantsPatch Variant
vpPayload
  = lens _vpPayload (\ s a -> s{_vpPayload = a})

-- | OAuth bearer token.
vpBearerToken :: Lens' VariantsPatch (Maybe Text)
vpBearerToken
  = lens _vpBearerToken
      (\ s a -> s{_vpBearerToken = a})

-- | The ID of the variant to be updated.
vpVariantId :: Lens' VariantsPatch Text
vpVariantId
  = lens _vpVariantId (\ s a -> s{_vpVariantId = a})

-- | JSONP
vpCallback :: Lens' VariantsPatch (Maybe Text)
vpCallback
  = lens _vpCallback (\ s a -> s{_vpCallback = a})

instance GoogleRequest VariantsPatch where
        type Rs VariantsPatch = Variant
        type Scopes VariantsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantsPatch{..}
          = go _vpVariantId _vpXgafv _vpUploadProtocol
              _vpUpdateMask
              (Just _vpPp)
              _vpAccessToken
              _vpUploadType
              _vpBearerToken
              _vpCallback
              (Just AltJSON)
              _vpPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsPatchResource)
                      mempty
