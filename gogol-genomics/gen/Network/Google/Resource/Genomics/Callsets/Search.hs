{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Callsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of call sets matching the criteria. Implements
-- GlobalAllianceApi.searchCallSets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsCallsetsSearch@.
module Genomics.Callsets.Search
    (
    -- * REST Resource
      CallsetsSearchAPI

    -- * Creating a Request
    , callsetsSearch
    , CallsetsSearch

    -- * Request Lenses
    , csQuotaUser
    , csPrettyPrint
    , csUserIp
    , csKey
    , csOauthToken
    , csFields
    , csAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsSearch@ which the
-- 'CallsetsSearch' request conforms to.
type CallsetsSearchAPI =
     "callsets" :>
       "search" :> Post '[JSON] SearchCallSetsResponse

-- | Gets a list of call sets matching the criteria. Implements
-- GlobalAllianceApi.searchCallSets.
--
-- /See:/ 'callsetsSearch' smart constructor.
data CallsetsSearch = CallsetsSearch
    { _csQuotaUser   :: !(Maybe Text)
    , _csPrettyPrint :: !Bool
    , _csUserIp      :: !(Maybe Text)
    , _csKey         :: !(Maybe Text)
    , _csOauthToken  :: !(Maybe Text)
    , _csFields      :: !(Maybe Text)
    , _csAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csQuotaUser'
--
-- * 'csPrettyPrint'
--
-- * 'csUserIp'
--
-- * 'csKey'
--
-- * 'csOauthToken'
--
-- * 'csFields'
--
-- * 'csAlt'
callsetsSearch
    :: CallsetsSearch
callsetsSearch =
    CallsetsSearch
    { _csQuotaUser = Nothing
    , _csPrettyPrint = True
    , _csUserIp = Nothing
    , _csKey = Nothing
    , _csOauthToken = Nothing
    , _csFields = Nothing
    , _csAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
csQuotaUser :: Lens' CallsetsSearch' (Maybe Text)
csQuotaUser
  = lens _csQuotaUser (\ s a -> s{_csQuotaUser = a})

-- | Returns response with indentations and line breaks.
csPrettyPrint :: Lens' CallsetsSearch' Bool
csPrettyPrint
  = lens _csPrettyPrint
      (\ s a -> s{_csPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
csUserIp :: Lens' CallsetsSearch' (Maybe Text)
csUserIp = lens _csUserIp (\ s a -> s{_csUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csKey :: Lens' CallsetsSearch' (Maybe Text)
csKey = lens _csKey (\ s a -> s{_csKey = a})

-- | OAuth 2.0 token for the current user.
csOauthToken :: Lens' CallsetsSearch' (Maybe Text)
csOauthToken
  = lens _csOauthToken (\ s a -> s{_csOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
csFields :: Lens' CallsetsSearch' (Maybe Text)
csFields = lens _csFields (\ s a -> s{_csFields = a})

-- | Data format for the response.
csAlt :: Lens' CallsetsSearch' Text
csAlt = lens _csAlt (\ s a -> s{_csAlt = a})

instance GoogleRequest CallsetsSearch' where
        type Rs CallsetsSearch' = SearchCallSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsSearch{..}
          = go _csQuotaUser _csPrettyPrint _csUserIp _csKey
              _csOauthToken
              _csFields
              _csAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CallsetsSearchAPI)
                      r
                      u
