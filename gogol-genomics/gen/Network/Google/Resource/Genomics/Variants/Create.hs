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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new variant.
--
-- /See:/ < Genomics API Reference> for @genomics.variants.create@.
module Network.Google.Resource.Genomics.Variants.Create
    (
    -- * REST Resource
      VariantsCreateResource

    -- * Creating a Request
    , variantsCreate
    , VariantsCreate

    -- * Request Lenses
    , vccXgafv
    , vccUploadProtocol
    , vccPp
    , vccAccessToken
    , vccUploadType
    , vccPayload
    , vccBearerToken
    , vccCallback
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

-- | Creates a new variant.
--
-- /See:/ 'variantsCreate' smart constructor.
data VariantsCreate = VariantsCreate
    { _vccXgafv          :: !(Maybe Text)
    , _vccUploadProtocol :: !(Maybe Text)
    , _vccPp             :: !Bool
    , _vccAccessToken    :: !(Maybe Text)
    , _vccUploadType     :: !(Maybe Text)
    , _vccPayload        :: !Variant
    , _vccBearerToken    :: !(Maybe Text)
    , _vccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vccXgafv'
--
-- * 'vccUploadProtocol'
--
-- * 'vccPp'
--
-- * 'vccAccessToken'
--
-- * 'vccUploadType'
--
-- * 'vccPayload'
--
-- * 'vccBearerToken'
--
-- * 'vccCallback'
variantsCreate
    :: Variant -- ^ 'vccPayload'
    -> VariantsCreate
variantsCreate pVccPayload_ =
    VariantsCreate
    { _vccXgafv = Nothing
    , _vccUploadProtocol = Nothing
    , _vccPp = True
    , _vccAccessToken = Nothing
    , _vccUploadType = Nothing
    , _vccPayload = pVccPayload_
    , _vccBearerToken = Nothing
    , _vccCallback = Nothing
    }

-- | V1 error format.
vccXgafv :: Lens' VariantsCreate (Maybe Text)
vccXgafv = lens _vccXgafv (\ s a -> s{_vccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vccUploadProtocol :: Lens' VariantsCreate (Maybe Text)
vccUploadProtocol
  = lens _vccUploadProtocol
      (\ s a -> s{_vccUploadProtocol = a})

-- | Pretty-print response.
vccPp :: Lens' VariantsCreate Bool
vccPp = lens _vccPp (\ s a -> s{_vccPp = a})

-- | OAuth access token.
vccAccessToken :: Lens' VariantsCreate (Maybe Text)
vccAccessToken
  = lens _vccAccessToken
      (\ s a -> s{_vccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vccUploadType :: Lens' VariantsCreate (Maybe Text)
vccUploadType
  = lens _vccUploadType
      (\ s a -> s{_vccUploadType = a})

-- | Multipart request metadata.
vccPayload :: Lens' VariantsCreate Variant
vccPayload
  = lens _vccPayload (\ s a -> s{_vccPayload = a})

-- | OAuth bearer token.
vccBearerToken :: Lens' VariantsCreate (Maybe Text)
vccBearerToken
  = lens _vccBearerToken
      (\ s a -> s{_vccBearerToken = a})

-- | JSONP
vccCallback :: Lens' VariantsCreate (Maybe Text)
vccCallback
  = lens _vccCallback (\ s a -> s{_vccCallback = a})

instance GoogleRequest VariantsCreate where
        type Rs VariantsCreate = Variant
        requestClient VariantsCreate{..}
          = go _vccXgafv _vccUploadProtocol (Just _vccPp)
              _vccAccessToken
              _vccUploadType
              _vccBearerToken
              _vccCallback
              (Just AltJSON)
              _vccPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsCreateResource)
                      mempty
