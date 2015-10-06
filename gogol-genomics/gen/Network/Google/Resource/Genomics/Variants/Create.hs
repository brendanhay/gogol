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
-- Module      : Network.Google.Resource.Genomics.Variants.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new variant.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsCreate@.
module Network.Google.Resource.Genomics.Variants.Create
    (
    -- * REST Resource
      VariantsCreateResource

    -- * Creating a Request
    , variantsCreate'
    , VariantsCreate'

    -- * Request Lenses
    , varQuotaUser
    , varPrettyPrint
    , varUserIP
    , varPayload
    , varKey
    , varOAuthToken
    , varFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsCreate@ which the
-- 'VariantsCreate'' request conforms to.
type VariantsCreateResource =
     "variants" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Variant :> Post '[JSON] Variant

-- | Creates a new variant.
--
-- /See:/ 'variantsCreate'' smart constructor.
data VariantsCreate' = VariantsCreate'
    { _varQuotaUser   :: !(Maybe Text)
    , _varPrettyPrint :: !Bool
    , _varUserIP      :: !(Maybe Text)
    , _varPayload     :: !Variant
    , _varKey         :: !(Maybe AuthKey)
    , _varOAuthToken  :: !(Maybe OAuthToken)
    , _varFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varQuotaUser'
--
-- * 'varPrettyPrint'
--
-- * 'varUserIP'
--
-- * 'varPayload'
--
-- * 'varKey'
--
-- * 'varOAuthToken'
--
-- * 'varFields'
variantsCreate'
    :: Variant -- ^ 'payload'
    -> VariantsCreate'
variantsCreate' pVarPayload_ =
    VariantsCreate'
    { _varQuotaUser = Nothing
    , _varPrettyPrint = True
    , _varUserIP = Nothing
    , _varPayload = pVarPayload_
    , _varKey = Nothing
    , _varOAuthToken = Nothing
    , _varFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
varQuotaUser :: Lens' VariantsCreate' (Maybe Text)
varQuotaUser
  = lens _varQuotaUser (\ s a -> s{_varQuotaUser = a})

-- | Returns response with indentations and line breaks.
varPrettyPrint :: Lens' VariantsCreate' Bool
varPrettyPrint
  = lens _varPrettyPrint
      (\ s a -> s{_varPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
varUserIP :: Lens' VariantsCreate' (Maybe Text)
varUserIP
  = lens _varUserIP (\ s a -> s{_varUserIP = a})

-- | Multipart request metadata.
varPayload :: Lens' VariantsCreate' Variant
varPayload
  = lens _varPayload (\ s a -> s{_varPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
varKey :: Lens' VariantsCreate' (Maybe AuthKey)
varKey = lens _varKey (\ s a -> s{_varKey = a})

-- | OAuth 2.0 token for the current user.
varOAuthToken :: Lens' VariantsCreate' (Maybe OAuthToken)
varOAuthToken
  = lens _varOAuthToken
      (\ s a -> s{_varOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
varFields :: Lens' VariantsCreate' (Maybe Text)
varFields
  = lens _varFields (\ s a -> s{_varFields = a})

instance GoogleAuth VariantsCreate' where
        _AuthKey = varKey . _Just
        _AuthToken = varOAuthToken . _Just

instance GoogleRequest VariantsCreate' where
        type Rs VariantsCreate' = Variant
        request = requestWith genomicsRequest
        requestWith rq VariantsCreate'{..}
          = go _varQuotaUser (Just _varPrettyPrint) _varUserIP
              _varFields
              _varKey
              _varOAuthToken
              (Just AltJSON)
              _varPayload
          where go
                  = clientBuild (Proxy :: Proxy VariantsCreateResource)
                      rq
