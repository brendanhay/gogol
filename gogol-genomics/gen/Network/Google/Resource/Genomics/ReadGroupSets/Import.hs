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
-- Module      : Network.Google.Resource.Genomics.ReadGroupSets.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates read group sets by asynchronously importing the provided
-- information. For the definitions of read group sets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- The caller must have WRITE permissions to the dataset. ## Notes on
-- [BAM](https:\/\/samtools.github.io\/hts-specs\/SAMv1.pdf) import - Tags
-- will be converted to strings - tag types are not preserved - Comments
-- (\`\'CO\`) in the input file header will not be preserved - Original
-- header order of references (\`\'SQ\`) will not be preserved - Any
-- reverse stranded unmapped reads will be reverse complemented, and their
-- qualities (also the \"BQ\" and \"OQ\" tags, if any) will be reversed -
-- Unmapped reads will be stripped of positional information (reference
-- name and position)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.readgroupsets.import@.
module Network.Google.Resource.Genomics.ReadGroupSets.Import
    (
    -- * REST Resource
      ReadGroupSetsImportResource

    -- * Creating a Request
    , readGroupSetsImport
    , ReadGroupSetsImport

    -- * Request Lenses
    , rgsiXgafv
    , rgsiUploadProtocol
    , rgsiPp
    , rgsiAccessToken
    , rgsiUploadType
    , rgsiPayload
    , rgsiBearerToken
    , rgsiCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.import@ method which the
-- 'ReadGroupSetsImport' request conforms to.
type ReadGroupSetsImportResource =
     "v1" :>
       "readgroupsets:import" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ImportReadGroupSetsRequest :>
                           Post '[JSON] Operation

-- | Creates read group sets by asynchronously importing the provided
-- information. For the definitions of read group sets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- The caller must have WRITE permissions to the dataset. ## Notes on
-- [BAM](https:\/\/samtools.github.io\/hts-specs\/SAMv1.pdf) import - Tags
-- will be converted to strings - tag types are not preserved - Comments
-- (\`\'CO\`) in the input file header will not be preserved - Original
-- header order of references (\`\'SQ\`) will not be preserved - Any
-- reverse stranded unmapped reads will be reverse complemented, and their
-- qualities (also the \"BQ\" and \"OQ\" tags, if any) will be reversed -
-- Unmapped reads will be stripped of positional information (reference
-- name and position)
--
-- /See:/ 'readGroupSetsImport' smart constructor.
data ReadGroupSetsImport = ReadGroupSetsImport
    { _rgsiXgafv          :: !(Maybe Text)
    , _rgsiUploadProtocol :: !(Maybe Text)
    , _rgsiPp             :: !Bool
    , _rgsiAccessToken    :: !(Maybe Text)
    , _rgsiUploadType     :: !(Maybe Text)
    , _rgsiPayload        :: !ImportReadGroupSetsRequest
    , _rgsiBearerToken    :: !(Maybe Text)
    , _rgsiCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetsImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgsiXgafv'
--
-- * 'rgsiUploadProtocol'
--
-- * 'rgsiPp'
--
-- * 'rgsiAccessToken'
--
-- * 'rgsiUploadType'
--
-- * 'rgsiPayload'
--
-- * 'rgsiBearerToken'
--
-- * 'rgsiCallback'
readGroupSetsImport
    :: ImportReadGroupSetsRequest -- ^ 'rgsiPayload'
    -> ReadGroupSetsImport
readGroupSetsImport pRgsiPayload_ =
    ReadGroupSetsImport
    { _rgsiXgafv = Nothing
    , _rgsiUploadProtocol = Nothing
    , _rgsiPp = True
    , _rgsiAccessToken = Nothing
    , _rgsiUploadType = Nothing
    , _rgsiPayload = pRgsiPayload_
    , _rgsiBearerToken = Nothing
    , _rgsiCallback = Nothing
    }

-- | V1 error format.
rgsiXgafv :: Lens' ReadGroupSetsImport (Maybe Text)
rgsiXgafv
  = lens _rgsiXgafv (\ s a -> s{_rgsiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgsiUploadProtocol :: Lens' ReadGroupSetsImport (Maybe Text)
rgsiUploadProtocol
  = lens _rgsiUploadProtocol
      (\ s a -> s{_rgsiUploadProtocol = a})

-- | Pretty-print response.
rgsiPp :: Lens' ReadGroupSetsImport Bool
rgsiPp = lens _rgsiPp (\ s a -> s{_rgsiPp = a})

-- | OAuth access token.
rgsiAccessToken :: Lens' ReadGroupSetsImport (Maybe Text)
rgsiAccessToken
  = lens _rgsiAccessToken
      (\ s a -> s{_rgsiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgsiUploadType :: Lens' ReadGroupSetsImport (Maybe Text)
rgsiUploadType
  = lens _rgsiUploadType
      (\ s a -> s{_rgsiUploadType = a})

-- | Multipart request metadata.
rgsiPayload :: Lens' ReadGroupSetsImport ImportReadGroupSetsRequest
rgsiPayload
  = lens _rgsiPayload (\ s a -> s{_rgsiPayload = a})

-- | OAuth bearer token.
rgsiBearerToken :: Lens' ReadGroupSetsImport (Maybe Text)
rgsiBearerToken
  = lens _rgsiBearerToken
      (\ s a -> s{_rgsiBearerToken = a})

-- | JSONP
rgsiCallback :: Lens' ReadGroupSetsImport (Maybe Text)
rgsiCallback
  = lens _rgsiCallback (\ s a -> s{_rgsiCallback = a})

instance GoogleRequest ReadGroupSetsImport where
        type Rs ReadGroupSetsImport = Operation
        requestClient ReadGroupSetsImport{..}
          = go _rgsiXgafv _rgsiUploadProtocol (Just _rgsiPp)
              _rgsiAccessToken
              _rgsiUploadType
              _rgsiBearerToken
              _rgsiCallback
              (Just AltJSON)
              _rgsiPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadGroupSetsImportResource)
                      mempty
