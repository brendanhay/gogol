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
    , ruUserIp
    , ruKey
    , ruOauthToken
    , ruFields
    , ruAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] ReadGroupSet

-- | Updates a read group set.
--
-- /See:/ 'readgroupsetsUpdate'' smart constructor.
data ReadgroupsetsUpdate' = ReadgroupsetsUpdate'
    { _ruQuotaUser      :: !(Maybe Text)
    , _ruPrettyPrint    :: !Bool
    , _ruReadGroupSetId :: !Text
    , _ruUserIp         :: !(Maybe Text)
    , _ruKey            :: !(Maybe Text)
    , _ruOauthToken     :: !(Maybe Text)
    , _ruFields         :: !(Maybe Text)
    , _ruAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ruUserIp'
--
-- * 'ruKey'
--
-- * 'ruOauthToken'
--
-- * 'ruFields'
--
-- * 'ruAlt'
readgroupsetsUpdate'
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsUpdate'
readgroupsetsUpdate' pRuReadGroupSetId_ =
    ReadgroupsetsUpdate'
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruReadGroupSetId = pRuReadGroupSetId_
    , _ruUserIp = Nothing
    , _ruKey = Nothing
    , _ruOauthToken = Nothing
    , _ruFields = Nothing
    , _ruAlt = JSON
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
ruUserIp :: Lens' ReadgroupsetsUpdate' (Maybe Text)
ruUserIp = lens _ruUserIp (\ s a -> s{_ruUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' ReadgroupsetsUpdate' (Maybe Text)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | OAuth 2.0 token for the current user.
ruOauthToken :: Lens' ReadgroupsetsUpdate' (Maybe Text)
ruOauthToken
  = lens _ruOauthToken (\ s a -> s{_ruOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' ReadgroupsetsUpdate' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

-- | Data format for the response.
ruAlt :: Lens' ReadgroupsetsUpdate' Alt
ruAlt = lens _ruAlt (\ s a -> s{_ruAlt = a})

instance GoogleRequest ReadgroupsetsUpdate' where
        type Rs ReadgroupsetsUpdate' = ReadGroupSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsUpdate'{..}
          = go _ruQuotaUser (Just _ruPrettyPrint)
              _ruReadGroupSetId
              _ruUserIp
              _ruKey
              _ruOauthToken
              _ruFields
              (Just _ruAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsUpdateResource)
                      r
                      u
