{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a variant set by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsGet@.
module Genomics.Variantsets.Get
    (
    -- * REST Resource
      VariantsetsGetAPI

    -- * Creating a Request
    , variantsetsGet
    , VariantsetsGet

    -- * Request Lenses
    , varQuotaUser
    , varPrettyPrint
    , varVariantSetId
    , varUserIp
    , varKey
    , varOauthToken
    , varFields
    , varAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsGet@ which the
-- 'VariantsetsGet' request conforms to.
type VariantsetsGetAPI =
     "variantsets" :>
       Capture "variantSetId" Text :> Get '[JSON] VariantSet

-- | Gets a variant set by ID.
--
-- /See:/ 'variantsetsGet' smart constructor.
data VariantsetsGet = VariantsetsGet
    { _varQuotaUser    :: !(Maybe Text)
    , _varPrettyPrint  :: !Bool
    , _varVariantSetId :: !Text
    , _varUserIp       :: !(Maybe Text)
    , _varKey          :: !(Maybe Text)
    , _varOauthToken   :: !(Maybe Text)
    , _varFields       :: !(Maybe Text)
    , _varAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varQuotaUser'
--
-- * 'varPrettyPrint'
--
-- * 'varVariantSetId'
--
-- * 'varUserIp'
--
-- * 'varKey'
--
-- * 'varOauthToken'
--
-- * 'varFields'
--
-- * 'varAlt'
variantsetsGet
    :: Text -- ^ 'variantSetId'
    -> VariantsetsGet
variantsetsGet pVarVariantSetId_ =
    VariantsetsGet
    { _varQuotaUser = Nothing
    , _varPrettyPrint = True
    , _varVariantSetId = pVarVariantSetId_
    , _varUserIp = Nothing
    , _varKey = Nothing
    , _varOauthToken = Nothing
    , _varFields = Nothing
    , _varAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
varQuotaUser :: Lens' VariantsetsGet' (Maybe Text)
varQuotaUser
  = lens _varQuotaUser (\ s a -> s{_varQuotaUser = a})

-- | Returns response with indentations and line breaks.
varPrettyPrint :: Lens' VariantsetsGet' Bool
varPrettyPrint
  = lens _varPrettyPrint
      (\ s a -> s{_varPrettyPrint = a})

-- | Required. The ID of the variant set.
varVariantSetId :: Lens' VariantsetsGet' Text
varVariantSetId
  = lens _varVariantSetId
      (\ s a -> s{_varVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
varUserIp :: Lens' VariantsetsGet' (Maybe Text)
varUserIp
  = lens _varUserIp (\ s a -> s{_varUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
varKey :: Lens' VariantsetsGet' (Maybe Text)
varKey = lens _varKey (\ s a -> s{_varKey = a})

-- | OAuth 2.0 token for the current user.
varOauthToken :: Lens' VariantsetsGet' (Maybe Text)
varOauthToken
  = lens _varOauthToken
      (\ s a -> s{_varOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
varFields :: Lens' VariantsetsGet' (Maybe Text)
varFields
  = lens _varFields (\ s a -> s{_varFields = a})

-- | Data format for the response.
varAlt :: Lens' VariantsetsGet' Text
varAlt = lens _varAlt (\ s a -> s{_varAlt = a})

instance GoogleRequest VariantsetsGet' where
        type Rs VariantsetsGet' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsGet{..}
          = go _varQuotaUser _varPrettyPrint _varVariantSetId
              _varUserIp
              _varKey
              _varOauthToken
              _varFields
              _varAlt
          where go
                  = clientWithRoute (Proxy :: Proxy VariantsetsGetAPI)
                      r
                      u
