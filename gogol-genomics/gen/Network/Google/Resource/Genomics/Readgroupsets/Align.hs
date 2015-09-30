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
    , raUserIp
    , raKey
    , raOauthToken
    , raFields
    , raAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] AlignReadGroupSetsResponse

-- | Aligns read data from existing read group sets or files from Google
-- Cloud Storage. See the alignment and variant calling documentation for
-- more details.
--
-- /See:/ 'readgroupsetsAlign'' smart constructor.
data ReadgroupsetsAlign' = ReadgroupsetsAlign'
    { _raQuotaUser   :: !(Maybe Text)
    , _raPrettyPrint :: !Bool
    , _raUserIp      :: !(Maybe Text)
    , _raKey         :: !(Maybe Text)
    , _raOauthToken  :: !(Maybe Text)
    , _raFields      :: !(Maybe Text)
    , _raAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsAlign'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raQuotaUser'
--
-- * 'raPrettyPrint'
--
-- * 'raUserIp'
--
-- * 'raKey'
--
-- * 'raOauthToken'
--
-- * 'raFields'
--
-- * 'raAlt'
readgroupsetsAlign'
    :: ReadgroupsetsAlign'
readgroupsetsAlign' =
    ReadgroupsetsAlign'
    { _raQuotaUser = Nothing
    , _raPrettyPrint = True
    , _raUserIp = Nothing
    , _raKey = Nothing
    , _raOauthToken = Nothing
    , _raFields = Nothing
    , _raAlt = JSON
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
raUserIp :: Lens' ReadgroupsetsAlign' (Maybe Text)
raUserIp = lens _raUserIp (\ s a -> s{_raUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
raKey :: Lens' ReadgroupsetsAlign' (Maybe Text)
raKey = lens _raKey (\ s a -> s{_raKey = a})

-- | OAuth 2.0 token for the current user.
raOauthToken :: Lens' ReadgroupsetsAlign' (Maybe Text)
raOauthToken
  = lens _raOauthToken (\ s a -> s{_raOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
raFields :: Lens' ReadgroupsetsAlign' (Maybe Text)
raFields = lens _raFields (\ s a -> s{_raFields = a})

-- | Data format for the response.
raAlt :: Lens' ReadgroupsetsAlign' Alt
raAlt = lens _raAlt (\ s a -> s{_raAlt = a})

instance GoogleRequest ReadgroupsetsAlign' where
        type Rs ReadgroupsetsAlign' =
             AlignReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsAlign'{..}
          = go _raQuotaUser (Just _raPrettyPrint) _raUserIp
              _raKey
              _raOauthToken
              _raFields
              (Just _raAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsAlignResource)
                      r
                      u
