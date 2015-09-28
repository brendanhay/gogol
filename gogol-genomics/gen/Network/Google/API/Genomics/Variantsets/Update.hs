{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variantsets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variantsets.update@.
module Network.Google.API.Genomics.Variantsets.Update
    (
    -- * REST Resource
      VariantsetsUpdateAPI

    -- * Creating a Request
    , variantsetsUpdate'
    , VariantsetsUpdate'

    -- * Request Lenses
    , vQuotaUser
    , vPrettyPrint
    , vVariantSetId
    , vUserIp
    , vKey
    , vOauthToken
    , vFields
    , vAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.variantsets.update which the
-- 'VariantsetsUpdate'' request conforms to.
type VariantsetsUpdateAPI =
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
    { _vQuotaUser    :: !(Maybe Text)
    , _vPrettyPrint  :: !Bool
    , _vVariantSetId :: !Text
    , _vUserIp       :: !(Maybe Text)
    , _vKey          :: !(Maybe Text)
    , _vOauthToken   :: !(Maybe Text)
    , _vFields       :: !(Maybe Text)
    , _vAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vQuotaUser'
--
-- * 'vPrettyPrint'
--
-- * 'vVariantSetId'
--
-- * 'vUserIp'
--
-- * 'vKey'
--
-- * 'vOauthToken'
--
-- * 'vFields'
--
-- * 'vAlt'
variantsetsUpdate'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsUpdate'
variantsetsUpdate' pVVariantSetId_ =
    VariantsetsUpdate'
    { _vQuotaUser = Nothing
    , _vPrettyPrint = True
    , _vVariantSetId = pVVariantSetId_
    , _vUserIp = Nothing
    , _vKey = Nothing
    , _vOauthToken = Nothing
    , _vFields = Nothing
    , _vAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vQuotaUser :: Lens' VariantsetsUpdate' (Maybe Text)
vQuotaUser
  = lens _vQuotaUser (\ s a -> s{_vQuotaUser = a})

-- | Returns response with indentations and line breaks.
vPrettyPrint :: Lens' VariantsetsUpdate' Bool
vPrettyPrint
  = lens _vPrettyPrint (\ s a -> s{_vPrettyPrint = a})

-- | The ID of the variant to be updated (must already exist).
vVariantSetId :: Lens' VariantsetsUpdate' Text
vVariantSetId
  = lens _vVariantSetId
      (\ s a -> s{_vVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vUserIp :: Lens' VariantsetsUpdate' (Maybe Text)
vUserIp = lens _vUserIp (\ s a -> s{_vUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vKey :: Lens' VariantsetsUpdate' (Maybe Text)
vKey = lens _vKey (\ s a -> s{_vKey = a})

-- | OAuth 2.0 token for the current user.
vOauthToken :: Lens' VariantsetsUpdate' (Maybe Text)
vOauthToken
  = lens _vOauthToken (\ s a -> s{_vOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vFields :: Lens' VariantsetsUpdate' (Maybe Text)
vFields = lens _vFields (\ s a -> s{_vFields = a})

-- | Data format for the response.
vAlt :: Lens' VariantsetsUpdate' Alt
vAlt = lens _vAlt (\ s a -> s{_vAlt = a})

instance GoogleRequest VariantsetsUpdate' where
        type Rs VariantsetsUpdate' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsUpdate'{..}
          = go _vQuotaUser (Just _vPrettyPrint) _vVariantSetId
              _vUserIp
              _vKey
              _vOauthToken
              _vFields
              (Just _vAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsUpdateAPI)
                      r
                      u
