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
-- Module      : Network.Google.Resource.Genomics.Reads.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of reads for one or more read group sets. Reads search
-- operates over a genomic coordinate space of reference sequence &
-- position defined over the reference sequences to which the requested
-- read group sets are aligned. If a target positional range is specified,
-- search returns all reads whose alignment to the reference genome overlap
-- the range. A query which specifies only read group set IDs yields all
-- reads in those read group sets, including unmapped reads. All reads
-- returned (including reads on subsequent pages) are ordered by genomic
-- coordinate (reference sequence & position). Reads with equivalent
-- genomic coordinates are returned in a deterministic order. Implements
-- [GlobalAllianceApi.searchReads](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L85).
--
-- /See:/ < Genomics API Reference> for @GenomicsReadsSearch@.
module Network.Google.Resource.Genomics.Reads.Search
    (
    -- * REST Resource
      ReadsSearchResource

    -- * Creating a Request
    , readsSearch'
    , ReadsSearch'

    -- * Request Lenses
    , rsXgafv
    , rsUploadProtocol
    , rsPp
    , rsAccessToken
    , rsUploadType
    , rsPayload
    , rsBearerToken
    , rsCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadsSearch@ method which the
-- 'ReadsSearch'' request conforms to.
type ReadsSearchResource =
     "v1" :>
       "reads" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchReadsRequest :>
                             Post '[JSON] SearchReadsResponse

-- | Gets a list of reads for one or more read group sets. Reads search
-- operates over a genomic coordinate space of reference sequence &
-- position defined over the reference sequences to which the requested
-- read group sets are aligned. If a target positional range is specified,
-- search returns all reads whose alignment to the reference genome overlap
-- the range. A query which specifies only read group set IDs yields all
-- reads in those read group sets, including unmapped reads. All reads
-- returned (including reads on subsequent pages) are ordered by genomic
-- coordinate (reference sequence & position). Reads with equivalent
-- genomic coordinates are returned in a deterministic order. Implements
-- [GlobalAllianceApi.searchReads](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L85).
--
-- /See:/ 'readsSearch'' smart constructor.
data ReadsSearch' = ReadsSearch'
    { _rsXgafv          :: !(Maybe Text)
    , _rsUploadProtocol :: !(Maybe Text)
    , _rsPp             :: !Bool
    , _rsAccessToken    :: !(Maybe Text)
    , _rsUploadType     :: !(Maybe Text)
    , _rsPayload        :: !SearchReadsRequest
    , _rsBearerToken    :: !(Maybe Text)
    , _rsCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsXgafv'
--
-- * 'rsUploadProtocol'
--
-- * 'rsPp'
--
-- * 'rsAccessToken'
--
-- * 'rsUploadType'
--
-- * 'rsPayload'
--
-- * 'rsBearerToken'
--
-- * 'rsCallback'
readsSearch'
    :: SearchReadsRequest -- ^ 'payload'
    -> ReadsSearch'
readsSearch' pRsPayload_ =
    ReadsSearch'
    { _rsXgafv = Nothing
    , _rsUploadProtocol = Nothing
    , _rsPp = True
    , _rsAccessToken = Nothing
    , _rsUploadType = Nothing
    , _rsPayload = pRsPayload_
    , _rsBearerToken = Nothing
    , _rsCallback = Nothing
    }

-- | V1 error format.
rsXgafv :: Lens' ReadsSearch' (Maybe Text)
rsXgafv = lens _rsXgafv (\ s a -> s{_rsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rsUploadProtocol :: Lens' ReadsSearch' (Maybe Text)
rsUploadProtocol
  = lens _rsUploadProtocol
      (\ s a -> s{_rsUploadProtocol = a})

-- | Pretty-print response.
rsPp :: Lens' ReadsSearch' Bool
rsPp = lens _rsPp (\ s a -> s{_rsPp = a})

-- | OAuth access token.
rsAccessToken :: Lens' ReadsSearch' (Maybe Text)
rsAccessToken
  = lens _rsAccessToken
      (\ s a -> s{_rsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rsUploadType :: Lens' ReadsSearch' (Maybe Text)
rsUploadType
  = lens _rsUploadType (\ s a -> s{_rsUploadType = a})

-- | Multipart request metadata.
rsPayload :: Lens' ReadsSearch' SearchReadsRequest
rsPayload
  = lens _rsPayload (\ s a -> s{_rsPayload = a})

-- | OAuth bearer token.
rsBearerToken :: Lens' ReadsSearch' (Maybe Text)
rsBearerToken
  = lens _rsBearerToken
      (\ s a -> s{_rsBearerToken = a})

-- | JSONP
rsCallback :: Lens' ReadsSearch' (Maybe Text)
rsCallback
  = lens _rsCallback (\ s a -> s{_rsCallback = a})

instance GoogleRequest ReadsSearch' where
        type Rs ReadsSearch' = SearchReadsResponse
        requestClient ReadsSearch'{..}
          = go _rsXgafv _rsUploadProtocol (Just _rsPp)
              _rsAccessToken
              _rsUploadType
              _rsBearerToken
              _rsCallback
              (Just AltJSON)
              _rsPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy ReadsSearchResource)
                      mempty
