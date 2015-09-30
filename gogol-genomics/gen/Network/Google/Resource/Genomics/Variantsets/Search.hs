{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of all variant sets matching search criteria. Implements
-- GlobalAllianceApi.searchVariantSets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsSearch@.
module Genomics.Variantsets.Search
    (
    -- * REST Resource
      VariantsetsSearchAPI

    -- * Creating a Request
    , variantsetsSearch
    , VariantsetsSearch

    -- * Request Lenses
    , vssQuotaUser
    , vssPrettyPrint
    , vssUserIp
    , vssKey
    , vssOauthToken
    , vssFields
    , vssAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsSearch@ which the
-- 'VariantsetsSearch' request conforms to.
type VariantsetsSearchAPI =
     "variantsets" :>
       "search" :> Post '[JSON] SearchVariantSetsResponse

-- | Returns a list of all variant sets matching search criteria. Implements
-- GlobalAllianceApi.searchVariantSets.
--
-- /See:/ 'variantsetsSearch' smart constructor.
data VariantsetsSearch = VariantsetsSearch
    { _vssQuotaUser   :: !(Maybe Text)
    , _vssPrettyPrint :: !Bool
    , _vssUserIp      :: !(Maybe Text)
    , _vssKey         :: !(Maybe Text)
    , _vssOauthToken  :: !(Maybe Text)
    , _vssFields      :: !(Maybe Text)
    , _vssAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vssQuotaUser'
--
-- * 'vssPrettyPrint'
--
-- * 'vssUserIp'
--
-- * 'vssKey'
--
-- * 'vssOauthToken'
--
-- * 'vssFields'
--
-- * 'vssAlt'
variantsetsSearch
    :: VariantsetsSearch
variantsetsSearch =
    VariantsetsSearch
    { _vssQuotaUser = Nothing
    , _vssPrettyPrint = True
    , _vssUserIp = Nothing
    , _vssKey = Nothing
    , _vssOauthToken = Nothing
    , _vssFields = Nothing
    , _vssAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vssQuotaUser :: Lens' VariantsetsSearch' (Maybe Text)
vssQuotaUser
  = lens _vssQuotaUser (\ s a -> s{_vssQuotaUser = a})

-- | Returns response with indentations and line breaks.
vssPrettyPrint :: Lens' VariantsetsSearch' Bool
vssPrettyPrint
  = lens _vssPrettyPrint
      (\ s a -> s{_vssPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vssUserIp :: Lens' VariantsetsSearch' (Maybe Text)
vssUserIp
  = lens _vssUserIp (\ s a -> s{_vssUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vssKey :: Lens' VariantsetsSearch' (Maybe Text)
vssKey = lens _vssKey (\ s a -> s{_vssKey = a})

-- | OAuth 2.0 token for the current user.
vssOauthToken :: Lens' VariantsetsSearch' (Maybe Text)
vssOauthToken
  = lens _vssOauthToken
      (\ s a -> s{_vssOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vssFields :: Lens' VariantsetsSearch' (Maybe Text)
vssFields
  = lens _vssFields (\ s a -> s{_vssFields = a})

-- | Data format for the response.
vssAlt :: Lens' VariantsetsSearch' Text
vssAlt = lens _vssAlt (\ s a -> s{_vssAlt = a})

instance GoogleRequest VariantsetsSearch' where
        type Rs VariantsetsSearch' =
             SearchVariantSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsSearch{..}
          = go _vssQuotaUser _vssPrettyPrint _vssUserIp _vssKey
              _vssOauthToken
              _vssFields
              _vssAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsSearchAPI)
                      r
                      u
