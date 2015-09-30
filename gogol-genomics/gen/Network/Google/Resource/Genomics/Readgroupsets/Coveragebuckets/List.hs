{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsCoveragebucketsList@.
module Genomics.Readgroupsets.Coveragebuckets.List
    (
    -- * REST Resource
      ReadgroupsetsCoveragebucketsListAPI

    -- * Creating a Request
    , readgroupsetsCoveragebucketsList
    , ReadgroupsetsCoveragebucketsList

    -- * Request Lenses
    , rclQuotaUser
    , rclPrettyPrint
    , rclReadGroupSetId
    , rclUserIp
    , rclRangeEnd
    , rclRangeStart
    , rclTargetBucketWidth
    , rclKey
    , rclRangeReferenceName
    , rclPageToken
    , rclOauthToken
    , rclPageSize
    , rclFields
    , rclAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsCoveragebucketsList@ which the
-- 'ReadgroupsetsCoveragebucketsList' request conforms to.
type ReadgroupsetsCoveragebucketsListAPI =
     "readgroupsets" :>
       Capture "readGroupSetId" Text :>
         "coveragebuckets" :>
           QueryParam "range.end" Int64 :>
             QueryParam "range.start" Int64 :>
               QueryParam "targetBucketWidth" Int64 :>
                 QueryParam "range.referenceName" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" Int32 :>
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
-- /See:/ 'readgroupsetsCoveragebucketsList' smart constructor.
data ReadgroupsetsCoveragebucketsList = ReadgroupsetsCoveragebucketsList
    { _rclQuotaUser          :: !(Maybe Text)
    , _rclPrettyPrint        :: !Bool
    , _rclReadGroupSetId     :: !Text
    , _rclUserIp             :: !(Maybe Text)
    , _rclRangeEnd           :: !(Maybe Int64)
    , _rclRangeStart         :: !(Maybe Int64)
    , _rclTargetBucketWidth  :: !(Maybe Int64)
    , _rclKey                :: !(Maybe Text)
    , _rclRangeReferenceName :: !(Maybe Text)
    , _rclPageToken          :: !(Maybe Text)
    , _rclOauthToken         :: !(Maybe Text)
    , _rclPageSize           :: !(Maybe Int32)
    , _rclFields             :: !(Maybe Text)
    , _rclAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsCoveragebucketsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rclQuotaUser'
--
-- * 'rclPrettyPrint'
--
-- * 'rclReadGroupSetId'
--
-- * 'rclUserIp'
--
-- * 'rclRangeEnd'
--
-- * 'rclRangeStart'
--
-- * 'rclTargetBucketWidth'
--
-- * 'rclKey'
--
-- * 'rclRangeReferenceName'
--
-- * 'rclPageToken'
--
-- * 'rclOauthToken'
--
-- * 'rclPageSize'
--
-- * 'rclFields'
--
-- * 'rclAlt'
readgroupsetsCoveragebucketsList
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsCoveragebucketsList
readgroupsetsCoveragebucketsList pRclReadGroupSetId_ =
    ReadgroupsetsCoveragebucketsList
    { _rclQuotaUser = Nothing
    , _rclPrettyPrint = True
    , _rclReadGroupSetId = pRclReadGroupSetId_
    , _rclUserIp = Nothing
    , _rclRangeEnd = Nothing
    , _rclRangeStart = Nothing
    , _rclTargetBucketWidth = Nothing
    , _rclKey = Nothing
    , _rclRangeReferenceName = Nothing
    , _rclPageToken = Nothing
    , _rclOauthToken = Nothing
    , _rclPageSize = Nothing
    , _rclFields = Nothing
    , _rclAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rclQuotaUser :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclQuotaUser
  = lens _rclQuotaUser (\ s a -> s{_rclQuotaUser = a})

-- | Returns response with indentations and line breaks.
rclPrettyPrint :: Lens' ReadgroupsetsCoveragebucketsList' Bool
rclPrettyPrint
  = lens _rclPrettyPrint
      (\ s a -> s{_rclPrettyPrint = a})

-- | Required. The ID of the read group set over which coverage is requested.
rclReadGroupSetId :: Lens' ReadgroupsetsCoveragebucketsList' Text
rclReadGroupSetId
  = lens _rclReadGroupSetId
      (\ s a -> s{_rclReadGroupSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rclUserIp :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclUserIp
  = lens _rclUserIp (\ s a -> s{_rclUserIp = a})

-- | The end position of the range on the reference, 0-based exclusive. If
-- specified, referenceName must also be specified.
rclRangeEnd :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Int64)
rclRangeEnd
  = lens _rclRangeEnd (\ s a -> s{_rclRangeEnd = a})

-- | The start position of the range on the reference, 0-based inclusive. If
-- specified, referenceName must also be specified.
rclRangeStart :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Int64)
rclRangeStart
  = lens _rclRangeStart
      (\ s a -> s{_rclRangeStart = a})

-- | The desired width of each reported coverage bucket in base pairs. This
-- will be rounded down to the nearest precomputed bucket width; the value
-- of which is returned as bucketWidth in the response. Defaults to
-- infinity (each bucket spans an entire reference sequence) or the length
-- of the target range, if specified. The smallest precomputed bucketWidth
-- is currently 2048 base pairs; this is subject to change.
rclTargetBucketWidth :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Int64)
rclTargetBucketWidth
  = lens _rclTargetBucketWidth
      (\ s a -> s{_rclTargetBucketWidth = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rclKey :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclKey = lens _rclKey (\ s a -> s{_rclKey = a})

-- | The reference sequence name, for example chr1, 1, or chrX.
rclRangeReferenceName :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclRangeReferenceName
  = lens _rclRangeReferenceName
      (\ s a -> s{_rclRangeReferenceName = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rclPageToken :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclPageToken
  = lens _rclPageToken (\ s a -> s{_rclPageToken = a})

-- | OAuth 2.0 token for the current user.
rclOauthToken :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclOauthToken
  = lens _rclOauthToken
      (\ s a -> s{_rclOauthToken = a})

-- | The maximum number of results to return in a single page. If
-- unspecified, defaults to 1024. The maximum value is 2048.
rclPageSize :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Int32)
rclPageSize
  = lens _rclPageSize (\ s a -> s{_rclPageSize = a})

-- | Selector specifying which fields to include in a partial response.
rclFields :: Lens' ReadgroupsetsCoveragebucketsList' (Maybe Text)
rclFields
  = lens _rclFields (\ s a -> s{_rclFields = a})

-- | Data format for the response.
rclAlt :: Lens' ReadgroupsetsCoveragebucketsList' Text
rclAlt = lens _rclAlt (\ s a -> s{_rclAlt = a})

instance GoogleRequest
         ReadgroupsetsCoveragebucketsList' where
        type Rs ReadgroupsetsCoveragebucketsList' =
             ListCoverageBucketsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u
          ReadgroupsetsCoveragebucketsList{..}
          = go _rclQuotaUser _rclPrettyPrint _rclReadGroupSetId
              _rclUserIp
              _rclRangeEnd
              _rclRangeStart
              _rclTargetBucketWidth
              _rclKey
              _rclRangeReferenceName
              _rclPageToken
              _rclOauthToken
              _rclPageSize
              _rclFields
              _rclAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsCoveragebucketsListAPI)
                      r
                      u
