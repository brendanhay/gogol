{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variants.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of variants matching the criteria. Implements
-- GlobalAllianceApi.searchVariants.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsSearch@.
module Genomics.Variants.Search
    (
    -- * REST Resource
      VariantsSearchAPI

    -- * Creating a Request
    , variantsSearch
    , VariantsSearch

    -- * Request Lenses
    , vsQuotaUser
    , vsPrettyPrint
    , vsUserIp
    , vsKey
    , vsOauthToken
    , vsFields
    , vsAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsSearch@ which the
-- 'VariantsSearch' request conforms to.
type VariantsSearchAPI =
     "variants" :>
       "search" :> Post '[JSON] SearchVariantsResponse

-- | Gets a list of variants matching the criteria. Implements
-- GlobalAllianceApi.searchVariants.
--
-- /See:/ 'variantsSearch' smart constructor.
data VariantsSearch = VariantsSearch
    { _vsQuotaUser   :: !(Maybe Text)
    , _vsPrettyPrint :: !Bool
    , _vsUserIp      :: !(Maybe Text)
    , _vsKey         :: !(Maybe Text)
    , _vsOauthToken  :: !(Maybe Text)
    , _vsFields      :: !(Maybe Text)
    , _vsAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsQuotaUser'
--
-- * 'vsPrettyPrint'
--
-- * 'vsUserIp'
--
-- * 'vsKey'
--
-- * 'vsOauthToken'
--
-- * 'vsFields'
--
-- * 'vsAlt'
variantsSearch
    :: VariantsSearch
variantsSearch =
    VariantsSearch
    { _vsQuotaUser = Nothing
    , _vsPrettyPrint = True
    , _vsUserIp = Nothing
    , _vsKey = Nothing
    , _vsOauthToken = Nothing
    , _vsFields = Nothing
    , _vsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vsQuotaUser :: Lens' VariantsSearch' (Maybe Text)
vsQuotaUser
  = lens _vsQuotaUser (\ s a -> s{_vsQuotaUser = a})

-- | Returns response with indentations and line breaks.
vsPrettyPrint :: Lens' VariantsSearch' Bool
vsPrettyPrint
  = lens _vsPrettyPrint
      (\ s a -> s{_vsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vsUserIp :: Lens' VariantsSearch' (Maybe Text)
vsUserIp = lens _vsUserIp (\ s a -> s{_vsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vsKey :: Lens' VariantsSearch' (Maybe Text)
vsKey = lens _vsKey (\ s a -> s{_vsKey = a})

-- | OAuth 2.0 token for the current user.
vsOauthToken :: Lens' VariantsSearch' (Maybe Text)
vsOauthToken
  = lens _vsOauthToken (\ s a -> s{_vsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vsFields :: Lens' VariantsSearch' (Maybe Text)
vsFields = lens _vsFields (\ s a -> s{_vsFields = a})

-- | Data format for the response.
vsAlt :: Lens' VariantsSearch' Text
vsAlt = lens _vsAlt (\ s a -> s{_vsAlt = a})

instance GoogleRequest VariantsSearch' where
        type Rs VariantsSearch' = SearchVariantsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsSearch{..}
          = go _vsQuotaUser _vsPrettyPrint _vsUserIp _vsKey
              _vsOauthToken
              _vsFields
              _vsAlt
          where go
                  = clientWithRoute (Proxy :: Proxy VariantsSearchAPI)
                      r
                      u
