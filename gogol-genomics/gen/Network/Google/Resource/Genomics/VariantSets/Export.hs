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
-- Module      : Network.Google.Resource.Genomics.VariantSets.Export
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports variant set data to an external destination. For the definitions
-- of variant sets and other genomics resources, see [Fundamentals of
-- Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.variantsets.export@.
module Network.Google.Resource.Genomics.VariantSets.Export
    (
    -- * REST Resource
      VariantSetsExportResource

    -- * Creating a Request
    , variantSetsExport
    , VariantSetsExport

    -- * Request Lenses
    , vseXgafv
    , vseUploadProtocol
    , vsePp
    , vseVariantSetId
    , vseAccessToken
    , vseUploadType
    , vsePayload
    , vseBearerToken
    , vseCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.export@ method which the
-- 'VariantSetsExport' request conforms to.
type VariantSetsExportResource =
     "v1" :>
       "variantsets" :>
         CaptureMode "variantSetId" "export" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ExportVariantSetRequest :>
                             Post '[JSON] Operation

-- | Exports variant set data to an external destination. For the definitions
-- of variant sets and other genomics resources, see [Fundamentals of
-- Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'variantSetsExport' smart constructor.
data VariantSetsExport = VariantSetsExport'
    { _vseXgafv          :: !(Maybe Xgafv)
    , _vseUploadProtocol :: !(Maybe Text)
    , _vsePp             :: !Bool
    , _vseVariantSetId   :: !Text
    , _vseAccessToken    :: !(Maybe Text)
    , _vseUploadType     :: !(Maybe Text)
    , _vsePayload        :: !ExportVariantSetRequest
    , _vseBearerToken    :: !(Maybe Text)
    , _vseCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSetsExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vseXgafv'
--
-- * 'vseUploadProtocol'
--
-- * 'vsePp'
--
-- * 'vseVariantSetId'
--
-- * 'vseAccessToken'
--
-- * 'vseUploadType'
--
-- * 'vsePayload'
--
-- * 'vseBearerToken'
--
-- * 'vseCallback'
variantSetsExport
    :: Text -- ^ 'vseVariantSetId'
    -> ExportVariantSetRequest -- ^ 'vsePayload'
    -> VariantSetsExport
variantSetsExport pVseVariantSetId_ pVsePayload_ =
    VariantSetsExport'
    { _vseXgafv = Nothing
    , _vseUploadProtocol = Nothing
    , _vsePp = True
    , _vseVariantSetId = pVseVariantSetId_
    , _vseAccessToken = Nothing
    , _vseUploadType = Nothing
    , _vsePayload = pVsePayload_
    , _vseBearerToken = Nothing
    , _vseCallback = Nothing
    }

-- | V1 error format.
vseXgafv :: Lens' VariantSetsExport (Maybe Xgafv)
vseXgafv = lens _vseXgafv (\ s a -> s{_vseXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vseUploadProtocol :: Lens' VariantSetsExport (Maybe Text)
vseUploadProtocol
  = lens _vseUploadProtocol
      (\ s a -> s{_vseUploadProtocol = a})

-- | Pretty-print response.
vsePp :: Lens' VariantSetsExport Bool
vsePp = lens _vsePp (\ s a -> s{_vsePp = a})

-- | Required. The ID of the variant set that contains variant data which
-- should be exported. The caller must have READ access to this variant
-- set.
vseVariantSetId :: Lens' VariantSetsExport Text
vseVariantSetId
  = lens _vseVariantSetId
      (\ s a -> s{_vseVariantSetId = a})

-- | OAuth access token.
vseAccessToken :: Lens' VariantSetsExport (Maybe Text)
vseAccessToken
  = lens _vseAccessToken
      (\ s a -> s{_vseAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vseUploadType :: Lens' VariantSetsExport (Maybe Text)
vseUploadType
  = lens _vseUploadType
      (\ s a -> s{_vseUploadType = a})

-- | Multipart request metadata.
vsePayload :: Lens' VariantSetsExport ExportVariantSetRequest
vsePayload
  = lens _vsePayload (\ s a -> s{_vsePayload = a})

-- | OAuth bearer token.
vseBearerToken :: Lens' VariantSetsExport (Maybe Text)
vseBearerToken
  = lens _vseBearerToken
      (\ s a -> s{_vseBearerToken = a})

-- | JSONP
vseCallback :: Lens' VariantSetsExport (Maybe Text)
vseCallback
  = lens _vseCallback (\ s a -> s{_vseCallback = a})

instance GoogleRequest VariantSetsExport where
        type Rs VariantSetsExport = Operation
        type Scopes VariantSetsExport =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantSetsExport'{..}
          = go _vseVariantSetId _vseXgafv _vseUploadProtocol
              (Just _vsePp)
              _vseAccessToken
              _vseUploadType
              _vseBearerToken
              _vseCallback
              (Just AltJSON)
              _vsePayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantSetsExportResource)
                      mempty
