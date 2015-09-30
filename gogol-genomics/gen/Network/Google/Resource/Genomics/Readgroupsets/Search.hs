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
    , reaUserIp
    , reaKey
    , reaOauthToken
    , reaFields
    , reaAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] SearchReadGroupSetsResponse

-- | Searches for read group sets matching the criteria. Implements
-- GlobalAllianceApi.searchReadGroupSets.
--
-- /See:/ 'readgroupsetsSearch'' smart constructor.
data ReadgroupsetsSearch' = ReadgroupsetsSearch'
    { _reaQuotaUser   :: !(Maybe Text)
    , _reaPrettyPrint :: !Bool
    , _reaUserIp      :: !(Maybe Text)
    , _reaKey         :: !(Maybe Text)
    , _reaOauthToken  :: !(Maybe Text)
    , _reaFields      :: !(Maybe Text)
    , _reaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaQuotaUser'
--
-- * 'reaPrettyPrint'
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
readgroupsetsSearch'
    :: ReadgroupsetsSearch'
readgroupsetsSearch' =
    ReadgroupsetsSearch'
    { _reaQuotaUser = Nothing
    , _reaPrettyPrint = True
    , _reaUserIp = Nothing
    , _reaKey = Nothing
    , _reaOauthToken = Nothing
    , _reaFields = Nothing
    , _reaAlt = JSON
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
reaUserIp :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaUserIp
  = lens _reaUserIp (\ s a -> s{_reaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reaKey :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaKey = lens _reaKey (\ s a -> s{_reaKey = a})

-- | OAuth 2.0 token for the current user.
reaOauthToken :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaOauthToken
  = lens _reaOauthToken
      (\ s a -> s{_reaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
reaFields :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaFields
  = lens _reaFields (\ s a -> s{_reaFields = a})

-- | Data format for the response.
reaAlt :: Lens' ReadgroupsetsSearch' Alt
reaAlt = lens _reaAlt (\ s a -> s{_reaAlt = a})

instance GoogleRequest ReadgroupsetsSearch' where
        type Rs ReadgroupsetsSearch' =
             SearchReadGroupSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsSearch'{..}
          = go _reaQuotaUser (Just _reaPrettyPrint) _reaUserIp
              _reaKey
              _reaOauthToken
              _reaFields
              (Just _reaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsSearchResource)
                      r
                      u
