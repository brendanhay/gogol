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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for read group sets matching the criteria. Implements
-- GlobalAllianceApi.searchReadGroupSets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsSearch@.
module Network.Google.Resource.Genomics.Readgroupsets.Search
    (
    -- * REST Resource
      ReadgroupsetsSearchResource

    -- * Creating a Request
    , readgroupsetsSearch'
    , ReadgroupsetsSearch'

    -- * Request Lenses
    , reaQuotaUser
    , reaPrettyPrint
    , reaUserIP
    , reaPayload
    , reaKey
    , reaOAuthToken
    , reaFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsSearch@ which the
-- 'ReadgroupsetsSearch'' request conforms to.
type ReadgroupsetsSearchResource =
     "readgroupsets" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchReadGroupSetsRequest :>
                         Post '[JSON] SearchReadGroupSetsResponse

-- | Searches for read group sets matching the criteria. Implements
-- GlobalAllianceApi.searchReadGroupSets.
--
-- /See:/ 'readgroupsetsSearch'' smart constructor.
data ReadgroupsetsSearch' = ReadgroupsetsSearch'
    { _reaQuotaUser   :: !(Maybe Text)
    , _reaPrettyPrint :: !Bool
    , _reaUserIP      :: !(Maybe Text)
    , _reaPayload     :: !SearchReadGroupSetsRequest
    , _reaKey         :: !(Maybe AuthKey)
    , _reaOAuthToken  :: !(Maybe OAuthToken)
    , _reaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaQuotaUser'
--
-- * 'reaPrettyPrint'
--
-- * 'reaUserIP'
--
-- * 'reaPayload'
--
-- * 'reaKey'
--
-- * 'reaOAuthToken'
--
-- * 'reaFields'
readgroupsetsSearch'
    :: SearchReadGroupSetsRequest -- ^ 'payload'
    -> ReadgroupsetsSearch'
readgroupsetsSearch' pReaPayload_ =
    ReadgroupsetsSearch'
    { _reaQuotaUser = Nothing
    , _reaPrettyPrint = True
    , _reaUserIP = Nothing
    , _reaPayload = pReaPayload_
    , _reaKey = Nothing
    , _reaOAuthToken = Nothing
    , _reaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
reaQuotaUser :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaQuotaUser
  = lens _reaQuotaUser (\ s a -> s{_reaQuotaUser = a})

-- | Returns response with indentations and line breaks.
reaPrettyPrint :: Lens' ReadgroupsetsSearch' Bool
reaPrettyPrint
  = lens _reaPrettyPrint
      (\ s a -> s{_reaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
reaUserIP :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaUserIP
  = lens _reaUserIP (\ s a -> s{_reaUserIP = a})

-- | Multipart request metadata.
reaPayload :: Lens' ReadgroupsetsSearch' SearchReadGroupSetsRequest
reaPayload
  = lens _reaPayload (\ s a -> s{_reaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reaKey :: Lens' ReadgroupsetsSearch' (Maybe AuthKey)
reaKey = lens _reaKey (\ s a -> s{_reaKey = a})

-- | OAuth 2.0 token for the current user.
reaOAuthToken :: Lens' ReadgroupsetsSearch' (Maybe OAuthToken)
reaOAuthToken
  = lens _reaOAuthToken
      (\ s a -> s{_reaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
reaFields :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaFields
  = lens _reaFields (\ s a -> s{_reaFields = a})

instance GoogleAuth ReadgroupsetsSearch' where
        authKey = reaKey . _Just
        authToken = reaOAuthToken . _Just

instance GoogleRequest ReadgroupsetsSearch' where
        type Rs ReadgroupsetsSearch' =
             SearchReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsSearch'{..}
          = go _reaQuotaUser (Just _reaPrettyPrint) _reaUserIP
              _reaFields
              _reaKey
              _reaOAuthToken
              (Just AltJSON)
              _reaPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsSearchResource)
                      r
                      u
