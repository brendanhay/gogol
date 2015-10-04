{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new variant set (only necessary in v1). The provided variant
-- set must have a valid datasetId set - all other fields are optional.
-- Note that the id field will be ignored, as this is assigned by the
-- server.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsCreate@.
module Network.Google.Resource.Genomics.Variantsets.Create
    (
    -- * REST Resource
      VariantsetsCreateResource

    -- * Creating a Request
    , variantsetsCreate'
    , VariantsetsCreate'

    -- * Request Lenses
    , vcQuotaUser
    , vcPrettyPrint
    , vcUserIP
    , vcPayload
    , vcKey
    , vcOAuthToken
    , vcFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsCreate@ which the
-- 'VariantsetsCreate'' request conforms to.
type VariantsetsCreateResource =
     "variantsets" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[OctetStream] VariantSet :>
                       Post '[JSON] VariantSet

-- | Creates a new variant set (only necessary in v1). The provided variant
-- set must have a valid datasetId set - all other fields are optional.
-- Note that the id field will be ignored, as this is assigned by the
-- server.
--
-- /See:/ 'variantsetsCreate'' smart constructor.
data VariantsetsCreate' = VariantsetsCreate'
    { _vcQuotaUser   :: !(Maybe Text)
    , _vcPrettyPrint :: !Bool
    , _vcUserIP      :: !(Maybe Text)
    , _vcPayload     :: !VariantSet
    , _vcKey         :: !(Maybe Key)
    , _vcOAuthToken  :: !(Maybe OAuthToken)
    , _vcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcQuotaUser'
--
-- * 'vcPrettyPrint'
--
-- * 'vcUserIP'
--
-- * 'vcPayload'
--
-- * 'vcKey'
--
-- * 'vcOAuthToken'
--
-- * 'vcFields'
variantsetsCreate'
    :: VariantSet -- ^ 'payload'
    -> VariantsetsCreate'
variantsetsCreate' pVcPayload_ =
    VariantsetsCreate'
    { _vcQuotaUser = Nothing
    , _vcPrettyPrint = True
    , _vcUserIP = Nothing
    , _vcPayload = pVcPayload_
    , _vcKey = Nothing
    , _vcOAuthToken = Nothing
    , _vcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vcQuotaUser :: Lens' VariantsetsCreate' (Maybe Text)
vcQuotaUser
  = lens _vcQuotaUser (\ s a -> s{_vcQuotaUser = a})

-- | Returns response with indentations and line breaks.
vcPrettyPrint :: Lens' VariantsetsCreate' Bool
vcPrettyPrint
  = lens _vcPrettyPrint
      (\ s a -> s{_vcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vcUserIP :: Lens' VariantsetsCreate' (Maybe Text)
vcUserIP = lens _vcUserIP (\ s a -> s{_vcUserIP = a})

-- | Multipart request metadata.
vcPayload :: Lens' VariantsetsCreate' VariantSet
vcPayload
  = lens _vcPayload (\ s a -> s{_vcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vcKey :: Lens' VariantsetsCreate' (Maybe Key)
vcKey = lens _vcKey (\ s a -> s{_vcKey = a})

-- | OAuth 2.0 token for the current user.
vcOAuthToken :: Lens' VariantsetsCreate' (Maybe OAuthToken)
vcOAuthToken
  = lens _vcOAuthToken (\ s a -> s{_vcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vcFields :: Lens' VariantsetsCreate' (Maybe Text)
vcFields = lens _vcFields (\ s a -> s{_vcFields = a})

instance GoogleAuth VariantsetsCreate' where
        authKey = vcKey . _Just
        authToken = vcOAuthToken . _Just

instance GoogleRequest VariantsetsCreate' where
        type Rs VariantsetsCreate' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsCreate'{..}
          = go _vcQuotaUser (Just _vcPrettyPrint) _vcUserIP
              _vcFields
              _vcKey
              _vcOAuthToken
              (Just AltJSON)
              _vcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsCreateResource)
                      r
                      u
