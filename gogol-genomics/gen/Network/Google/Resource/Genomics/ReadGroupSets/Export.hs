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
-- Module      : Network.Google.Resource.Genomics.ReadGroupSets.Export
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a read group set to a BAM file in Google Cloud Storage. For the
-- definitions of read group sets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Note that currently there may be some differences between exported BAM
-- files and the original BAM file at the time of import. See
-- ImportReadGroupSets for caveats.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.readgroupsets.export@.
module Network.Google.Resource.Genomics.ReadGroupSets.Export
    (
    -- * REST Resource
      ReadGroupSetsExportResource

    -- * Creating a Request
    , readGroupSetsExport
    , ReadGroupSetsExport

    -- * Request Lenses
    , rgseXgafv
    , rgseReadGroupSetId
    , rgseUploadProtocol
    , rgsePp
    , rgseAccessToken
    , rgseUploadType
    , rgsePayload
    , rgseBearerToken
    , rgseCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.export@ method which the
-- 'ReadGroupSetsExport' request conforms to.
type ReadGroupSetsExportResource =
     "v1" :>
       "readgroupsets" :>
         CaptureMode "readGroupSetId" "export" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ExportReadGroupSetRequest :>
                             Post '[JSON] Operation

-- | Exports a read group set to a BAM file in Google Cloud Storage. For the
-- definitions of read group sets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Note that currently there may be some differences between exported BAM
-- files and the original BAM file at the time of import. See
-- ImportReadGroupSets for caveats.
--
-- /See:/ 'readGroupSetsExport' smart constructor.
data ReadGroupSetsExport = ReadGroupSetsExport'
    { _rgseXgafv          :: !(Maybe Text)
    , _rgseReadGroupSetId :: !Text
    , _rgseUploadProtocol :: !(Maybe Text)
    , _rgsePp             :: !Bool
    , _rgseAccessToken    :: !(Maybe Text)
    , _rgseUploadType     :: !(Maybe Text)
    , _rgsePayload        :: !ExportReadGroupSetRequest
    , _rgseBearerToken    :: !(Maybe Text)
    , _rgseCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetsExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgseXgafv'
--
-- * 'rgseReadGroupSetId'
--
-- * 'rgseUploadProtocol'
--
-- * 'rgsePp'
--
-- * 'rgseAccessToken'
--
-- * 'rgseUploadType'
--
-- * 'rgsePayload'
--
-- * 'rgseBearerToken'
--
-- * 'rgseCallback'
readGroupSetsExport
    :: Text -- ^ 'rgseReadGroupSetId'
    -> ExportReadGroupSetRequest -- ^ 'rgsePayload'
    -> ReadGroupSetsExport
readGroupSetsExport pRgseReadGroupSetId_ pRgsePayload_ =
    ReadGroupSetsExport'
    { _rgseXgafv = Nothing
    , _rgseReadGroupSetId = pRgseReadGroupSetId_
    , _rgseUploadProtocol = Nothing
    , _rgsePp = True
    , _rgseAccessToken = Nothing
    , _rgseUploadType = Nothing
    , _rgsePayload = pRgsePayload_
    , _rgseBearerToken = Nothing
    , _rgseCallback = Nothing
    }

-- | V1 error format.
rgseXgafv :: Lens' ReadGroupSetsExport (Maybe Text)
rgseXgafv
  = lens _rgseXgafv (\ s a -> s{_rgseXgafv = a})

-- | Required. The ID of the read group set to export. The caller must have
-- READ access to this read group set.
rgseReadGroupSetId :: Lens' ReadGroupSetsExport Text
rgseReadGroupSetId
  = lens _rgseReadGroupSetId
      (\ s a -> s{_rgseReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgseUploadProtocol :: Lens' ReadGroupSetsExport (Maybe Text)
rgseUploadProtocol
  = lens _rgseUploadProtocol
      (\ s a -> s{_rgseUploadProtocol = a})

-- | Pretty-print response.
rgsePp :: Lens' ReadGroupSetsExport Bool
rgsePp = lens _rgsePp (\ s a -> s{_rgsePp = a})

-- | OAuth access token.
rgseAccessToken :: Lens' ReadGroupSetsExport (Maybe Text)
rgseAccessToken
  = lens _rgseAccessToken
      (\ s a -> s{_rgseAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgseUploadType :: Lens' ReadGroupSetsExport (Maybe Text)
rgseUploadType
  = lens _rgseUploadType
      (\ s a -> s{_rgseUploadType = a})

-- | Multipart request metadata.
rgsePayload :: Lens' ReadGroupSetsExport ExportReadGroupSetRequest
rgsePayload
  = lens _rgsePayload (\ s a -> s{_rgsePayload = a})

-- | OAuth bearer token.
rgseBearerToken :: Lens' ReadGroupSetsExport (Maybe Text)
rgseBearerToken
  = lens _rgseBearerToken
      (\ s a -> s{_rgseBearerToken = a})

-- | JSONP
rgseCallback :: Lens' ReadGroupSetsExport (Maybe Text)
rgseCallback
  = lens _rgseCallback (\ s a -> s{_rgseCallback = a})

instance GoogleRequest ReadGroupSetsExport where
        type Rs ReadGroupSetsExport = Operation
        type Scopes ReadGroupSetsExport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.read_write",
               "https://www.googleapis.com/auth/genomics"]
        requestClient ReadGroupSetsExport'{..}
          = go _rgseReadGroupSetId _rgseXgafv
              _rgseUploadProtocol
              (Just _rgsePp)
              _rgseAccessToken
              _rgseUploadType
              _rgseBearerToken
              _rgseCallback
              (Just AltJSON)
              _rgsePayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadGroupSetsExportResource)
                      mempty
