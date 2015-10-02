{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Align
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Aligns read data from existing read group sets or files from Google
-- Cloud Storage. See the alignment and variant calling documentation for
-- more details.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsAlign@.
module Network.Google.Resource.Genomics.Readgroupsets.Align
    (
    -- * REST Resource
      ReadgroupsetsAlignResource

    -- * Creating a Request
    , readgroupsetsAlign'
    , ReadgroupsetsAlign'

    -- * Request Lenses
    , raQuotaUser
    , raPrettyPrint
    , raUserIP
    , raKey
    , raAlignReadGroupSetsRequest
    , raOAuthToken
    , raFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsAlign@ which the
-- 'ReadgroupsetsAlign'' request conforms to.
type ReadgroupsetsAlignResource =
     "readgroupsets" :>
       "align" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AlignReadGroupSetsRequest :>
                         Post '[JSON] AlignReadGroupSetsResponse

-- | Aligns read data from existing read group sets or files from Google
-- Cloud Storage. See the alignment and variant calling documentation for
-- more details.
--
-- /See:/ 'readgroupsetsAlign'' smart constructor.
data ReadgroupsetsAlign' = ReadgroupsetsAlign'
    { _raQuotaUser                 :: !(Maybe Text)
    , _raPrettyPrint               :: !Bool
    , _raUserIP                    :: !(Maybe Text)
    , _raKey                       :: !(Maybe Key)
    , _raAlignReadGroupSetsRequest :: !AlignReadGroupSetsRequest
    , _raOAuthToken                :: !(Maybe OAuthToken)
    , _raFields                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsAlign'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raQuotaUser'
--
-- * 'raPrettyPrint'
--
-- * 'raUserIP'
--
-- * 'raKey'
--
-- * 'raAlignReadGroupSetsRequest'
--
-- * 'raOAuthToken'
--
-- * 'raFields'
readgroupsetsAlign'
    :: AlignReadGroupSetsRequest -- ^ 'AlignReadGroupSetsRequest'
    -> ReadgroupsetsAlign'
readgroupsetsAlign' pRaAlignReadGroupSetsRequest_ =
    ReadgroupsetsAlign'
    { _raQuotaUser = Nothing
    , _raPrettyPrint = True
    , _raUserIP = Nothing
    , _raKey = Nothing
    , _raAlignReadGroupSetsRequest = pRaAlignReadGroupSetsRequest_
    , _raOAuthToken = Nothing
    , _raFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
raQuotaUser :: Lens' ReadgroupsetsAlign' (Maybe Text)
raQuotaUser
  = lens _raQuotaUser (\ s a -> s{_raQuotaUser = a})

-- | Returns response with indentations and line breaks.
raPrettyPrint :: Lens' ReadgroupsetsAlign' Bool
raPrettyPrint
  = lens _raPrettyPrint
      (\ s a -> s{_raPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
raUserIP :: Lens' ReadgroupsetsAlign' (Maybe Text)
raUserIP = lens _raUserIP (\ s a -> s{_raUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
raKey :: Lens' ReadgroupsetsAlign' (Maybe Key)
raKey = lens _raKey (\ s a -> s{_raKey = a})

-- | Multipart request metadata.
raAlignReadGroupSetsRequest :: Lens' ReadgroupsetsAlign' AlignReadGroupSetsRequest
raAlignReadGroupSetsRequest
  = lens _raAlignReadGroupSetsRequest
      (\ s a -> s{_raAlignReadGroupSetsRequest = a})

-- | OAuth 2.0 token for the current user.
raOAuthToken :: Lens' ReadgroupsetsAlign' (Maybe OAuthToken)
raOAuthToken
  = lens _raOAuthToken (\ s a -> s{_raOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
raFields :: Lens' ReadgroupsetsAlign' (Maybe Text)
raFields = lens _raFields (\ s a -> s{_raFields = a})

instance GoogleAuth ReadgroupsetsAlign' where
        authKey = raKey . _Just
        authToken = raOAuthToken . _Just

instance GoogleRequest ReadgroupsetsAlign' where
        type Rs ReadgroupsetsAlign' =
             AlignReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsAlign'{..}
          = go _raQuotaUser (Just _raPrettyPrint) _raUserIP
              _raFields
              _raKey
              _raOAuthToken
              (Just AltJSON)
              _raAlignReadGroupSetsRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsAlignResource)
                      r
                      u
