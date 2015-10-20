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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a variant. This method supports patch semantics. Returns the
-- modified variant without its calls.
--
-- /See:/ < Genomics API Reference> for @genomics.variants.patch@.
module Network.Google.Resource.Genomics.Variants.Patch
    (
    -- * REST Resource
      VariantsPatchResource

    -- * Creating a Request
    , variantsPatch
    , VariantsPatch

    -- * Request Lenses
    , varXgafv
    , varUploadProtocol
    , varUpdateMask
    , varPp
    , varAccessToken
    , varUploadType
    , varPayload
    , varBearerToken
    , varVariantId
    , varCallback
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

-- | Updates a variant. This method supports patch semantics. Returns the
-- modified variant without its calls.
--
-- /See:/ 'variantsPatch' smart constructor.
data VariantsPatch = VariantsPatch
    { _varXgafv          :: !(Maybe Text)
    , _varUploadProtocol :: !(Maybe Text)
    , _varUpdateMask     :: !(Maybe Text)
    , _varPp             :: !Bool
    , _varAccessToken    :: !(Maybe Text)
    , _varUploadType     :: !(Maybe Text)
    , _varPayload        :: !Variant
    , _varBearerToken    :: !(Maybe Text)
    , _varVariantId      :: !Text
    , _varCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varXgafv'
--
-- * 'varUploadProtocol'
--
-- * 'varUpdateMask'
--
-- * 'varPp'
--
-- * 'varAccessToken'
--
-- * 'varUploadType'
--
-- * 'varPayload'
--
-- * 'varBearerToken'
--
-- * 'varVariantId'
--
-- * 'varCallback'
variantsPatch
    :: Variant -- ^ 'varPayload'
    -> Text -- ^ 'varVariantId'
    -> VariantsPatch
variantsPatch pVarPayload_ pVarVariantId_ =
    VariantsPatch
    { _varXgafv = Nothing
    , _varUploadProtocol = Nothing
    , _varUpdateMask = Nothing
    , _varPp = True
    , _varAccessToken = Nothing
    , _varUploadType = Nothing
    , _varPayload = pVarPayload_
    , _varBearerToken = Nothing
    , _varVariantId = pVarVariantId_
    , _varCallback = Nothing
    }

-- | V1 error format.
varXgafv :: Lens' VariantsPatch (Maybe Text)
varXgafv = lens _varXgafv (\ s a -> s{_varXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
varUploadProtocol :: Lens' VariantsPatch (Maybe Text)
varUploadProtocol
  = lens _varUploadProtocol
      (\ s a -> s{_varUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time,
-- mutable fields are names and info. Acceptable values are \"names\" and
-- \"info\". If unspecified, all mutable fields will be updated.
varUpdateMask :: Lens' VariantsPatch (Maybe Text)
varUpdateMask
  = lens _varUpdateMask
      (\ s a -> s{_varUpdateMask = a})

-- | Pretty-print response.
varPp :: Lens' VariantsPatch Bool
varPp = lens _varPp (\ s a -> s{_varPp = a})

-- | OAuth access token.
varAccessToken :: Lens' VariantsPatch (Maybe Text)
varAccessToken
  = lens _varAccessToken
      (\ s a -> s{_varAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
varUploadType :: Lens' VariantsPatch (Maybe Text)
varUploadType
  = lens _varUploadType
      (\ s a -> s{_varUploadType = a})

-- | Multipart request metadata.
varPayload :: Lens' VariantsPatch Variant
varPayload
  = lens _varPayload (\ s a -> s{_varPayload = a})

-- | OAuth bearer token.
varBearerToken :: Lens' VariantsPatch (Maybe Text)
varBearerToken
  = lens _varBearerToken
      (\ s a -> s{_varBearerToken = a})

-- | The ID of the variant to be updated.
varVariantId :: Lens' VariantsPatch Text
varVariantId
  = lens _varVariantId (\ s a -> s{_varVariantId = a})

-- | JSONP
varCallback :: Lens' VariantsPatch (Maybe Text)
varCallback
  = lens _varCallback (\ s a -> s{_varCallback = a})

instance GoogleRequest VariantsPatch where
        type Rs VariantsPatch = Variant
        requestClient VariantsPatch{..}
          = go _varVariantId _varXgafv _varUploadProtocol
              _varUpdateMask
              (Just _varPp)
              _varAccessToken
              _varUploadType
              _varBearerToken
              _varCallback
              (Just AltJSON)
              _varPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsPatchResource)
                      mempty
