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
-- Module      : Network.Google.Resource.Genomics.Variants.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates variant data by asynchronously importing the provided
-- information. For the definitions of variant sets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- The variants for import will be merged with any existing variant that
-- matches its reference sequence, start, end, reference bases, and
-- alternative bases. If no such variant exists, a new one will be created.
-- When variants are merged, the call information from the new variant is
-- added to the existing variant, and other fields (such as key\/value
-- pairs) are discarded. In particular, this means for merged VCF variants
-- that have conflicting INFO fields, some data will be arbitrarily
-- discarded. As a special case, for single-sample VCF files, QUAL and
-- FILTER fields will be moved to the call level; these are sometimes
-- interpreted in a call-specific context. Imported VCF headers are
-- appended to the metadata already in a variant set.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variants.import@.
module Network.Google.Resource.Genomics.Variants.Import
    (
    -- * REST Resource
      VariantsImportResource

    -- * Creating a Request
    , variantsImport
    , VariantsImport

    -- * Request Lenses
    , viXgafv
    , viUploadProtocol
    , viPp
    , viAccessToken
    , viUploadType
    , viPayload
    , viBearerToken
    , viCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variants.import@ method which the
-- 'VariantsImport' request conforms to.
type VariantsImportResource =
     "v1" :>
       "variants:import" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ImportVariantsRequest :>
                           Post '[JSON] Operation

-- | Creates variant data by asynchronously importing the provided
-- information. For the definitions of variant sets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- The variants for import will be merged with any existing variant that
-- matches its reference sequence, start, end, reference bases, and
-- alternative bases. If no such variant exists, a new one will be created.
-- When variants are merged, the call information from the new variant is
-- added to the existing variant, and other fields (such as key\/value
-- pairs) are discarded. In particular, this means for merged VCF variants
-- that have conflicting INFO fields, some data will be arbitrarily
-- discarded. As a special case, for single-sample VCF files, QUAL and
-- FILTER fields will be moved to the call level; these are sometimes
-- interpreted in a call-specific context. Imported VCF headers are
-- appended to the metadata already in a variant set.
--
-- /See:/ 'variantsImport' smart constructor.
data VariantsImport = VariantsImport'
    { _viXgafv          :: !(Maybe Text)
    , _viUploadProtocol :: !(Maybe Text)
    , _viPp             :: !Bool
    , _viAccessToken    :: !(Maybe Text)
    , _viUploadType     :: !(Maybe Text)
    , _viPayload        :: !ImportVariantsRequest
    , _viBearerToken    :: !(Maybe Text)
    , _viCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viXgafv'
--
-- * 'viUploadProtocol'
--
-- * 'viPp'
--
-- * 'viAccessToken'
--
-- * 'viUploadType'
--
-- * 'viPayload'
--
-- * 'viBearerToken'
--
-- * 'viCallback'
variantsImport
    :: ImportVariantsRequest -- ^ 'viPayload'
    -> VariantsImport
variantsImport pViPayload_ =
    VariantsImport'
    { _viXgafv = Nothing
    , _viUploadProtocol = Nothing
    , _viPp = True
    , _viAccessToken = Nothing
    , _viUploadType = Nothing
    , _viPayload = pViPayload_
    , _viBearerToken = Nothing
    , _viCallback = Nothing
    }

-- | V1 error format.
viXgafv :: Lens' VariantsImport (Maybe Text)
viXgafv = lens _viXgafv (\ s a -> s{_viXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
viUploadProtocol :: Lens' VariantsImport (Maybe Text)
viUploadProtocol
  = lens _viUploadProtocol
      (\ s a -> s{_viUploadProtocol = a})

-- | Pretty-print response.
viPp :: Lens' VariantsImport Bool
viPp = lens _viPp (\ s a -> s{_viPp = a})

-- | OAuth access token.
viAccessToken :: Lens' VariantsImport (Maybe Text)
viAccessToken
  = lens _viAccessToken
      (\ s a -> s{_viAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
viUploadType :: Lens' VariantsImport (Maybe Text)
viUploadType
  = lens _viUploadType (\ s a -> s{_viUploadType = a})

-- | Multipart request metadata.
viPayload :: Lens' VariantsImport ImportVariantsRequest
viPayload
  = lens _viPayload (\ s a -> s{_viPayload = a})

-- | OAuth bearer token.
viBearerToken :: Lens' VariantsImport (Maybe Text)
viBearerToken
  = lens _viBearerToken
      (\ s a -> s{_viBearerToken = a})

-- | JSONP
viCallback :: Lens' VariantsImport (Maybe Text)
viCallback
  = lens _viCallback (\ s a -> s{_viCallback = a})

instance GoogleRequest VariantsImport where
        type Rs VariantsImport = Operation
        type Scopes VariantsImport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.read_write",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantsImport'{..}
          = go _viXgafv _viUploadProtocol (Just _viPp)
              _viAccessToken
              _viUploadType
              _viBearerToken
              _viCallback
              (Just AltJSON)
              _viPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsImportResource)
                      mempty
