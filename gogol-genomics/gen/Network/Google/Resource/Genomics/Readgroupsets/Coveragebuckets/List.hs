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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Coveragebuckets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists fixed width coverage buckets for a read group set, each of which
-- correspond to a range of a reference sequence. Each bucket summarizes
-- coverage information across its corresponding genomic range. Coverage is
-- defined as the number of reads which are aligned to a given base in the
-- reference sequence. Coverage buckets are available at several
-- precomputed bucket widths, enabling retrieval of various coverage \'zoom
-- levels\'. The caller must have READ permissions for the target read
-- group set.
--
-- /See:/ < Genomics API Reference> for @GenomicsReadgroupsetsCoveragebucketsList@.
module Network.Google.Resource.Genomics.Readgroupsets.Coveragebuckets.List
    (
    -- * REST Resource
      ReadgroupsetsCoveragebucketsListResource

    -- * Creating a Request
    , readgroupsetsCoveragebucketsList'
    , ReadgroupsetsCoveragebucketsList'

    -- * Request Lenses
    , rclXgafv
    , rclReadGroupSetId
    , rclUploadProtocol
    , rclPp
    , rclAccessToken
    , rclStart
    , rclUploadType
    , rclTargetBucketWidth
    , rclReferenceName
    , rclBearerToken
    , rclEnd
    , rclPageToken
    , rclPageSize
    , rclCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsCoveragebucketsList@ method which the
-- 'ReadgroupsetsCoveragebucketsList'' request conforms to.
type ReadgroupsetsCoveragebucketsListResource =
     "v1" :>
       "readgroupsets" :>
         Capture "readGroupSetId" Text :>
           "coveragebuckets" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "start" Int64 :>
                       QueryParam "uploadType" Text :>
                         QueryParam "targetBucketWidth" Int64 :>
                           QueryParam "referenceName" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "end" Int64 :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "pageSize" Int32 :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListCoverageBucketsResponse

-- | Lists fixed width coverage buckets for a read group set, each of which
-- correspond to a range of a reference sequence. Each bucket summarizes
-- coverage information across its corresponding genomic range. Coverage is
-- defined as the number of reads which are aligned to a given base in the
-- reference sequence. Coverage buckets are available at several
-- precomputed bucket widths, enabling retrieval of various coverage \'zoom
-- levels\'. The caller must have READ permissions for the target read
-- group set.
--
-- /See:/ 'readgroupsetsCoveragebucketsList'' smart constructor.
data ReadgroupsetsCoveragebucketsList' = ReadgroupsetsCoveragebucketsList'
    { _rclXgafv             :: !(Maybe Text)
    , _rclReadGroupSetId    :: !Text
    , _rclUploadProtocol    :: !(Maybe Text)
    , _rclPp                :: !Bool
    , _rclAccessToken       :: !(Maybe Text)
    , _rclStart             :: !(Maybe Int64)
    , _rclUploadType        :: !(Maybe Text)
    , _rclTargetBucketWidth :: !(Maybe Int64)
    , _rclReferenceName     :: !(Maybe Text)
    , _rclBearerToken       :: !(Maybe Text)
    , _rclEnd               :: !(Maybe Int64)
    , _rclPageToken         :: !(Maybe Text)
    , _rclPageSize          :: !(Maybe Int32)
    , _rclCallback          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsCoveragebucketsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rclXgafv'
--
-- * 'rclReadGroupSetId'
--
-- * 'rclUploadProtocol'
--
-- * 'rclPp'
--
-- * 'rclAccessToken'
--
-- * 'rclStart'
--
-- * 'rclUploadType'
--
-- * 'rclTargetBucketWidth'
--
-- * 'rclReferenceName'
--
-- * 'rclBearerToken'
--
-- * 'rclEnd'
--
-- * 'rclPageToken'
--
-- * 'rclPageSize'
--
-- * 'rclCallback'
readgroupsetsCoveragebucketsList'
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsCoveragebucketsList'
readgroupsetsCoveragebucketsList' pRclReadGroupSetId_ =
    ReadgroupsetsCoveragebucketsList'
    { _rclXgafv = Nothing
    , _rclReadGroupSetId = pRclReadGroupSetId_
    , _rclUploadProtocol = Nothing
    , _rclPp = True
    , _rclAccessToken = Nothing
    , _rclStart = Nothing
    , _rclUploadType = Nothing
    , _rclTargetBucketWidth = Nothing
    , _rclReferenceName = Nothing
    , _rclBearerToken = Nothing
    , _rclEnd = Nothing
    , _rclPageToken = Nothing
    , _rclPageSize = Nothing
    , _rclCallback = Nothing
    }

-- | V1 error format.
rclXgafv :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclXgafv = lens _rclXgafv (\ s a -> s{_rclXgafv = a})

-- | Required. The ID of the read group set over which coverage is requested.
rclReadGroupSetId :: Lens' ReadgroupsetsCoveragebucketsList' Text
rclReadGroupSetId
  = lens _rclReadGroupSetId
      (\ s a -> s{_rclReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rclUploadProtocol :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclUploadProtocol
  = lens _rclUploadProtocol
      (\ s a -> s{_rclUploadProtocol = a})

-- | Pretty-print response.
rclPp :: Lens' ReadgroupsetsCoveragebucketsList' Bool
rclPp = lens _rclPp (\ s a -> s{_rclPp = a})

-- | OAuth access token.
rclAccessToken :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclAccessToken
  = lens _rclAccessToken
      (\ s a -> s{_rclAccessToken = a})

-- | The start position of the range on the reference, 0-based inclusive. If
-- specified, \`referenceName\` must also be specified. Defaults to 0.
rclStart :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Int64)
rclStart = lens _rclStart (\ s a -> s{_rclStart = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rclUploadType :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclUploadType
  = lens _rclUploadType
      (\ s a -> s{_rclUploadType = a})

-- | The desired width of each reported coverage bucket in base pairs. This
-- will be rounded down to the nearest precomputed bucket width; the value
-- of which is returned as \`bucketWidth\` in the response. Defaults to
-- infinity (each bucket spans an entire reference sequence) or the length
-- of the target range, if specified. The smallest precomputed
-- \`bucketWidth\` is currently 2048 base pairs; this is subject to change.
rclTargetBucketWidth :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Int64)
rclTargetBucketWidth
  = lens _rclTargetBucketWidth
      (\ s a -> s{_rclTargetBucketWidth = a})

-- | The name of the reference to query, within the reference set associated
-- with this query. Optional.
rclReferenceName :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclReferenceName
  = lens _rclReferenceName
      (\ s a -> s{_rclReferenceName = a})

-- | OAuth bearer token.
rclBearerToken :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclBearerToken
  = lens _rclBearerToken
      (\ s a -> s{_rclBearerToken = a})

-- | The end position of the range on the reference, 0-based exclusive. If
-- specified, \`referenceName\` must also be specified. If unset or 0,
-- defaults to the length of the reference.
rclEnd :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Int64)
rclEnd = lens _rclEnd (\ s a -> s{_rclEnd = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
rclPageToken :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclPageToken
  = lens _rclPageToken (\ s a -> s{_rclPageToken = a})

-- | The maximum number of results to return in a single page. If
-- unspecified, defaults to 1024. The maximum value is 2048.
rclPageSize :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Int32)
rclPageSize
  = lens _rclPageSize (\ s a -> s{_rclPageSize = a})

-- | JSONP
rclCallback :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclCallback
  = lens _rclCallback (\ s a -> s{_rclCallback = a})

instance GoogleRequest
         ReadgroupsetsCoveragebucketsList' where
        type Rs ReadgroupsetsCoveragebucketsList' =
             ListCoverageBucketsResponse
        requestClient ReadgroupsetsCoveragebucketsList'{..}
          = go _rclReadGroupSetId _rclXgafv _rclUploadProtocol
              (Just _rclPp)
              _rclAccessToken
              _rclStart
              _rclUploadType
              _rclTargetBucketWidth
              _rclReferenceName
              _rclBearerToken
              _rclEnd
              _rclPageToken
              _rclPageSize
              _rclCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ReadgroupsetsCoveragebucketsListResource)
                      mempty
