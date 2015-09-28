{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variants.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a variant by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variants.get@.
module Network.Google.API.Genomics.Variants.Get
    (
    -- * REST Resource
      VariantsGetAPI

    -- * Creating a Request
    , variantsGet'
    , VariantsGet'

    -- * Request Lenses
    , vgQuotaUser
    , vgPrettyPrint
    , vgUserIp
    , vgKey
    , vgVariantId
    , vgOauthToken
    , vgFields
    , vgAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.variants.get which the
-- 'VariantsGet'' request conforms to.
type VariantsGetAPI =
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
    { _vgQuotaUser   :: !(Maybe Text)
    , _vgPrettyPrint :: !Bool
    , _vgUserIp      :: !(Maybe Text)
    , _vgKey         :: !(Maybe Text)
    , _vgVariantId   :: !Text
    , _vgOauthToken  :: !(Maybe Text)
    , _vgFields      :: !(Maybe Text)
    , _vgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgQuotaUser'
--
-- * 'vgPrettyPrint'
--
-- * 'vgUserIp'
--
-- * 'vgKey'
--
-- * 'vgVariantId'
--
-- * 'vgOauthToken'
--
-- * 'vgFields'
--
-- * 'vgAlt'
variantsGet'
    :: Text -- ^ 'variantId'
    -> VariantsGet'
variantsGet' pVgVariantId_ =
    VariantsGet'
    { _vgQuotaUser = Nothing
    , _vgPrettyPrint = True
    , _vgUserIp = Nothing
    , _vgKey = Nothing
    , _vgVariantId = pVgVariantId_
    , _vgOauthToken = Nothing
    , _vgFields = Nothing
    , _vgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vgQuotaUser :: Lens' VariantsGet' (Maybe Text)
vgQuotaUser
  = lens _vgQuotaUser (\ s a -> s{_vgQuotaUser = a})

-- | Returns response with indentations and line breaks.
vgPrettyPrint :: Lens' VariantsGet' Bool
vgPrettyPrint
  = lens _vgPrettyPrint
      (\ s a -> s{_vgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vgUserIp :: Lens' VariantsGet' (Maybe Text)
vgUserIp = lens _vgUserIp (\ s a -> s{_vgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vgKey :: Lens' VariantsGet' (Maybe Text)
vgKey = lens _vgKey (\ s a -> s{_vgKey = a})

-- | The ID of the variant.
vgVariantId :: Lens' VariantsGet' Text
vgVariantId
  = lens _vgVariantId (\ s a -> s{_vgVariantId = a})

-- | OAuth 2.0 token for the current user.
vgOauthToken :: Lens' VariantsGet' (Maybe Text)
vgOauthToken
  = lens _vgOauthToken (\ s a -> s{_vgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vgFields :: Lens' VariantsGet' (Maybe Text)
vgFields = lens _vgFields (\ s a -> s{_vgFields = a})

-- | Data format for the response.
vgAlt :: Lens' VariantsGet' Alt
vgAlt = lens _vgAlt (\ s a -> s{_vgAlt = a})

instance GoogleRequest VariantsGet' where
        type Rs VariantsGet' = Variant
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsGet'{..}
          = go _vgQuotaUser (Just _vgPrettyPrint) _vgUserIp
              _vgKey
              _vgVariantId
              _vgOauthToken
              _vgFields
              (Just _vgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy VariantsGetAPI) r u
