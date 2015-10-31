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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of reads for one or more read group sets. For the
-- definitions of read group sets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Reads search operates over a genomic coordinate space of reference
-- sequence & position defined over the reference sequences to which the
-- requested read group sets are aligned. If a target positional range is
-- specified, search returns all reads whose alignment to the reference
-- genome overlap the range. A query which specifies only read group set
-- IDs yields all reads in those read group sets, including unmapped reads.
-- All reads returned (including reads on subsequent pages) are ordered by
-- genomic coordinate (by reference sequence, then position). Reads with
-- equivalent genomic coordinates are returned in an unspecified order.
-- This order is consistent, such that two queries for the same content
-- (regardless of page size) yield reads in the same order across their
-- respective streams of paginated responses. Implements
-- [GlobalAllianceApi.searchReads](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L85).
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.reads.search@.
module Network.Google.Resource.Genomics.Reads.Search
    (
    -- * REST Resource
      ReadsSearchResource

    -- * Creating a Request
    , readsSearch
    , ReadsSearch

    -- * Request Lenses
    , reaXgafv
    , reaUploadProtocol
    , reaPp
    , reaAccessToken
    , reaUploadType
    , reaPayload
    , reaBearerToken
    , reaCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.reads.search@ method which the
-- 'ReadsSearch' request conforms to.
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

-- | Gets a list of reads for one or more read group sets. For the
-- definitions of read group sets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Reads search operates over a genomic coordinate space of reference
-- sequence & position defined over the reference sequences to which the
-- requested read group sets are aligned. If a target positional range is
-- specified, search returns all reads whose alignment to the reference
-- genome overlap the range. A query which specifies only read group set
-- IDs yields all reads in those read group sets, including unmapped reads.
-- All reads returned (including reads on subsequent pages) are ordered by
-- genomic coordinate (by reference sequence, then position). Reads with
-- equivalent genomic coordinates are returned in an unspecified order.
-- This order is consistent, such that two queries for the same content
-- (regardless of page size) yield reads in the same order across their
-- respective streams of paginated responses. Implements
-- [GlobalAllianceApi.searchReads](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L85).
--
-- /See:/ 'readsSearch' smart constructor.
data ReadsSearch = ReadsSearch
    { _reaXgafv          :: !(Maybe Text)
    , _reaUploadProtocol :: !(Maybe Text)
    , _reaPp             :: !Bool
    , _reaAccessToken    :: !(Maybe Text)
    , _reaUploadType     :: !(Maybe Text)
    , _reaPayload        :: !SearchReadsRequest
    , _reaBearerToken    :: !(Maybe Text)
    , _reaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaXgafv'
--
-- * 'reaUploadProtocol'
--
-- * 'reaPp'
--
-- * 'reaAccessToken'
--
-- * 'reaUploadType'
--
-- * 'reaPayload'
--
-- * 'reaBearerToken'
--
-- * 'reaCallback'
readsSearch
    :: SearchReadsRequest -- ^ 'reaPayload'
    -> ReadsSearch
readsSearch pReaPayload_ =
    ReadsSearch
    { _reaXgafv = Nothing
    , _reaUploadProtocol = Nothing
    , _reaPp = True
    , _reaAccessToken = Nothing
    , _reaUploadType = Nothing
    , _reaPayload = pReaPayload_
    , _reaBearerToken = Nothing
    , _reaCallback = Nothing
    }

-- | V1 error format.
reaXgafv :: Lens' ReadsSearch (Maybe Text)
reaXgafv = lens _reaXgafv (\ s a -> s{_reaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
reaUploadProtocol :: Lens' ReadsSearch (Maybe Text)
reaUploadProtocol
  = lens _reaUploadProtocol
      (\ s a -> s{_reaUploadProtocol = a})

-- | Pretty-print response.
reaPp :: Lens' ReadsSearch Bool
reaPp = lens _reaPp (\ s a -> s{_reaPp = a})

-- | OAuth access token.
reaAccessToken :: Lens' ReadsSearch (Maybe Text)
reaAccessToken
  = lens _reaAccessToken
      (\ s a -> s{_reaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
reaUploadType :: Lens' ReadsSearch (Maybe Text)
reaUploadType
  = lens _reaUploadType
      (\ s a -> s{_reaUploadType = a})

-- | Multipart request metadata.
reaPayload :: Lens' ReadsSearch SearchReadsRequest
reaPayload
  = lens _reaPayload (\ s a -> s{_reaPayload = a})

-- | OAuth bearer token.
reaBearerToken :: Lens' ReadsSearch (Maybe Text)
reaBearerToken
  = lens _reaBearerToken
      (\ s a -> s{_reaBearerToken = a})

-- | JSONP
reaCallback :: Lens' ReadsSearch (Maybe Text)
reaCallback
  = lens _reaCallback (\ s a -> s{_reaCallback = a})

instance GoogleRequest ReadsSearch where
        type Rs ReadsSearch = SearchReadsResponse
        type Scopes ReadsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient ReadsSearch{..}
          = go _reaXgafv _reaUploadProtocol (Just _reaPp)
              _reaAccessToken
              _reaUploadType
              _reaBearerToken
              _reaCallback
              (Just AltJSON)
              _reaPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy ReadsSearchResource)
                      mempty
