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
-- Module      : Network.Google.Resource.Genomics.Variants.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a variant by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsGet@.
module Network.Google.Resource.Genomics.Variants.Get
    (
    -- * REST Resource
      VariantsGetResource

    -- * Creating a Request
    , variantsGet'
    , VariantsGet'

    -- * Request Lenses
    , vggQuotaUser
    , vggPrettyPrint
    , vggUserIp
    , vggKey
    , vggVariantId
    , vggOauthToken
    , vggFields
    , vggAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsGet@ which the
-- 'VariantsGet'' request conforms to.
type VariantsGetResource =
     "variants" :>
       Capture "variantId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Variant

-- | Gets a variant by ID.
--
-- /See:/ 'variantsGet'' smart constructor.
data VariantsGet' = VariantsGet'
    { _vggQuotaUser   :: !(Maybe Text)
    , _vggPrettyPrint :: !Bool
    , _vggUserIp      :: !(Maybe Text)
    , _vggKey         :: !(Maybe Text)
    , _vggVariantId   :: !Text
    , _vggOauthToken  :: !(Maybe Text)
    , _vggFields      :: !(Maybe Text)
    , _vggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vggQuotaUser'
--
-- * 'vggPrettyPrint'
--
-- * 'vggUserIp'
--
-- * 'vggKey'
--
-- * 'vggVariantId'
--
-- * 'vggOauthToken'
--
-- * 'vggFields'
--
-- * 'vggAlt'
variantsGet'
    :: Text -- ^ 'variantId'
    -> VariantsGet'
variantsGet' pVggVariantId_ =
    VariantsGet'
    { _vggQuotaUser = Nothing
    , _vggPrettyPrint = True
    , _vggUserIp = Nothing
    , _vggKey = Nothing
    , _vggVariantId = pVggVariantId_
    , _vggOauthToken = Nothing
    , _vggFields = Nothing
    , _vggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vggQuotaUser :: Lens' VariantsGet' (Maybe Text)
vggQuotaUser
  = lens _vggQuotaUser (\ s a -> s{_vggQuotaUser = a})

-- | Returns response with indentations and line breaks.
vggPrettyPrint :: Lens' VariantsGet' Bool
vggPrettyPrint
  = lens _vggPrettyPrint
      (\ s a -> s{_vggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vggUserIp :: Lens' VariantsGet' (Maybe Text)
vggUserIp
  = lens _vggUserIp (\ s a -> s{_vggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vggKey :: Lens' VariantsGet' (Maybe Text)
vggKey = lens _vggKey (\ s a -> s{_vggKey = a})

-- | The ID of the variant.
vggVariantId :: Lens' VariantsGet' Text
vggVariantId
  = lens _vggVariantId (\ s a -> s{_vggVariantId = a})

-- | OAuth 2.0 token for the current user.
vggOauthToken :: Lens' VariantsGet' (Maybe Text)
vggOauthToken
  = lens _vggOauthToken
      (\ s a -> s{_vggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vggFields :: Lens' VariantsGet' (Maybe Text)
vggFields
  = lens _vggFields (\ s a -> s{_vggFields = a})

-- | Data format for the response.
vggAlt :: Lens' VariantsGet' Alt
vggAlt = lens _vggAlt (\ s a -> s{_vggAlt = a})

instance GoogleRequest VariantsGet' where
        type Rs VariantsGet' = Variant
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsGet'{..}
          = go _vggQuotaUser (Just _vggPrettyPrint) _vggUserIp
              _vggKey
              _vggVariantId
              _vggOauthToken
              _vggFields
              (Just _vggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsGetResource)
                      r
                      u
