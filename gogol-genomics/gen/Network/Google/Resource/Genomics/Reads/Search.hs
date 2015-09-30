{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Reads.Search
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
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadsSearch@.
module Genomics.Reads.Search
    (
    -- * REST Resource
      ReadsSearchAPI

    -- * Creating a Request
    , readsSearch
    , ReadsSearch

    -- * Request Lenses
    , rrQuotaUser
    , rrPrettyPrint
    , rrUserIp
    , rrKey
    , rrOauthToken
    , rrFields
    , rrAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadsSearch@ which the
-- 'ReadsSearch' request conforms to.
type ReadsSearchAPI =
     "reads" :>
       "search" :> Post '[JSON] SearchReadsResponse

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
-- /See:/ 'readsSearch' smart constructor.
data ReadsSearch = ReadsSearch
    { _rrQuotaUser   :: !(Maybe Text)
    , _rrPrettyPrint :: !Bool
    , _rrUserIp      :: !(Maybe Text)
    , _rrKey         :: !(Maybe Text)
    , _rrOauthToken  :: !(Maybe Text)
    , _rrFields      :: !(Maybe Text)
    , _rrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrQuotaUser'
--
-- * 'rrPrettyPrint'
--
-- * 'rrUserIp'
--
-- * 'rrKey'
--
-- * 'rrOauthToken'
--
-- * 'rrFields'
--
-- * 'rrAlt'
readsSearch
    :: ReadsSearch
readsSearch =
    ReadsSearch
    { _rrQuotaUser = Nothing
    , _rrPrettyPrint = True
    , _rrUserIp = Nothing
    , _rrKey = Nothing
    , _rrOauthToken = Nothing
    , _rrFields = Nothing
    , _rrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrQuotaUser :: Lens' ReadsSearch' (Maybe Text)
rrQuotaUser
  = lens _rrQuotaUser (\ s a -> s{_rrQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrPrettyPrint :: Lens' ReadsSearch' Bool
rrPrettyPrint
  = lens _rrPrettyPrint
      (\ s a -> s{_rrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrUserIp :: Lens' ReadsSearch' (Maybe Text)
rrUserIp = lens _rrUserIp (\ s a -> s{_rrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrKey :: Lens' ReadsSearch' (Maybe Text)
rrKey = lens _rrKey (\ s a -> s{_rrKey = a})

-- | OAuth 2.0 token for the current user.
rrOauthToken :: Lens' ReadsSearch' (Maybe Text)
rrOauthToken
  = lens _rrOauthToken (\ s a -> s{_rrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrFields :: Lens' ReadsSearch' (Maybe Text)
rrFields = lens _rrFields (\ s a -> s{_rrFields = a})

-- | Data format for the response.
rrAlt :: Lens' ReadsSearch' Text
rrAlt = lens _rrAlt (\ s a -> s{_rrAlt = a})

instance GoogleRequest ReadsSearch' where
        type Rs ReadsSearch' = SearchReadsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadsSearch{..}
          = go _rrQuotaUser _rrPrettyPrint _rrUserIp _rrKey
              _rrOauthToken
              _rrFields
              _rrAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReadsSearchAPI) r u
