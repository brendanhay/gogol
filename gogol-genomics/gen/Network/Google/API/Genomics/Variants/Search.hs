{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variants.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of variants matching the criteria. Implements
-- GlobalAllianceApi.searchVariants.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variants.search@.
module Network.Google.API.Genomics.Variants.Search
    (
    -- * REST Resource
      VariantsSearchAPI

    -- * Creating a Request
    , variantsSearch'
    , VariantsSearch'

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

-- | A resource alias for genomics.variants.search which the
-- 'VariantsSearch'' request conforms to.
type VariantsSearchAPI =
     "variants" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] SearchVariantsResponse

-- | Gets a list of variants matching the criteria. Implements
-- GlobalAllianceApi.searchVariants.
--
-- /See:/ 'variantsSearch'' smart constructor.
data VariantsSearch' = VariantsSearch'
    { _vssQuotaUser   :: !(Maybe Text)
    , _vssPrettyPrint :: !Bool
    , _vssUserIp      :: !(Maybe Text)
    , _vssKey         :: !(Maybe Text)
    , _vssOauthToken  :: !(Maybe Text)
    , _vssFields      :: !(Maybe Text)
    , _vssAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsSearch'' with the minimum fields required to make a request.
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
variantsSearch'
    :: VariantsSearch'
variantsSearch' =
    VariantsSearch'
    { _vssQuotaUser = Nothing
    , _vssPrettyPrint = True
    , _vssUserIp = Nothing
    , _vssKey = Nothing
    , _vssOauthToken = Nothing
    , _vssFields = Nothing
    , _vssAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vssQuotaUser :: Lens' VariantsSearch' (Maybe Text)
vssQuotaUser
  = lens _vssQuotaUser (\ s a -> s{_vssQuotaUser = a})

-- | Returns response with indentations and line breaks.
vssPrettyPrint :: Lens' VariantsSearch' Bool
vssPrettyPrint
  = lens _vssPrettyPrint
      (\ s a -> s{_vssPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vssUserIp :: Lens' VariantsSearch' (Maybe Text)
vssUserIp
  = lens _vssUserIp (\ s a -> s{_vssUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vssKey :: Lens' VariantsSearch' (Maybe Text)
vssKey = lens _vssKey (\ s a -> s{_vssKey = a})

-- | OAuth 2.0 token for the current user.
vssOauthToken :: Lens' VariantsSearch' (Maybe Text)
vssOauthToken
  = lens _vssOauthToken
      (\ s a -> s{_vssOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vssFields :: Lens' VariantsSearch' (Maybe Text)
vssFields
  = lens _vssFields (\ s a -> s{_vssFields = a})

-- | Data format for the response.
vssAlt :: Lens' VariantsSearch' Alt
vssAlt = lens _vssAlt (\ s a -> s{_vssAlt = a})

instance GoogleRequest VariantsSearch' where
        type Rs VariantsSearch' = SearchVariantsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsSearch'{..}
          = go _vssQuotaUser (Just _vssPrettyPrint) _vssUserIp
              _vssKey
              _vssOauthToken
              _vssFields
              (Just _vssAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy VariantsSearchAPI)
                      r
                      u
