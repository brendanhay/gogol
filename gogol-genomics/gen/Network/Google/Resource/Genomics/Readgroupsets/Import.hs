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
    , riUserIP
    , riPayload
    , riKey
    , riOAuthToken
    , riFields
    ) where

import Network.Google.Genomics.Types
import Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsImport@ which the
-- 'ReadgroupsetsImport'' request conforms to.
type ReadgroupsetsImportResource =
     "readgroupsets" :>
       "import" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ImportReadGroupSetsRequest :>
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
    { _riQuotaUser :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riUserIP :: !(Maybe Text)
    , _riPayload :: !ImportReadGroupSetsRequest
    , _riKey :: !(Maybe Key)
    , _riOAuthToken :: !(Maybe OAuthToken)
    , _riFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riUserIP'
--
-- * 'riPayload'
--
-- * 'riKey'
--
-- * 'riOAuthToken'
--
-- * 'riFields'
readgroupsetsImport'
    :: ImportReadGroupSetsRequest -- ^ 'payload'
    -> ReadgroupsetsImport'
readgroupsetsImport' pRiPayload_ = 
    ReadgroupsetsImport'
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riUserIP = Nothing
    , _riPayload = pRiPayload_
    , _riKey = Nothing
    , _riOAuthToken = Nothing
    , _riFields = Nothing
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
riUserIP :: Lens' ReadgroupsetsImport' (Maybe Text)
riUserIP = lens _riUserIP (\ s a -> s{_riUserIP = a})

-- | Multipart request metadata.
riPayload :: Lens' ReadgroupsetsImport' ImportReadGroupSetsRequest
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' ReadgroupsetsImport' (Maybe Key)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | OAuth 2.0 token for the current user.
riOAuthToken :: Lens' ReadgroupsetsImport' (Maybe OAuthToken)
riOAuthToken
  = lens _riOAuthToken (\ s a -> s{_riOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' ReadgroupsetsImport' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

instance GoogleAuth ReadgroupsetsImport' where
        authKey = riKey . _Just
        authToken = riOAuthToken . _Just

instance GoogleRequest ReadgroupsetsImport' where
        type Rs ReadgroupsetsImport' =
             ImportReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsImport'{..}
          = go _riQuotaUser (Just _riPrettyPrint) _riUserIP
              _riFields
              _riKey
              _riOAuthToken
              (Just AltJSON)
              _riPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsImportResource)
                      r
                      u
