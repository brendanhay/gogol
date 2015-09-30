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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates read group sets by asynchronously importing the provided
-- information. The caller must have WRITE permissions to the dataset.
-- Notes on BAM import: - Tags will be converted to strings - tag types are
-- not preserved - Comments (\'CO) in the input file header are not
-- imported - Original order of reference headers is not preserved - Any
-- reverse stranded unmapped reads will be reverse complemented, and their
-- qualities (and \"BQ\" tag, if any) will be reversed - Unmapped reads
-- will be stripped of positional information (referenceName and position)
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsImport@.
module Network.Google.Resource.Genomics.Readgroupsets.Import
    (
    -- * REST Resource
      ReadgroupsetsImportResource

    -- * Creating a Request
    , readgroupsetsImport'
    , ReadgroupsetsImport'

    -- * Request Lenses
    , riQuotaUser
    , riPrettyPrint
    , riUserIp
    , riKey
    , riOauthToken
    , riFields
    , riAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsImport@ which the
-- 'ReadgroupsetsImport'' request conforms to.
type ReadgroupsetsImportResource =
     "readgroupsets" :>
       "import" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] ImportReadGroupSetsResponse

-- | Creates read group sets by asynchronously importing the provided
-- information. The caller must have WRITE permissions to the dataset.
-- Notes on BAM import: - Tags will be converted to strings - tag types are
-- not preserved - Comments (\'CO) in the input file header are not
-- imported - Original order of reference headers is not preserved - Any
-- reverse stranded unmapped reads will be reverse complemented, and their
-- qualities (and \"BQ\" tag, if any) will be reversed - Unmapped reads
-- will be stripped of positional information (referenceName and position)
--
-- /See:/ 'readgroupsetsImport'' smart constructor.
data ReadgroupsetsImport' = ReadgroupsetsImport'
    { _riQuotaUser   :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riUserIp      :: !(Maybe Text)
    , _riKey         :: !(Maybe Text)
    , _riOauthToken  :: !(Maybe Text)
    , _riFields      :: !(Maybe Text)
    , _riAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riUserIp'
--
-- * 'riKey'
--
-- * 'riOauthToken'
--
-- * 'riFields'
--
-- * 'riAlt'
readgroupsetsImport'
    :: ReadgroupsetsImport'
readgroupsetsImport' =
    ReadgroupsetsImport'
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riUserIp = Nothing
    , _riKey = Nothing
    , _riOauthToken = Nothing
    , _riFields = Nothing
    , _riAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
riQuotaUser :: Lens' ReadgroupsetsImport' (Maybe Text)
riQuotaUser
  = lens _riQuotaUser (\ s a -> s{_riQuotaUser = a})

-- | Returns response with indentations and line breaks.
riPrettyPrint :: Lens' ReadgroupsetsImport' Bool
riPrettyPrint
  = lens _riPrettyPrint
      (\ s a -> s{_riPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
riUserIp :: Lens' ReadgroupsetsImport' (Maybe Text)
riUserIp = lens _riUserIp (\ s a -> s{_riUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' ReadgroupsetsImport' (Maybe Text)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | OAuth 2.0 token for the current user.
riOauthToken :: Lens' ReadgroupsetsImport' (Maybe Text)
riOauthToken
  = lens _riOauthToken (\ s a -> s{_riOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' ReadgroupsetsImport' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

-- | Data format for the response.
riAlt :: Lens' ReadgroupsetsImport' Alt
riAlt = lens _riAlt (\ s a -> s{_riAlt = a})

instance GoogleRequest ReadgroupsetsImport' where
        type Rs ReadgroupsetsImport' =
             ImportReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsImport'{..}
          = go _riQuotaUser (Just _riPrettyPrint) _riUserIp
              _riKey
              _riOauthToken
              _riFields
              (Just _riAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsImportResource)
                      r
                      u
