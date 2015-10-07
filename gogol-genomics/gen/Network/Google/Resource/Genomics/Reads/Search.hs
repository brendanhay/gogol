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
module Network.Google.Resource.Genomics.Reads.Search
    (
    -- * REST Resource
      ReadsSearchResource

    -- * Creating a Request
    , readsSearch'
    , ReadsSearch'

    -- * Request Lenses
    , rsQuotaUser
    , rsPrettyPrint
    , rsUserIP
    , rsPayload
    , rsKey
    , rsOAuthToken
    , rsFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadsSearch@ method which the
-- 'ReadsSearch'' request conforms to.
type ReadsSearchResource =
     "reads" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
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
-- GlobalAllianceApi.searchReads.
--
-- /See:/ 'readsSearch'' smart constructor.
data ReadsSearch' = ReadsSearch'
    { _rsQuotaUser   :: !(Maybe Text)
    , _rsPrettyPrint :: !Bool
    , _rsUserIP      :: !(Maybe Text)
    , _rsPayload     :: !SearchReadsRequest
    , _rsKey         :: !(Maybe AuthKey)
    , _rsOAuthToken  :: !(Maybe OAuthToken)
    , _rsFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsQuotaUser'
--
-- * 'rsPrettyPrint'
--
-- * 'rsUserIP'
--
-- * 'rsPayload'
--
-- * 'rsKey'
--
-- * 'rsOAuthToken'
--
-- * 'rsFields'
readsSearch'
    :: SearchReadsRequest -- ^ 'payload'
    -> ReadsSearch'
readsSearch' pRsPayload_ =
    ReadsSearch'
    { _rsQuotaUser = Nothing
    , _rsPrettyPrint = True
    , _rsUserIP = Nothing
    , _rsPayload = pRsPayload_
    , _rsKey = Nothing
    , _rsOAuthToken = Nothing
    , _rsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rsQuotaUser :: Lens' ReadsSearch' (Maybe Text)
rsQuotaUser
  = lens _rsQuotaUser (\ s a -> s{_rsQuotaUser = a})

-- | Returns response with indentations and line breaks.
rsPrettyPrint :: Lens' ReadsSearch' Bool
rsPrettyPrint
  = lens _rsPrettyPrint
      (\ s a -> s{_rsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rsUserIP :: Lens' ReadsSearch' (Maybe Text)
rsUserIP = lens _rsUserIP (\ s a -> s{_rsUserIP = a})

-- | Multipart request metadata.
rsPayload :: Lens' ReadsSearch' SearchReadsRequest
rsPayload
  = lens _rsPayload (\ s a -> s{_rsPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rsKey :: Lens' ReadsSearch' (Maybe AuthKey)
rsKey = lens _rsKey (\ s a -> s{_rsKey = a})

-- | OAuth 2.0 token for the current user.
rsOAuthToken :: Lens' ReadsSearch' (Maybe OAuthToken)
rsOAuthToken
  = lens _rsOAuthToken (\ s a -> s{_rsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rsFields :: Lens' ReadsSearch' (Maybe Text)
rsFields = lens _rsFields (\ s a -> s{_rsFields = a})

instance GoogleAuth ReadsSearch' where
        _AuthKey = rsKey . _Just
        _AuthToken = rsOAuthToken . _Just

instance GoogleRequest ReadsSearch' where
        type Rs ReadsSearch' = SearchReadsResponse
        request = requestWith genomicsRequest
        requestWith rq ReadsSearch'{..}
          = go _rsQuotaUser (Just _rsPrettyPrint) _rsUserIP
              _rsFields
              _rsKey
              _rsOAuthToken
              (Just AltJSON)
              _rsPayload
          where go
                  = clientBuild (Proxy :: Proxy ReadsSearchResource) rq
