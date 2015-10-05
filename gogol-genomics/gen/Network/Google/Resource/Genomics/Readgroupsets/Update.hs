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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a read group set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsUpdate@.
module Network.Google.Resource.Genomics.Readgroupsets.Update
    (
    -- * REST Resource
      ReadgroupsetsUpdateResource

    -- * Creating a Request
    , readgroupsetsUpdate'
    , ReadgroupsetsUpdate'

    -- * Request Lenses
    , ruQuotaUser
    , ruPrettyPrint
    , ruReadGroupSetId
    , ruUserIP
    , ruPayload
    , ruKey
    , ruOAuthToken
    , ruFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsUpdate@ which the
-- 'ReadgroupsetsUpdate'' request conforms to.
type ReadgroupsetsUpdateResource =
     "readgroupsets" :>
       Capture "readGroupSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ReadGroupSet :>
                         Put '[JSON] ReadGroupSet

-- | Updates a read group set.
--
-- /See:/ 'readgroupsetsUpdate'' smart constructor.
data ReadgroupsetsUpdate' = ReadgroupsetsUpdate'
    { _ruQuotaUser      :: !(Maybe Text)
    , _ruPrettyPrint    :: !Bool
    , _ruReadGroupSetId :: !Text
    , _ruUserIP         :: !(Maybe Text)
    , _ruPayload        :: !ReadGroupSet
    , _ruKey            :: !(Maybe AuthKey)
    , _ruOAuthToken     :: !(Maybe OAuthToken)
    , _ruFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruQuotaUser'
--
-- * 'ruPrettyPrint'
--
-- * 'ruReadGroupSetId'
--
-- * 'ruUserIP'
--
-- * 'ruPayload'
--
-- * 'ruKey'
--
-- * 'ruOAuthToken'
--
-- * 'ruFields'
readgroupsetsUpdate'
    :: Text -- ^ 'readGroupSetId'
    -> ReadGroupSet -- ^ 'payload'
    -> ReadgroupsetsUpdate'
readgroupsetsUpdate' pRuReadGroupSetId_ pRuPayload_ =
    ReadgroupsetsUpdate'
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruReadGroupSetId = pRuReadGroupSetId_
    , _ruUserIP = Nothing
    , _ruPayload = pRuPayload_
    , _ruKey = Nothing
    , _ruOAuthToken = Nothing
    , _ruFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruQuotaUser :: Lens' ReadgroupsetsUpdate' (Maybe Text)
ruQuotaUser
  = lens _ruQuotaUser (\ s a -> s{_ruQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruPrettyPrint :: Lens' ReadgroupsetsUpdate' Bool
ruPrettyPrint
  = lens _ruPrettyPrint
      (\ s a -> s{_ruPrettyPrint = a})

-- | The ID of the read group set to be updated. The caller must have WRITE
-- permissions to the dataset associated with this read group set.
ruReadGroupSetId :: Lens' ReadgroupsetsUpdate' Text
ruReadGroupSetId
  = lens _ruReadGroupSetId
      (\ s a -> s{_ruReadGroupSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruUserIP :: Lens' ReadgroupsetsUpdate' (Maybe Text)
ruUserIP = lens _ruUserIP (\ s a -> s{_ruUserIP = a})

-- | Multipart request metadata.
ruPayload :: Lens' ReadgroupsetsUpdate' ReadGroupSet
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' ReadgroupsetsUpdate' (Maybe AuthKey)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | OAuth 2.0 token for the current user.
ruOAuthToken :: Lens' ReadgroupsetsUpdate' (Maybe OAuthToken)
ruOAuthToken
  = lens _ruOAuthToken (\ s a -> s{_ruOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' ReadgroupsetsUpdate' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

instance GoogleAuth ReadgroupsetsUpdate' where
        authKey = ruKey . _Just
        authToken = ruOAuthToken . _Just

instance GoogleRequest ReadgroupsetsUpdate' where
        type Rs ReadgroupsetsUpdate' = ReadGroupSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsUpdate'{..}
          = go _ruReadGroupSetId _ruQuotaUser
              (Just _ruPrettyPrint)
              _ruUserIP
              _ruFields
              _ruKey
              _ruOAuthToken
              (Just AltJSON)
              _ruPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsUpdateResource)
                      r
                      u
