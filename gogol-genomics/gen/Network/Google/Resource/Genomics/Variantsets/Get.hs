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
    , vgUserIp
    , vgKey
    , vgOauthToken
    , vgFields
    , vgAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] VariantSet

-- | Gets a variant set by ID.
--
-- /See:/ 'variantsetsGet'' smart constructor.
data VariantsetsGet' = VariantsetsGet'
    { _vgQuotaUser    :: !(Maybe Text)
    , _vgPrettyPrint  :: !Bool
    , _vgVariantSetId :: !Text
    , _vgUserIp       :: !(Maybe Text)
    , _vgKey          :: !(Maybe Text)
    , _vgOauthToken   :: !(Maybe Text)
    , _vgFields       :: !(Maybe Text)
    , _vgAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'vgUserIp'
--
-- * 'vgKey'
--
-- * 'vgOauthToken'
--
-- * 'vgFields'
--
-- * 'vgAlt'
variantsetsGet'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsGet'
variantsetsGet' pVgVariantSetId_ =
    VariantsetsGet'
    { _vgQuotaUser = Nothing
    , _vgPrettyPrint = True
    , _vgVariantSetId = pVgVariantSetId_
    , _vgUserIp = Nothing
    , _vgKey = Nothing
    , _vgOauthToken = Nothing
    , _vgFields = Nothing
    , _vgAlt = JSON
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
vgUserIp :: Lens' VariantsetsGet' (Maybe Text)
vgUserIp = lens _vgUserIp (\ s a -> s{_vgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vgKey :: Lens' VariantsetsGet' (Maybe Text)
vgKey = lens _vgKey (\ s a -> s{_vgKey = a})

-- | OAuth 2.0 token for the current user.
vgOauthToken :: Lens' VariantsetsGet' (Maybe Text)
vgOauthToken
  = lens _vgOauthToken (\ s a -> s{_vgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vgFields :: Lens' VariantsetsGet' (Maybe Text)
vgFields = lens _vgFields (\ s a -> s{_vgFields = a})

-- | Data format for the response.
vgAlt :: Lens' VariantsetsGet' Alt
vgAlt = lens _vgAlt (\ s a -> s{_vgAlt = a})

instance GoogleRequest VariantsetsGet' where
        type Rs VariantsetsGet' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsGet'{..}
          = go _vgQuotaUser (Just _vgPrettyPrint)
              _vgVariantSetId
              _vgUserIp
              _vgKey
              _vgOauthToken
              _vgFields
              (Just _vgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsGetResource)
                      r
                      u
