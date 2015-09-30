{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a read group set. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsPatch@.
module Genomics.Readgroupsets.Patch
    (
    -- * REST Resource
      ReadgroupsetsPatchAPI

    -- * Creating a Request
    , readgroupsetsPatch
    , ReadgroupsetsPatch

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpReadGroupSetId
    , rpUserIp
    , rpKey
    , rpOauthToken
    , rpFields
    , rpAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsPatch@ which the
-- 'ReadgroupsetsPatch' request conforms to.
type ReadgroupsetsPatchAPI =
     "readgroupsets" :>
       Capture "readGroupSetId" Text :>
         Patch '[JSON] ReadGroupSet

-- | Updates a read group set. This method supports patch semantics.
--
-- /See:/ 'readgroupsetsPatch' smart constructor.
data ReadgroupsetsPatch = ReadgroupsetsPatch
    { _rpQuotaUser      :: !(Maybe Text)
    , _rpPrettyPrint    :: !Bool
    , _rpReadGroupSetId :: !Text
    , _rpUserIp         :: !(Maybe Text)
    , _rpKey            :: !(Maybe Text)
    , _rpOauthToken     :: !(Maybe Text)
    , _rpFields         :: !(Maybe Text)
    , _rpAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpReadGroupSetId'
--
-- * 'rpUserIp'
--
-- * 'rpKey'
--
-- * 'rpOauthToken'
--
-- * 'rpFields'
--
-- * 'rpAlt'
readgroupsetsPatch
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsPatch
readgroupsetsPatch pRpReadGroupSetId_ =
    ReadgroupsetsPatch
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpReadGroupSetId = pRpReadGroupSetId_
    , _rpUserIp = Nothing
    , _rpKey = Nothing
    , _rpOauthToken = Nothing
    , _rpFields = Nothing
    , _rpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpQuotaUser :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpQuotaUser
  = lens _rpQuotaUser (\ s a -> s{_rpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpPrettyPrint :: Lens' ReadgroupsetsPatch' Bool
rpPrettyPrint
  = lens _rpPrettyPrint
      (\ s a -> s{_rpPrettyPrint = a})

-- | The ID of the read group set to be updated. The caller must have WRITE
-- permissions to the dataset associated with this read group set.
rpReadGroupSetId :: Lens' ReadgroupsetsPatch' Text
rpReadGroupSetId
  = lens _rpReadGroupSetId
      (\ s a -> s{_rpReadGroupSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpUserIp :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpUserIp = lens _rpUserIp (\ s a -> s{_rpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | OAuth 2.0 token for the current user.
rpOauthToken :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpOauthToken
  = lens _rpOauthToken (\ s a -> s{_rpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

-- | Data format for the response.
rpAlt :: Lens' ReadgroupsetsPatch' Text
rpAlt = lens _rpAlt (\ s a -> s{_rpAlt = a})

instance GoogleRequest ReadgroupsetsPatch' where
        type Rs ReadgroupsetsPatch' = ReadGroupSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsPatch{..}
          = go _rpQuotaUser _rpPrettyPrint _rpReadGroupSetId
              _rpUserIp
              _rpKey
              _rpOauthToken
              _rpFields
              _rpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsPatchAPI)
                      r
                      u
