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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsUpdate@.
module Network.Google.Resource.Genomics.Variantsets.Update
    (
    -- * REST Resource
      VariantsetsUpdateResource

    -- * Creating a Request
    , variantsetsUpdate'
    , VariantsetsUpdate'

    -- * Request Lenses
    , vuuQuotaUser
    , vuuPrettyPrint
    , vuuVariantSetId
    , vuuUserIp
    , vuuKey
    , vuuOauthToken
    , vuuFields
    , vuuAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsUpdate@ which the
-- 'VariantsetsUpdate'' request conforms to.
type VariantsetsUpdateResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] VariantSet

-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored.
--
-- /See:/ 'variantsetsUpdate'' smart constructor.
data VariantsetsUpdate' = VariantsetsUpdate'
    { _vuuQuotaUser    :: !(Maybe Text)
    , _vuuPrettyPrint  :: !Bool
    , _vuuVariantSetId :: !Text
    , _vuuUserIp       :: !(Maybe Text)
    , _vuuKey          :: !(Maybe Text)
    , _vuuOauthToken   :: !(Maybe Text)
    , _vuuFields       :: !(Maybe Text)
    , _vuuAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuuQuotaUser'
--
-- * 'vuuPrettyPrint'
--
-- * 'vuuVariantSetId'
--
-- * 'vuuUserIp'
--
-- * 'vuuKey'
--
-- * 'vuuOauthToken'
--
-- * 'vuuFields'
--
-- * 'vuuAlt'
variantsetsUpdate'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsUpdate'
variantsetsUpdate' pVuuVariantSetId_ =
    VariantsetsUpdate'
    { _vuuQuotaUser = Nothing
    , _vuuPrettyPrint = True
    , _vuuVariantSetId = pVuuVariantSetId_
    , _vuuUserIp = Nothing
    , _vuuKey = Nothing
    , _vuuOauthToken = Nothing
    , _vuuFields = Nothing
    , _vuuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vuuQuotaUser :: Lens' VariantsetsUpdate' (Maybe Text)
vuuQuotaUser
  = lens _vuuQuotaUser (\ s a -> s{_vuuQuotaUser = a})

-- | Returns response with indentations and line breaks.
vuuPrettyPrint :: Lens' VariantsetsUpdate' Bool
vuuPrettyPrint
  = lens _vuuPrettyPrint
      (\ s a -> s{_vuuPrettyPrint = a})

-- | The ID of the variant to be updated (must already exist).
vuuVariantSetId :: Lens' VariantsetsUpdate' Text
vuuVariantSetId
  = lens _vuuVariantSetId
      (\ s a -> s{_vuuVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vuuUserIp :: Lens' VariantsetsUpdate' (Maybe Text)
vuuUserIp
  = lens _vuuUserIp (\ s a -> s{_vuuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vuuKey :: Lens' VariantsetsUpdate' (Maybe Text)
vuuKey = lens _vuuKey (\ s a -> s{_vuuKey = a})

-- | OAuth 2.0 token for the current user.
vuuOauthToken :: Lens' VariantsetsUpdate' (Maybe Text)
vuuOauthToken
  = lens _vuuOauthToken
      (\ s a -> s{_vuuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vuuFields :: Lens' VariantsetsUpdate' (Maybe Text)
vuuFields
  = lens _vuuFields (\ s a -> s{_vuuFields = a})

-- | Data format for the response.
vuuAlt :: Lens' VariantsetsUpdate' Alt
vuuAlt = lens _vuuAlt (\ s a -> s{_vuuAlt = a})

instance GoogleRequest VariantsetsUpdate' where
        type Rs VariantsetsUpdate' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsUpdate'{..}
          = go _vuuQuotaUser (Just _vuuPrettyPrint)
              _vuuVariantSetId
              _vuuUserIp
              _vuuKey
              _vuuOauthToken
              _vuuFields
              (Just _vuuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsUpdateResource)
                      r
                      u
