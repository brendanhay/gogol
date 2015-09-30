{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a read group set by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsGet@.
module Genomics.Readgroupsets.Get
    (
    -- * REST Resource
      ReadgroupsetsGetAPI

    -- * Creating a Request
    , readgroupsetsGet
    , ReadgroupsetsGet

    -- * Request Lenses
    , reaQuotaUser
    , reaPrettyPrint
    , reaReadGroupSetId
    , reaUserIp
    , reaKey
    , reaOauthToken
    , reaFields
    , reaAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsGet@ which the
-- 'ReadgroupsetsGet' request conforms to.
type ReadgroupsetsGetAPI =
     "readgroupsets" :>
       Capture "readGroupSetId" Text :>
         Get '[JSON] ReadGroupSet

-- | Gets a read group set by ID.
--
-- /See:/ 'readgroupsetsGet' smart constructor.
data ReadgroupsetsGet = ReadgroupsetsGet
    { _reaQuotaUser      :: !(Maybe Text)
    , _reaPrettyPrint    :: !Bool
    , _reaReadGroupSetId :: !Text
    , _reaUserIp         :: !(Maybe Text)
    , _reaKey            :: !(Maybe Text)
    , _reaOauthToken     :: !(Maybe Text)
    , _reaFields         :: !(Maybe Text)
    , _reaAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaQuotaUser'
--
-- * 'reaPrettyPrint'
--
-- * 'reaReadGroupSetId'
--
-- * 'reaUserIp'
--
-- * 'reaKey'
--
-- * 'reaOauthToken'
--
-- * 'reaFields'
--
-- * 'reaAlt'
readgroupsetsGet
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsGet
readgroupsetsGet pReaReadGroupSetId_ =
    ReadgroupsetsGet
    { _reaQuotaUser = Nothing
    , _reaPrettyPrint = True
    , _reaReadGroupSetId = pReaReadGroupSetId_
    , _reaUserIp = Nothing
    , _reaKey = Nothing
    , _reaOauthToken = Nothing
    , _reaFields = Nothing
    , _reaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
reaQuotaUser :: Lens' ReadgroupsetsGet' (Maybe Text)
reaQuotaUser
  = lens _reaQuotaUser (\ s a -> s{_reaQuotaUser = a})

-- | Returns response with indentations and line breaks.
reaPrettyPrint :: Lens' ReadgroupsetsGet' Bool
reaPrettyPrint
  = lens _reaPrettyPrint
      (\ s a -> s{_reaPrettyPrint = a})

-- | The ID of the read group set.
reaReadGroupSetId :: Lens' ReadgroupsetsGet' Text
reaReadGroupSetId
  = lens _reaReadGroupSetId
      (\ s a -> s{_reaReadGroupSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
reaUserIp :: Lens' ReadgroupsetsGet' (Maybe Text)
reaUserIp
  = lens _reaUserIp (\ s a -> s{_reaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reaKey :: Lens' ReadgroupsetsGet' (Maybe Text)
reaKey = lens _reaKey (\ s a -> s{_reaKey = a})

-- | OAuth 2.0 token for the current user.
reaOauthToken :: Lens' ReadgroupsetsGet' (Maybe Text)
reaOauthToken
  = lens _reaOauthToken
      (\ s a -> s{_reaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
reaFields :: Lens' ReadgroupsetsGet' (Maybe Text)
reaFields
  = lens _reaFields (\ s a -> s{_reaFields = a})

-- | Data format for the response.
reaAlt :: Lens' ReadgroupsetsGet' Text
reaAlt = lens _reaAlt (\ s a -> s{_reaAlt = a})

instance GoogleRequest ReadgroupsetsGet' where
        type Rs ReadgroupsetsGet' = ReadGroupSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsGet{..}
          = go _reaQuotaUser _reaPrettyPrint _reaReadGroupSetId
              _reaUserIp
              _reaKey
              _reaOauthToken
              _reaFields
              _reaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsGetAPI)
                      r
                      u
