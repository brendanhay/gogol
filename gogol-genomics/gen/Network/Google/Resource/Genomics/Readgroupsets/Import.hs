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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates read group sets by asynchronously importing the provided
-- information. The caller must have WRITE permissions to the dataset. ##
-- Notes on [BAM](https:\/\/samtools.github.io\/hts-specs\/SAMv1.pdf)
-- import - Tags will be converted to strings - tag types are not preserved
-- - Comments (\`\'CO\`) in the input file header will not be preserved -
-- Original header order of references (\`\'SQ\`) will not be preserved -
-- Any reverse stranded unmapped reads will be reverse complemented, and
-- their qualities (and \"BQ\" tag, if any) will be reversed - Unmapped
-- reads will be stripped of positional information (reference name and
-- position)
--
-- /See:/ < Genomics API Reference> for @genomics.readgroupsets.import@.
module Network.Google.Resource.Genomics.Readgroupsets.Import
    (
    -- * REST Resource
      ReadgroupsetsImportResource

    -- * Creating a Request
    , readgroupsetsImport'
    , ReadgroupsetsImport'

    -- * Request Lenses
    , riXgafv
    , riUploadProtocol
    , riPp
    , riAccessToken
    , riUploadType
    , riPayload
    , riBearerToken
    , riCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.import@ method which the
-- 'ReadgroupsetsImport'' request conforms to.
type ReadgroupsetsImportResource =
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
-- information. The caller must have WRITE permissions to the dataset. ##
-- Notes on [BAM](https:\/\/samtools.github.io\/hts-specs\/SAMv1.pdf)
-- import - Tags will be converted to strings - tag types are not preserved
-- - Comments (\`\'CO\`) in the input file header will not be preserved -
-- Original header order of references (\`\'SQ\`) will not be preserved -
-- Any reverse stranded unmapped reads will be reverse complemented, and
-- their qualities (and \"BQ\" tag, if any) will be reversed - Unmapped
-- reads will be stripped of positional information (reference name and
-- position)
--
-- /See:/ 'readgroupsetsImport'' smart constructor.
data ReadgroupsetsImport' = ReadgroupsetsImport'
    { _riXgafv          :: !(Maybe Text)
    , _riUploadProtocol :: !(Maybe Text)
    , _riPp             :: !Bool
    , _riAccessToken    :: !(Maybe Text)
    , _riUploadType     :: !(Maybe Text)
    , _riPayload        :: !ImportReadGroupSetsRequest
    , _riBearerToken    :: !(Maybe Text)
    , _riCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riXgafv'
--
-- * 'riUploadProtocol'
--
-- * 'riPp'
--
-- * 'riAccessToken'
--
-- * 'riUploadType'
--
-- * 'riPayload'
--
-- * 'riBearerToken'
--
-- * 'riCallback'
readgroupsetsImport'
    :: ImportReadGroupSetsRequest -- ^ 'riPayload'
    -> ReadgroupsetsImport'
readgroupsetsImport' pRiPayload_ =
    ReadgroupsetsImport'
    { _riXgafv = Nothing
    , _riUploadProtocol = Nothing
    , _riPp = True
    , _riAccessToken = Nothing
    , _riUploadType = Nothing
    , _riPayload = pRiPayload_
    , _riBearerToken = Nothing
    , _riCallback = Nothing
    }

-- | V1 error format.
riXgafv :: Lens' ReadgroupsetsImport' (Maybe Text)
riXgafv = lens _riXgafv (\ s a -> s{_riXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
riUploadProtocol :: Lens' ReadgroupsetsImport' (Maybe Text)
riUploadProtocol
  = lens _riUploadProtocol
      (\ s a -> s{_riUploadProtocol = a})

-- | Pretty-print response.
riPp :: Lens' ReadgroupsetsImport' Bool
riPp = lens _riPp (\ s a -> s{_riPp = a})

-- | OAuth access token.
riAccessToken :: Lens' ReadgroupsetsImport' (Maybe Text)
riAccessToken
  = lens _riAccessToken
      (\ s a -> s{_riAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
riUploadType :: Lens' ReadgroupsetsImport' (Maybe Text)
riUploadType
  = lens _riUploadType (\ s a -> s{_riUploadType = a})

-- | Multipart request metadata.
riPayload :: Lens' ReadgroupsetsImport' ImportReadGroupSetsRequest
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | OAuth bearer token.
riBearerToken :: Lens' ReadgroupsetsImport' (Maybe Text)
riBearerToken
  = lens _riBearerToken
      (\ s a -> s{_riBearerToken = a})

-- | JSONP
riCallback :: Lens' ReadgroupsetsImport' (Maybe Text)
riCallback
  = lens _riCallback (\ s a -> s{_riCallback = a})

instance GoogleRequest ReadgroupsetsImport' where
        type Rs ReadgroupsetsImport' = Operation
        requestClient ReadgroupsetsImport'{..}
          = go _riXgafv _riUploadProtocol (Just _riPp)
              _riAccessToken
              _riUploadType
              _riBearerToken
              _riCallback
              (Just AltJSON)
              _riPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadgroupsetsImportResource)
                      mempty
