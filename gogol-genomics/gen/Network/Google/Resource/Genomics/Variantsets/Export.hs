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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Export
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports variant set data to an external destination.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsExport@.
module Network.Google.Resource.Genomics.Variantsets.Export
    (
    -- * REST Resource
      VariantsetsExportResource

    -- * Creating a Request
    , variantsetsExport'
    , VariantsetsExport'

    -- * Request Lenses
    , veXgafv
    , veUploadProtocol
    , vePp
    , veVariantSetId
    , veAccessToken
    , veUploadType
    , vePayload
    , veBearerToken
    , veCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsExport@ method which the
-- 'VariantsetsExport'' request conforms to.
type VariantsetsExportResource =
     "v1" :>
       "variantsets" :>
         CaptureMode "variantSetId" "export" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ExportVariantSetRequest :>
                             Post '[JSON] Operation

-- | Exports variant set data to an external destination.
--
-- /See:/ 'variantsetsExport'' smart constructor.
data VariantsetsExport' = VariantsetsExport'
    { _veXgafv          :: !(Maybe Text)
    , _veUploadProtocol :: !(Maybe Text)
    , _vePp             :: !Bool
    , _veVariantSetId   :: !Text
    , _veAccessToken    :: !(Maybe Text)
    , _veUploadType     :: !(Maybe Text)
    , _vePayload        :: !ExportVariantSetRequest
    , _veBearerToken    :: !(Maybe Text)
    , _veCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veXgafv'
--
-- * 'veUploadProtocol'
--
-- * 'vePp'
--
-- * 'veVariantSetId'
--
-- * 'veAccessToken'
--
-- * 'veUploadType'
--
-- * 'vePayload'
--
-- * 'veBearerToken'
--
-- * 'veCallback'
variantsetsExport'
    :: Text -- ^ 'variantSetId'
    -> ExportVariantSetRequest -- ^ 'payload'
    -> VariantsetsExport'
variantsetsExport' pVeVariantSetId_ pVePayload_ =
    VariantsetsExport'
    { _veXgafv = Nothing
    , _veUploadProtocol = Nothing
    , _vePp = True
    , _veVariantSetId = pVeVariantSetId_
    , _veAccessToken = Nothing
    , _veUploadType = Nothing
    , _vePayload = pVePayload_
    , _veBearerToken = Nothing
    , _veCallback = Nothing
    }

-- | V1 error format.
veXgafv :: Lens' VariantsetsExport' (Maybe Text)
veXgafv = lens _veXgafv (\ s a -> s{_veXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
veUploadProtocol :: Lens' VariantsetsExport' (Maybe Text)
veUploadProtocol
  = lens _veUploadProtocol
      (\ s a -> s{_veUploadProtocol = a})

-- | Pretty-print response.
vePp :: Lens' VariantsetsExport' Bool
vePp = lens _vePp (\ s a -> s{_vePp = a})

-- | Required. The ID of the variant set that contains variant data which
-- should be exported. The caller must have READ access to this variant
-- set.
veVariantSetId :: Lens' VariantsetsExport' Text
veVariantSetId
  = lens _veVariantSetId
      (\ s a -> s{_veVariantSetId = a})

-- | OAuth access token.
veAccessToken :: Lens' VariantsetsExport' (Maybe Text)
veAccessToken
  = lens _veAccessToken
      (\ s a -> s{_veAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
veUploadType :: Lens' VariantsetsExport' (Maybe Text)
veUploadType
  = lens _veUploadType (\ s a -> s{_veUploadType = a})

-- | Multipart request metadata.
vePayload :: Lens' VariantsetsExport' ExportVariantSetRequest
vePayload
  = lens _vePayload (\ s a -> s{_vePayload = a})

-- | OAuth bearer token.
veBearerToken :: Lens' VariantsetsExport' (Maybe Text)
veBearerToken
  = lens _veBearerToken
      (\ s a -> s{_veBearerToken = a})

-- | JSONP
veCallback :: Lens' VariantsetsExport' (Maybe Text)
veCallback
  = lens _veCallback (\ s a -> s{_veCallback = a})

instance GoogleRequest VariantsetsExport' where
        type Rs VariantsetsExport' = Operation
        requestClient VariantsetsExport'{..}
          = go _veVariantSetId _veXgafv _veUploadProtocol
              (Just _vePp)
              _veAccessToken
              _veUploadType
              _veBearerToken
              _veCallback
              (Just AltJSON)
              _vePayload
              genomics
          where go
                  = buildClient
                      (Proxy :: Proxy VariantsetsExportResource)
                      mempty
