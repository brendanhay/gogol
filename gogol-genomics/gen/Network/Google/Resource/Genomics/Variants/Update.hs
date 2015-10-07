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
-- Module      : Network.Google.Resource.Genomics.Variants.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant\'s names and info fields. All other modifications are
-- silently ignored. Returns the modified variant without its calls.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsUpdate@.
module Network.Google.Resource.Genomics.Variants.Update
    (
    -- * REST Resource
      VariantsUpdateResource

    -- * Creating a Request
    , variantsUpdate'
    , VariantsUpdate'

    -- * Request Lenses
    , vuQuotaUser
    , vuPrettyPrint
    , vuUserIP
    , vuPayload
    , vuKey
    , vuVariantId
    , vuOAuthToken
    , vuFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsUpdate@ method which the
-- 'VariantsUpdate'' request conforms to.
type VariantsUpdateResource =
     "variants" :>
       Capture "variantId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Variant :> Put '[JSON] Variant

-- | Updates a variant\'s names and info fields. All other modifications are
-- silently ignored. Returns the modified variant without its calls.
--
-- /See:/ 'variantsUpdate'' smart constructor.
data VariantsUpdate' = VariantsUpdate'
    { _vuQuotaUser   :: !(Maybe Text)
    , _vuPrettyPrint :: !Bool
    , _vuUserIP      :: !(Maybe Text)
    , _vuPayload     :: !Variant
    , _vuKey         :: !(Maybe AuthKey)
    , _vuVariantId   :: !Text
    , _vuOAuthToken  :: !(Maybe OAuthToken)
    , _vuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuQuotaUser'
--
-- * 'vuPrettyPrint'
--
-- * 'vuUserIP'
--
-- * 'vuPayload'
--
-- * 'vuKey'
--
-- * 'vuVariantId'
--
-- * 'vuOAuthToken'
--
-- * 'vuFields'
variantsUpdate'
    :: Variant -- ^ 'payload'
    -> Text -- ^ 'variantId'
    -> VariantsUpdate'
variantsUpdate' pVuPayload_ pVuVariantId_ =
    VariantsUpdate'
    { _vuQuotaUser = Nothing
    , _vuPrettyPrint = True
    , _vuUserIP = Nothing
    , _vuPayload = pVuPayload_
    , _vuKey = Nothing
    , _vuVariantId = pVuVariantId_
    , _vuOAuthToken = Nothing
    , _vuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vuQuotaUser :: Lens' VariantsUpdate' (Maybe Text)
vuQuotaUser
  = lens _vuQuotaUser (\ s a -> s{_vuQuotaUser = a})

-- | Returns response with indentations and line breaks.
vuPrettyPrint :: Lens' VariantsUpdate' Bool
vuPrettyPrint
  = lens _vuPrettyPrint
      (\ s a -> s{_vuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vuUserIP :: Lens' VariantsUpdate' (Maybe Text)
vuUserIP = lens _vuUserIP (\ s a -> s{_vuUserIP = a})

-- | Multipart request metadata.
vuPayload :: Lens' VariantsUpdate' Variant
vuPayload
  = lens _vuPayload (\ s a -> s{_vuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vuKey :: Lens' VariantsUpdate' (Maybe AuthKey)
vuKey = lens _vuKey (\ s a -> s{_vuKey = a})

-- | The ID of the variant to be updated.
vuVariantId :: Lens' VariantsUpdate' Text
vuVariantId
  = lens _vuVariantId (\ s a -> s{_vuVariantId = a})

-- | OAuth 2.0 token for the current user.
vuOAuthToken :: Lens' VariantsUpdate' (Maybe OAuthToken)
vuOAuthToken
  = lens _vuOAuthToken (\ s a -> s{_vuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vuFields :: Lens' VariantsUpdate' (Maybe Text)
vuFields = lens _vuFields (\ s a -> s{_vuFields = a})

instance GoogleAuth VariantsUpdate' where
        _AuthKey = vuKey . _Just
        _AuthToken = vuOAuthToken . _Just

instance GoogleRequest VariantsUpdate' where
        type Rs VariantsUpdate' = Variant
        request = requestWith genomicsRequest
        requestWith rq VariantsUpdate'{..}
          = go _vuVariantId _vuQuotaUser (Just _vuPrettyPrint)
              _vuUserIP
              _vuFields
              _vuKey
              _vuOAuthToken
              (Just AltJSON)
              _vuPayload
          where go
                  = clientBuild (Proxy :: Proxy VariantsUpdateResource)
                      rq
