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
-- Module      : Network.Google.Resource.Genomics.ReadGroupSets.CoverageBuckets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists fixed width coverage buckets for a read group set, each of which
-- correspond to a range of a reference sequence. Each bucket summarizes
-- coverage information across its corresponding genomic range. For the
-- definitions of read group sets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Coverage is defined as the number of reads which are aligned to a given
-- base in the reference sequence. Coverage buckets are available at
-- several precomputed bucket widths, enabling retrieval of various
-- coverage \'zoom levels\'. The caller must have READ permissions for the
-- target read group set.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.readgroupsets.coveragebuckets.list@.
module Network.Google.Resource.Genomics.ReadGroupSets.CoverageBuckets.List
    (
    -- * REST Resource
      ReadGroupSetsCoverageBucketsListResource

    -- * Creating a Request
    , readGroupSetsCoverageBucketsList
    , ReadGroupSetsCoverageBucketsList

    -- * Request Lenses
    , rgscblXgafv
    , rgscblReadGroupSetId
    , rgscblUploadProtocol
    , rgscblPp
    , rgscblAccessToken
    , rgscblStart
    , rgscblUploadType
    , rgscblTargetBucketWidth
    , rgscblReferenceName
    , rgscblBearerToken
    , rgscblEnd
    , rgscblPageToken
    , rgscblPageSize
    , rgscblCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.coveragebuckets.list@ method which the
-- 'ReadGroupSetsCoverageBucketsList' request conforms to.
type ReadGroupSetsCoverageBucketsListResource =
     "v1" :>
       "readgroupsets" :>
         Capture "readGroupSetId" Text :>
           "coveragebuckets" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "start" (Textual Int64) :>
                       QueryParam "uploadType" Text :>
                         QueryParam "targetBucketWidth" (Textual Int64) :>
                           QueryParam "referenceName" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "end" (Textual Int64) :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "pageSize" (Textual Int32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListCoverageBucketsResponse

-- | Lists fixed width coverage buckets for a read group set, each of which
-- correspond to a range of a reference sequence. Each bucket summarizes
-- coverage information across its corresponding genomic range. For the
-- definitions of read group sets and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Coverage is defined as the number of reads which are aligned to a given
-- base in the reference sequence. Coverage buckets are available at
-- several precomputed bucket widths, enabling retrieval of various
-- coverage \'zoom levels\'. The caller must have READ permissions for the
-- target read group set.
--
-- /See:/ 'readGroupSetsCoverageBucketsList' smart constructor.
data ReadGroupSetsCoverageBucketsList = ReadGroupSetsCoverageBucketsList
    { _rgscblXgafv             :: !(Maybe Text)
    , _rgscblReadGroupSetId    :: !Text
    , _rgscblUploadProtocol    :: !(Maybe Text)
    , _rgscblPp                :: !Bool
    , _rgscblAccessToken       :: !(Maybe Text)
    , _rgscblStart             :: !(Maybe (Textual Int64))
    , _rgscblUploadType        :: !(Maybe Text)
    , _rgscblTargetBucketWidth :: !(Maybe (Textual Int64))
    , _rgscblReferenceName     :: !(Maybe Text)
    , _rgscblBearerToken       :: !(Maybe Text)
    , _rgscblEnd               :: !(Maybe (Textual Int64))
    , _rgscblPageToken         :: !(Maybe Text)
    , _rgscblPageSize          :: !(Maybe (Textual Int32))
    , _rgscblCallback          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetsCoverageBucketsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgscblXgafv'
--
-- * 'rgscblReadGroupSetId'
--
-- * 'rgscblUploadProtocol'
--
-- * 'rgscblPp'
--
-- * 'rgscblAccessToken'
--
-- * 'rgscblStart'
--
-- * 'rgscblUploadType'
--
-- * 'rgscblTargetBucketWidth'
--
-- * 'rgscblReferenceName'
--
-- * 'rgscblBearerToken'
--
-- * 'rgscblEnd'
--
-- * 'rgscblPageToken'
--
-- * 'rgscblPageSize'
--
-- * 'rgscblCallback'
readGroupSetsCoverageBucketsList
    :: Text -- ^ 'rgscblReadGroupSetId'
    -> ReadGroupSetsCoverageBucketsList
readGroupSetsCoverageBucketsList pRgscblReadGroupSetId_ =
    ReadGroupSetsCoverageBucketsList
    { _rgscblXgafv = Nothing
    , _rgscblReadGroupSetId = pRgscblReadGroupSetId_
    , _rgscblUploadProtocol = Nothing
    , _rgscblPp = True
    , _rgscblAccessToken = Nothing
    , _rgscblStart = Nothing
    , _rgscblUploadType = Nothing
    , _rgscblTargetBucketWidth = Nothing
    , _rgscblReferenceName = Nothing
    , _rgscblBearerToken = Nothing
    , _rgscblEnd = Nothing
    , _rgscblPageToken = Nothing
    , _rgscblPageSize = Nothing
    , _rgscblCallback = Nothing
    }

-- | V1 error format.
rgscblXgafv :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Text)
rgscblXgafv
  = lens _rgscblXgafv (\ s a -> s{_rgscblXgafv = a})

-- | Required. The ID of the read group set over which coverage is requested.
rgscblReadGroupSetId :: Lens' ReadGroupSetsCoverageBucketsList Text
rgscblReadGroupSetId
  = lens _rgscblReadGroupSetId
      (\ s a -> s{_rgscblReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgscblUploadProtocol :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Text)
rgscblUploadProtocol
  = lens _rgscblUploadProtocol
      (\ s a -> s{_rgscblUploadProtocol = a})

-- | Pretty-print response.
rgscblPp :: Lens' ReadGroupSetsCoverageBucketsList Bool
rgscblPp = lens _rgscblPp (\ s a -> s{_rgscblPp = a})

-- | OAuth access token.
rgscblAccessToken :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Text)
rgscblAccessToken
  = lens _rgscblAccessToken
      (\ s a -> s{_rgscblAccessToken = a})

-- | The start position of the range on the reference, 0-based inclusive. If
-- specified, \`referenceName\` must also be specified. Defaults to 0.
rgscblStart :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Int64)
rgscblStart
  = lens _rgscblStart (\ s a -> s{_rgscblStart = a}) .
      mapping _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgscblUploadType :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Text)
rgscblUploadType
  = lens _rgscblUploadType
      (\ s a -> s{_rgscblUploadType = a})

-- | The desired width of each reported coverage bucket in base pairs. This
-- will be rounded down to the nearest precomputed bucket width; the value
-- of which is returned as \`bucketWidth\` in the response. Defaults to
-- infinity (each bucket spans an entire reference sequence) or the length
-- of the target range, if specified. The smallest precomputed
-- \`bucketWidth\` is currently 2048 base pairs; this is subject to change.
rgscblTargetBucketWidth :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Int64)
rgscblTargetBucketWidth
  = lens _rgscblTargetBucketWidth
      (\ s a -> s{_rgscblTargetBucketWidth = a})
      . mapping _Coerce

-- | The name of the reference to query, within the reference set associated
-- with this query. Optional.
rgscblReferenceName :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Text)
rgscblReferenceName
  = lens _rgscblReferenceName
      (\ s a -> s{_rgscblReferenceName = a})

-- | OAuth bearer token.
rgscblBearerToken :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Text)
rgscblBearerToken
  = lens _rgscblBearerToken
      (\ s a -> s{_rgscblBearerToken = a})

-- | The end position of the range on the reference, 0-based exclusive. If
-- specified, \`referenceName\` must also be specified. If unset or 0,
-- defaults to the length of the reference.
rgscblEnd :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Int64)
rgscblEnd
  = lens _rgscblEnd (\ s a -> s{_rgscblEnd = a}) .
      mapping _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
rgscblPageToken :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Text)
rgscblPageToken
  = lens _rgscblPageToken
      (\ s a -> s{_rgscblPageToken = a})

-- | The maximum number of results to return in a single page. If
-- unspecified, defaults to 1024. The maximum value is 2048.
rgscblPageSize :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Int32)
rgscblPageSize
  = lens _rgscblPageSize
      (\ s a -> s{_rgscblPageSize = a})
      . mapping _Coerce

-- | JSONP
rgscblCallback :: Lens' ReadGroupSetsCoverageBucketsList (Maybe Text)
rgscblCallback
  = lens _rgscblCallback
      (\ s a -> s{_rgscblCallback = a})

instance GoogleRequest
         ReadGroupSetsCoverageBucketsList where
        type Rs ReadGroupSetsCoverageBucketsList =
             ListCoverageBucketsResponse
        requestClient ReadGroupSetsCoverageBucketsList{..}
          = go _rgscblReadGroupSetId _rgscblXgafv
              _rgscblUploadProtocol
              (Just _rgscblPp)
              _rgscblAccessToken
              _rgscblStart
              _rgscblUploadType
              _rgscblTargetBucketWidth
              _rgscblReferenceName
              _rgscblBearerToken
              _rgscblEnd
              _rgscblPageToken
              _rgscblPageSize
              _rgscblCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ReadGroupSetsCoverageBucketsListResource)
                      mempty
