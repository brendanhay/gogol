{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Export
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports read group sets to a BAM file in Google Cloud Storage. Note that
-- currently there may be some differences between exported BAM files and
-- the original BAM file at the time of import. See ImportReadGroupSets for
-- details.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsExport@.
module Genomics.Readgroupsets.Export
    (
    -- * REST Resource
      ReadgroupsetsExportAPI

    -- * Creating a Request
    , readgroupsetsExport
    , ReadgroupsetsExport

    -- * Request Lenses
    , reQuotaUser
    , rePrettyPrint
    , reUserIp
    , reKey
    , reOauthToken
    , reFields
    , reAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsExport@ which the
-- 'ReadgroupsetsExport' request conforms to.
type ReadgroupsetsExportAPI =
     "readgroupsets" :>
       "export" :> Post '[JSON] ExportReadGroupSetsResponse

-- | Exports read group sets to a BAM file in Google Cloud Storage. Note that
-- currently there may be some differences between exported BAM files and
-- the original BAM file at the time of import. See ImportReadGroupSets for
-- details.
--
-- /See:/ 'readgroupsetsExport' smart constructor.
data ReadgroupsetsExport = ReadgroupsetsExport
    { _reQuotaUser   :: !(Maybe Text)
    , _rePrettyPrint :: !Bool
    , _reUserIp      :: !(Maybe Text)
    , _reKey         :: !(Maybe Text)
    , _reOauthToken  :: !(Maybe Text)
    , _reFields      :: !(Maybe Text)
    , _reAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reQuotaUser'
--
-- * 'rePrettyPrint'
--
-- * 'reUserIp'
--
-- * 'reKey'
--
-- * 'reOauthToken'
--
-- * 'reFields'
--
-- * 'reAlt'
readgroupsetsExport
    :: ReadgroupsetsExport
readgroupsetsExport =
    ReadgroupsetsExport
    { _reQuotaUser = Nothing
    , _rePrettyPrint = True
    , _reUserIp = Nothing
    , _reKey = Nothing
    , _reOauthToken = Nothing
    , _reFields = Nothing
    , _reAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
reQuotaUser :: Lens' ReadgroupsetsExport' (Maybe Text)
reQuotaUser
  = lens _reQuotaUser (\ s a -> s{_reQuotaUser = a})

-- | Returns response with indentations and line breaks.
rePrettyPrint :: Lens' ReadgroupsetsExport' Bool
rePrettyPrint
  = lens _rePrettyPrint
      (\ s a -> s{_rePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
reUserIp :: Lens' ReadgroupsetsExport' (Maybe Text)
reUserIp = lens _reUserIp (\ s a -> s{_reUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reKey :: Lens' ReadgroupsetsExport' (Maybe Text)
reKey = lens _reKey (\ s a -> s{_reKey = a})

-- | OAuth 2.0 token for the current user.
reOauthToken :: Lens' ReadgroupsetsExport' (Maybe Text)
reOauthToken
  = lens _reOauthToken (\ s a -> s{_reOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
reFields :: Lens' ReadgroupsetsExport' (Maybe Text)
reFields = lens _reFields (\ s a -> s{_reFields = a})

-- | Data format for the response.
reAlt :: Lens' ReadgroupsetsExport' Text
reAlt = lens _reAlt (\ s a -> s{_reAlt = a})

instance GoogleRequest ReadgroupsetsExport' where
        type Rs ReadgroupsetsExport' =
             ExportReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsExport{..}
          = go _reQuotaUser _rePrettyPrint _reUserIp _reKey
              _reOauthToken
              _reFields
              _reAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsExportAPI)
                      r
                      u
