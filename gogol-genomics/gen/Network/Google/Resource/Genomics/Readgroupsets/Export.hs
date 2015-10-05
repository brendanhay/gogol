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
module Network.Google.Resource.Genomics.Readgroupsets.Export
    (
    -- * REST Resource
      ReadgroupsetsExportResource

    -- * Creating a Request
    , readgroupsetsExport'
    , ReadgroupsetsExport'

    -- * Request Lenses
    , reQuotaUser
    , rePrettyPrint
    , reUserIP
    , rePayload
    , reKey
    , reOAuthToken
    , reFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsExport@ which the
-- 'ReadgroupsetsExport'' request conforms to.
type ReadgroupsetsExportResource =
     "readgroupsets" :>
       "export" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ExportReadGroupSetsRequest :>
                         Post '[JSON] ExportReadGroupSetsResponse

-- | Exports read group sets to a BAM file in Google Cloud Storage. Note that
-- currently there may be some differences between exported BAM files and
-- the original BAM file at the time of import. See ImportReadGroupSets for
-- details.
--
-- /See:/ 'readgroupsetsExport'' smart constructor.
data ReadgroupsetsExport' = ReadgroupsetsExport'
    { _reQuotaUser   :: !(Maybe Text)
    , _rePrettyPrint :: !Bool
    , _reUserIP      :: !(Maybe Text)
    , _rePayload     :: !ExportReadGroupSetsRequest
    , _reKey         :: !(Maybe Key)
    , _reOAuthToken  :: !(Maybe OAuthToken)
    , _reFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reQuotaUser'
--
-- * 'rePrettyPrint'
--
-- * 'reUserIP'
--
-- * 'rePayload'
--
-- * 'reKey'
--
-- * 'reOAuthToken'
--
-- * 'reFields'
readgroupsetsExport'
    :: ExportReadGroupSetsRequest -- ^ 'payload'
    -> ReadgroupsetsExport'
readgroupsetsExport' pRePayload_ =
    ReadgroupsetsExport'
    { _reQuotaUser = Nothing
    , _rePrettyPrint = True
    , _reUserIP = Nothing
    , _rePayload = pRePayload_
    , _reKey = Nothing
    , _reOAuthToken = Nothing
    , _reFields = Nothing
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
reUserIP :: Lens' ReadgroupsetsExport' (Maybe Text)
reUserIP = lens _reUserIP (\ s a -> s{_reUserIP = a})

-- | Multipart request metadata.
rePayload :: Lens' ReadgroupsetsExport' ExportReadGroupSetsRequest
rePayload
  = lens _rePayload (\ s a -> s{_rePayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reKey :: Lens' ReadgroupsetsExport' (Maybe Key)
reKey = lens _reKey (\ s a -> s{_reKey = a})

-- | OAuth 2.0 token for the current user.
reOAuthToken :: Lens' ReadgroupsetsExport' (Maybe OAuthToken)
reOAuthToken
  = lens _reOAuthToken (\ s a -> s{_reOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
reFields :: Lens' ReadgroupsetsExport' (Maybe Text)
reFields = lens _reFields (\ s a -> s{_reFields = a})

instance GoogleAuth ReadgroupsetsExport' where
        authKey = reKey . _Just
        authToken = reOAuthToken . _Just

instance GoogleRequest ReadgroupsetsExport' where
        type Rs ReadgroupsetsExport' =
             ExportReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsExport'{..}
          = go _reQuotaUser (Just _rePrettyPrint) _reUserIP
              _reFields
              _reKey
              _reOAuthToken
              (Just AltJSON)
              _rePayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsExportResource)
                      r
                      u
