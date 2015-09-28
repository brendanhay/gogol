{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variantsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a variant set by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variantsets.get@.
module Network.Google.API.Genomics.Variantsets.Get
    (
    -- * REST Resource
      VariantsetsGetAPI

    -- * Creating a Request
    , variantsetsGet'
    , VariantsetsGet'

    -- * Request Lenses
    , vggQuotaUser
    , vggPrettyPrint
    , vggVariantSetId
    , vggUserIp
    , vggKey
    , vggOauthToken
    , vggFields
    , vggAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.variantsets.get which the
-- 'VariantsetsGet'' request conforms to.
type VariantsetsGetAPI =
     "variantsets" :>
       Capture "variantSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] VariantSet

-- | Gets a variant set by ID.
--
-- /See:/ 'variantsetsGet'' smart constructor.
data VariantsetsGet' = VariantsetsGet'
    { _vggQuotaUser    :: !(Maybe Text)
    , _vggPrettyPrint  :: !Bool
    , _vggVariantSetId :: !Text
    , _vggUserIp       :: !(Maybe Text)
    , _vggKey          :: !(Maybe Text)
    , _vggOauthToken   :: !(Maybe Text)
    , _vggFields       :: !(Maybe Text)
    , _vggAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vggQuotaUser'
--
-- * 'vggPrettyPrint'
--
-- * 'vggVariantSetId'
--
-- * 'vggUserIp'
--
-- * 'vggKey'
--
-- * 'vggOauthToken'
--
-- * 'vggFields'
--
-- * 'vggAlt'
variantsetsGet'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsGet'
variantsetsGet' pVggVariantSetId_ =
    VariantsetsGet'
    { _vggQuotaUser = Nothing
    , _vggPrettyPrint = True
    , _vggVariantSetId = pVggVariantSetId_
    , _vggUserIp = Nothing
    , _vggKey = Nothing
    , _vggOauthToken = Nothing
    , _vggFields = Nothing
    , _vggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vggQuotaUser :: Lens' VariantsetsGet' (Maybe Text)
vggQuotaUser
  = lens _vggQuotaUser (\ s a -> s{_vggQuotaUser = a})

-- | Returns response with indentations and line breaks.
vggPrettyPrint :: Lens' VariantsetsGet' Bool
vggPrettyPrint
  = lens _vggPrettyPrint
      (\ s a -> s{_vggPrettyPrint = a})

-- | Required. The ID of the variant set.
vggVariantSetId :: Lens' VariantsetsGet' Text
vggVariantSetId
  = lens _vggVariantSetId
      (\ s a -> s{_vggVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vggUserIp :: Lens' VariantsetsGet' (Maybe Text)
vggUserIp
  = lens _vggUserIp (\ s a -> s{_vggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vggKey :: Lens' VariantsetsGet' (Maybe Text)
vggKey = lens _vggKey (\ s a -> s{_vggKey = a})

-- | OAuth 2.0 token for the current user.
vggOauthToken :: Lens' VariantsetsGet' (Maybe Text)
vggOauthToken
  = lens _vggOauthToken
      (\ s a -> s{_vggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vggFields :: Lens' VariantsetsGet' (Maybe Text)
vggFields
  = lens _vggFields (\ s a -> s{_vggFields = a})

-- | Data format for the response.
vggAlt :: Lens' VariantsetsGet' Alt
vggAlt = lens _vggAlt (\ s a -> s{_vggAlt = a})

instance GoogleRequest VariantsetsGet' where
        type Rs VariantsetsGet' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsGet'{..}
          = go _vggQuotaUser (Just _vggPrettyPrint)
              _vggVariantSetId
              _vggUserIp
              _vggKey
              _vggOauthToken
              _vggFields
              (Just _vggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy VariantsetsGetAPI)
                      r
                      u
