{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variants.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a variant.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsDelete@.
module Genomics.Variants.Delete
    (
    -- * REST Resource
      VariantsDeleteAPI

    -- * Creating a Request
    , variantsDelete
    , VariantsDelete

    -- * Request Lenses
    , vdQuotaUser
    , vdPrettyPrint
    , vdUserIp
    , vdKey
    , vdVariantId
    , vdOauthToken
    , vdFields
    , vdAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsDelete@ which the
-- 'VariantsDelete' request conforms to.
type VariantsDeleteAPI =
     "variants" :>
       Capture "variantId" Text :> Delete '[JSON] ()

-- | Deletes a variant.
--
-- /See:/ 'variantsDelete' smart constructor.
data VariantsDelete = VariantsDelete
    { _vdQuotaUser   :: !(Maybe Text)
    , _vdPrettyPrint :: !Bool
    , _vdUserIp      :: !(Maybe Text)
    , _vdKey         :: !(Maybe Text)
    , _vdVariantId   :: !Text
    , _vdOauthToken  :: !(Maybe Text)
    , _vdFields      :: !(Maybe Text)
    , _vdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdQuotaUser'
--
-- * 'vdPrettyPrint'
--
-- * 'vdUserIp'
--
-- * 'vdKey'
--
-- * 'vdVariantId'
--
-- * 'vdOauthToken'
--
-- * 'vdFields'
--
-- * 'vdAlt'
variantsDelete
    :: Text -- ^ 'variantId'
    -> VariantsDelete
variantsDelete pVdVariantId_ =
    VariantsDelete
    { _vdQuotaUser = Nothing
    , _vdPrettyPrint = True
    , _vdUserIp = Nothing
    , _vdKey = Nothing
    , _vdVariantId = pVdVariantId_
    , _vdOauthToken = Nothing
    , _vdFields = Nothing
    , _vdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vdQuotaUser :: Lens' VariantsDelete' (Maybe Text)
vdQuotaUser
  = lens _vdQuotaUser (\ s a -> s{_vdQuotaUser = a})

-- | Returns response with indentations and line breaks.
vdPrettyPrint :: Lens' VariantsDelete' Bool
vdPrettyPrint
  = lens _vdPrettyPrint
      (\ s a -> s{_vdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vdUserIp :: Lens' VariantsDelete' (Maybe Text)
vdUserIp = lens _vdUserIp (\ s a -> s{_vdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vdKey :: Lens' VariantsDelete' (Maybe Text)
vdKey = lens _vdKey (\ s a -> s{_vdKey = a})

-- | The ID of the variant to be deleted.
vdVariantId :: Lens' VariantsDelete' Text
vdVariantId
  = lens _vdVariantId (\ s a -> s{_vdVariantId = a})

-- | OAuth 2.0 token for the current user.
vdOauthToken :: Lens' VariantsDelete' (Maybe Text)
vdOauthToken
  = lens _vdOauthToken (\ s a -> s{_vdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vdFields :: Lens' VariantsDelete' (Maybe Text)
vdFields = lens _vdFields (\ s a -> s{_vdFields = a})

-- | Data format for the response.
vdAlt :: Lens' VariantsDelete' Text
vdAlt = lens _vdAlt (\ s a -> s{_vdAlt = a})

instance GoogleRequest VariantsDelete' where
        type Rs VariantsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsDelete{..}
          = go _vdQuotaUser _vdPrettyPrint _vdUserIp _vdKey
              _vdVariantId
              _vdOauthToken
              _vdFields
              _vdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy VariantsDeleteAPI)
                      r
                      u
