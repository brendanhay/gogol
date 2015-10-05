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
module Network.Google.Resource.Genomics.Variants.Delete
    (
    -- * REST Resource
      VariantsDeleteResource

    -- * Creating a Request
    , variantsDelete'
    , VariantsDelete'

    -- * Request Lenses
    , vdQuotaUser
    , vdPrettyPrint
    , vdUserIP
    , vdKey
    , vdVariantId
    , vdOAuthToken
    , vdFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsDelete@ which the
-- 'VariantsDelete'' request conforms to.
type VariantsDeleteResource =
     "variants" :>
       Capture "variantId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a variant.
--
-- /See:/ 'variantsDelete'' smart constructor.
data VariantsDelete' = VariantsDelete'
    { _vdQuotaUser   :: !(Maybe Text)
    , _vdPrettyPrint :: !Bool
    , _vdUserIP      :: !(Maybe Text)
    , _vdKey         :: !(Maybe Key)
    , _vdVariantId   :: !Text
    , _vdOAuthToken  :: !(Maybe OAuthToken)
    , _vdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdQuotaUser'
--
-- * 'vdPrettyPrint'
--
-- * 'vdUserIP'
--
-- * 'vdKey'
--
-- * 'vdVariantId'
--
-- * 'vdOAuthToken'
--
-- * 'vdFields'
variantsDelete'
    :: Text -- ^ 'variantId'
    -> VariantsDelete'
variantsDelete' pVdVariantId_ =
    VariantsDelete'
    { _vdQuotaUser = Nothing
    , _vdPrettyPrint = True
    , _vdUserIP = Nothing
    , _vdKey = Nothing
    , _vdVariantId = pVdVariantId_
    , _vdOAuthToken = Nothing
    , _vdFields = Nothing
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
vdUserIP :: Lens' VariantsDelete' (Maybe Text)
vdUserIP = lens _vdUserIP (\ s a -> s{_vdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vdKey :: Lens' VariantsDelete' (Maybe Key)
vdKey = lens _vdKey (\ s a -> s{_vdKey = a})

-- | The ID of the variant to be deleted.
vdVariantId :: Lens' VariantsDelete' Text
vdVariantId
  = lens _vdVariantId (\ s a -> s{_vdVariantId = a})

-- | OAuth 2.0 token for the current user.
vdOAuthToken :: Lens' VariantsDelete' (Maybe OAuthToken)
vdOAuthToken
  = lens _vdOAuthToken (\ s a -> s{_vdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vdFields :: Lens' VariantsDelete' (Maybe Text)
vdFields = lens _vdFields (\ s a -> s{_vdFields = a})

instance GoogleAuth VariantsDelete' where
        authKey = vdKey . _Just
        authToken = vdOAuthToken . _Just

instance GoogleRequest VariantsDelete' where
        type Rs VariantsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsDelete'{..}
          = go _vdVariantId _vdQuotaUser (Just _vdPrettyPrint)
              _vdUserIP
              _vdFields
              _vdKey
              _vdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsDeleteResource)
                      r
                      u
