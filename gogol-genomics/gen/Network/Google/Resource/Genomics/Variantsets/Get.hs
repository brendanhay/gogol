{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
module Network.Google.Resource.Genomics.Variantsets.Get
    (
    -- * REST Resource
      VariantsetsGetResource

    -- * Creating a Request
    , variantsetsGet'
    , VariantsetsGet'

    -- * Request Lenses
    , vgQuotaUser
    , vgPrettyPrint
    , vgVariantSetId
    , vgUserIP
    , vgKey
    , vgOAuthToken
    , vgFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsGet@ which the
-- 'VariantsetsGet'' request conforms to.
type VariantsetsGetResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] VariantSet

-- | Gets a variant set by ID.
--
-- /See:/ 'variantsetsGet'' smart constructor.
data VariantsetsGet' = VariantsetsGet'
    { _vgQuotaUser    :: !(Maybe Text)
    , _vgPrettyPrint  :: !Bool
    , _vgVariantSetId :: !Text
    , _vgUserIP       :: !(Maybe Text)
    , _vgKey          :: !(Maybe Key)
    , _vgOAuthToken   :: !(Maybe OAuthToken)
    , _vgFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgQuotaUser'
--
-- * 'vgPrettyPrint'
--
-- * 'vgVariantSetId'
--
-- * 'vgUserIP'
--
-- * 'vgKey'
--
-- * 'vgOAuthToken'
--
-- * 'vgFields'
variantsetsGet'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsGet'
variantsetsGet' pVgVariantSetId_ =
    VariantsetsGet'
    { _vgQuotaUser = Nothing
    , _vgPrettyPrint = True
    , _vgVariantSetId = pVgVariantSetId_
    , _vgUserIP = Nothing
    , _vgKey = Nothing
    , _vgOAuthToken = Nothing
    , _vgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vgQuotaUser :: Lens' VariantsetsGet' (Maybe Text)
vgQuotaUser
  = lens _vgQuotaUser (\ s a -> s{_vgQuotaUser = a})

-- | Returns response with indentations and line breaks.
vgPrettyPrint :: Lens' VariantsetsGet' Bool
vgPrettyPrint
  = lens _vgPrettyPrint
      (\ s a -> s{_vgPrettyPrint = a})

-- | Required. The ID of the variant set.
vgVariantSetId :: Lens' VariantsetsGet' Text
vgVariantSetId
  = lens _vgVariantSetId
      (\ s a -> s{_vgVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vgUserIP :: Lens' VariantsetsGet' (Maybe Text)
vgUserIP = lens _vgUserIP (\ s a -> s{_vgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vgKey :: Lens' VariantsetsGet' (Maybe Key)
vgKey = lens _vgKey (\ s a -> s{_vgKey = a})

-- | OAuth 2.0 token for the current user.
vgOAuthToken :: Lens' VariantsetsGet' (Maybe OAuthToken)
vgOAuthToken
  = lens _vgOAuthToken (\ s a -> s{_vgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vgFields :: Lens' VariantsetsGet' (Maybe Text)
vgFields = lens _vgFields (\ s a -> s{_vgFields = a})

instance GoogleAuth VariantsetsGet' where
        authKey = vgKey . _Just
        authToken = vgOAuthToken . _Just

instance GoogleRequest VariantsetsGet' where
        type Rs VariantsetsGet' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsGet'{..}
          = go _vgVariantSetId _vgQuotaUser
              (Just _vgPrettyPrint)
              _vgUserIP
              _vgFields
              _vgKey
              _vgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsGetResource)
                      r
                      u
