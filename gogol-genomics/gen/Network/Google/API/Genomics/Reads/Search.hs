{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Reads.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
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
-- GlobalAllianceApi.searchReads.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.reads.search@.
module Network.Google.API.Genomics.Reads.Search
    (
    -- * REST Resource
      ReadsSearchAPI

    -- * Creating a Request
    , readsSearch'
    , ReadsSearch'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIp
    , rKey
    , rOauthToken
    , rFields
    , rAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.reads.search which the
-- 'ReadsSearch'' request conforms to.
type ReadsSearchAPI =
     "reads" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
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
-- GlobalAllianceApi.searchReads.
--
-- /See:/ 'readsSearch'' smart constructor.
data ReadsSearch' = ReadsSearch'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIp      :: !(Maybe Text)
    , _rKey         :: !(Maybe Text)
    , _rOauthToken  :: !(Maybe Text)
    , _rFields      :: !(Maybe Text)
    , _rAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIp'
--
-- * 'rKey'
--
-- * 'rOauthToken'
--
-- * 'rFields'
--
-- * 'rAlt'
readsSearch'
    :: ReadsSearch'
readsSearch' =
    ReadsSearch'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rOauthToken = Nothing
    , _rFields = Nothing
    , _rAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' ReadsSearch' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' ReadsSearch' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' ReadsSearch' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' ReadsSearch' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' ReadsSearch' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' ReadsSearch' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' ReadsSearch' Alt
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest ReadsSearch' where
        type Rs ReadsSearch' = SearchReadsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadsSearch'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rUserIp _rKey
              _rOauthToken
              _rFields
              (Just _rAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ReadsSearchAPI) r u
