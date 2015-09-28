{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variantsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of all variant sets matching search criteria. Implements
-- GlobalAllianceApi.searchVariantSets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variantsets.search@.
module Network.Google.API.Genomics.Variantsets.Search
    (
    -- * REST Resource
      VariantsetsSearchAPI

    -- * Creating a Request
    , variantsetsSearch'
    , VariantsetsSearch'

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

-- | A resource alias for genomics.variantsets.search which the
-- 'VariantsetsSearch'' request conforms to.
type VariantsetsSearchAPI =
     "variantsets" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] SearchVariantSetsResponse

-- | Returns a list of all variant sets matching search criteria. Implements
-- GlobalAllianceApi.searchVariantSets.
--
-- /See:/ 'variantsetsSearch'' smart constructor.
data VariantsetsSearch' = VariantsetsSearch'
    { _vsQuotaUser   :: !(Maybe Text)
    , _vsPrettyPrint :: !Bool
    , _vsUserIp      :: !(Maybe Text)
    , _vsKey         :: !(Maybe Text)
    , _vsOauthToken  :: !(Maybe Text)
    , _vsFields      :: !(Maybe Text)
    , _vsAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsSearch'' with the minimum fields required to make a request.
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
variantsetsSearch'
    :: VariantsetsSearch'
variantsetsSearch' =
    VariantsetsSearch'
    { _vsQuotaUser = Nothing
    , _vsPrettyPrint = True
    , _vsUserIp = Nothing
    , _vsKey = Nothing
    , _vsOauthToken = Nothing
    , _vsFields = Nothing
    , _vsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vsQuotaUser :: Lens' VariantsetsSearch' (Maybe Text)
vsQuotaUser
  = lens _vsQuotaUser (\ s a -> s{_vsQuotaUser = a})

-- | Returns response with indentations and line breaks.
vsPrettyPrint :: Lens' VariantsetsSearch' Bool
vsPrettyPrint
  = lens _vsPrettyPrint
      (\ s a -> s{_vsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vsUserIp :: Lens' VariantsetsSearch' (Maybe Text)
vsUserIp = lens _vsUserIp (\ s a -> s{_vsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vsKey :: Lens' VariantsetsSearch' (Maybe Text)
vsKey = lens _vsKey (\ s a -> s{_vsKey = a})

-- | OAuth 2.0 token for the current user.
vsOauthToken :: Lens' VariantsetsSearch' (Maybe Text)
vsOauthToken
  = lens _vsOauthToken (\ s a -> s{_vsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vsFields :: Lens' VariantsetsSearch' (Maybe Text)
vsFields = lens _vsFields (\ s a -> s{_vsFields = a})

-- | Data format for the response.
vsAlt :: Lens' VariantsetsSearch' Alt
vsAlt = lens _vsAlt (\ s a -> s{_vsAlt = a})

instance GoogleRequest VariantsetsSearch' where
        type Rs VariantsetsSearch' =
             SearchVariantSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsSearch'{..}
          = go _vsQuotaUser (Just _vsPrettyPrint) _vsUserIp
              _vsKey
              _vsOauthToken
              _vsFields
              (Just _vsAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsSearchAPI)
                      r
                      u
