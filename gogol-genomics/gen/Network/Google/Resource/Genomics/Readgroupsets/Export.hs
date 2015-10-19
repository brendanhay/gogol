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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Export
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a read group set to a BAM file in Google Cloud Storage. Note
-- that currently there may be some differences between exported BAM files
-- and the original BAM file at the time of import. See
-- [ImportReadGroupSets](google.genomics.v1.ReadServiceV1.ImportReadGroupSets)
-- for caveats.
--
-- /See:/ < Genomics API Reference> for @GenomicsReadgroupsetsExport@.
module Network.Google.Resource.Genomics.Readgroupsets.Export
    (
    -- * REST Resource
      ReadgroupsetsExportResource

    -- * Creating a Request
    , readgroupsetsExport'
    , ReadgroupsetsExport'

    -- * Request Lenses
    , reXgafv
    , reReadGroupSetId
    , reUploadProtocol
    , rePp
    , reAccessToken
    , reUploadType
    , rePayload
    , reBearerToken
    , reCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsExport@ method which the
-- 'ReadgroupsetsExport'' request conforms to.
type ReadgroupsetsExportResource =
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

-- | Exports a read group set to a BAM file in Google Cloud Storage. Note
-- that currently there may be some differences between exported BAM files
-- and the original BAM file at the time of import. See
-- [ImportReadGroupSets](google.genomics.v1.ReadServiceV1.ImportReadGroupSets)
-- for caveats.
--
-- /See:/ 'readgroupsetsExport'' smart constructor.
data ReadgroupsetsExport' = ReadgroupsetsExport'
    { _reXgafv          :: !(Maybe Text)
    , _reReadGroupSetId :: !Text
    , _reUploadProtocol :: !(Maybe Text)
    , _rePp             :: !Bool
    , _reAccessToken    :: !(Maybe Text)
    , _reUploadType     :: !(Maybe Text)
    , _rePayload        :: !ExportReadGroupSetRequest
    , _reBearerToken    :: !(Maybe Text)
    , _reCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reXgafv'
--
-- * 'reReadGroupSetId'
--
-- * 'reUploadProtocol'
--
-- * 'rePp'
--
-- * 'reAccessToken'
--
-- * 'reUploadType'
--
-- * 'rePayload'
--
-- * 'reBearerToken'
--
-- * 'reCallback'
readgroupsetsExport'
    :: Text -- ^ 'readGroupSetId'
    -> ExportReadGroupSetRequest -- ^ 'payload'
    -> ReadgroupsetsExport'
readgroupsetsExport' pReReadGroupSetId_ pRePayload_ =
    ReadgroupsetsExport'
    { _reXgafv = Nothing
    , _reReadGroupSetId = pReReadGroupSetId_
    , _reUploadProtocol = Nothing
    , _rePp = True
    , _reAccessToken = Nothing
    , _reUploadType = Nothing
    , _rePayload = pRePayload_
    , _reBearerToken = Nothing
    , _reCallback = Nothing
    }

-- | V1 error format.
reXgafv :: Lens' ReadgroupsetsExport' (Maybe Text)
reXgafv = lens _reXgafv (\ s a -> s{_reXgafv = a})

-- | Required. The ID of the read group set to export.
reReadGroupSetId :: Lens' ReadgroupsetsExport' Text
reReadGroupSetId
  = lens _reReadGroupSetId
      (\ s a -> s{_reReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
reUploadProtocol :: Lens' ReadgroupsetsExport' (Maybe Text)
reUploadProtocol
  = lens _reUploadProtocol
      (\ s a -> s{_reUploadProtocol = a})

-- | Pretty-print response.
rePp :: Lens' ReadgroupsetsExport' Bool
rePp = lens _rePp (\ s a -> s{_rePp = a})

-- | OAuth access token.
reAccessToken :: Lens' ReadgroupsetsExport' (Maybe Text)
reAccessToken
  = lens _reAccessToken
      (\ s a -> s{_reAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
reUploadType :: Lens' ReadgroupsetsExport' (Maybe Text)
reUploadType
  = lens _reUploadType (\ s a -> s{_reUploadType = a})

-- | Multipart request metadata.
rePayload :: Lens' ReadgroupsetsExport' ExportReadGroupSetRequest
rePayload
  = lens _rePayload (\ s a -> s{_rePayload = a})

-- | OAuth bearer token.
reBearerToken :: Lens' ReadgroupsetsExport' (Maybe Text)
reBearerToken
  = lens _reBearerToken
      (\ s a -> s{_reBearerToken = a})

-- | JSONP
reCallback :: Lens' ReadgroupsetsExport' (Maybe Text)
reCallback
  = lens _reCallback (\ s a -> s{_reCallback = a})

instance GoogleRequest ReadgroupsetsExport' where
        type Rs ReadgroupsetsExport' = Operation
        requestClient ReadgroupsetsExport'{..}
          = go _reReadGroupSetId _reXgafv _reUploadProtocol
              (Just _rePp)
              _reAccessToken
              _reUploadType
              _reBearerToken
              _reCallback
              (Just AltJSON)
              _rePayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadgroupsetsExportResource)
                      mempty
