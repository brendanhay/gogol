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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsPatch@.
module Network.Google.Resource.Genomics.Variantsets.Patch
    (
    -- * REST Resource
      VariantsetsPatchResource

    -- * Creating a Request
    , variantsetsPatch'
    , VariantsetsPatch'

    -- * Request Lenses
    , vpQuotaUser
    , vpPrettyPrint
    , vpVariantSetId
    , vpUserIP
    , vpPayload
    , vpKey
    , vpOAuthToken
    , vpFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsPatch@ which the
-- 'VariantsetsPatch'' request conforms to.
type VariantsetsPatchResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] VariantSet :>
                         Patch '[JSON] VariantSet

-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored. This method supports patch semantics.
--
-- /See:/ 'variantsetsPatch'' smart constructor.
data VariantsetsPatch' = VariantsetsPatch'
    { _vpQuotaUser    :: !(Maybe Text)
    , _vpPrettyPrint  :: !Bool
    , _vpVariantSetId :: !Text
    , _vpUserIP       :: !(Maybe Text)
    , _vpPayload      :: !VariantSet
    , _vpKey          :: !(Maybe Key)
    , _vpOAuthToken   :: !(Maybe OAuthToken)
    , _vpFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpQuotaUser'
--
-- * 'vpPrettyPrint'
--
-- * 'vpVariantSetId'
--
-- * 'vpUserIP'
--
-- * 'vpPayload'
--
-- * 'vpKey'
--
-- * 'vpOAuthToken'
--
-- * 'vpFields'
variantsetsPatch'
    :: Text -- ^ 'variantSetId'
    -> VariantSet -- ^ 'payload'
    -> VariantsetsPatch'
variantsetsPatch' pVpVariantSetId_ pVpPayload_ =
    VariantsetsPatch'
    { _vpQuotaUser = Nothing
    , _vpPrettyPrint = True
    , _vpVariantSetId = pVpVariantSetId_
    , _vpUserIP = Nothing
    , _vpPayload = pVpPayload_
    , _vpKey = Nothing
    , _vpOAuthToken = Nothing
    , _vpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vpQuotaUser :: Lens' VariantsetsPatch' (Maybe Text)
vpQuotaUser
  = lens _vpQuotaUser (\ s a -> s{_vpQuotaUser = a})

-- | Returns response with indentations and line breaks.
vpPrettyPrint :: Lens' VariantsetsPatch' Bool
vpPrettyPrint
  = lens _vpPrettyPrint
      (\ s a -> s{_vpPrettyPrint = a})

-- | The ID of the variant to be updated (must already exist).
vpVariantSetId :: Lens' VariantsetsPatch' Text
vpVariantSetId
  = lens _vpVariantSetId
      (\ s a -> s{_vpVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vpUserIP :: Lens' VariantsetsPatch' (Maybe Text)
vpUserIP = lens _vpUserIP (\ s a -> s{_vpUserIP = a})

-- | Multipart request metadata.
vpPayload :: Lens' VariantsetsPatch' VariantSet
vpPayload
  = lens _vpPayload (\ s a -> s{_vpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vpKey :: Lens' VariantsetsPatch' (Maybe Key)
vpKey = lens _vpKey (\ s a -> s{_vpKey = a})

-- | OAuth 2.0 token for the current user.
vpOAuthToken :: Lens' VariantsetsPatch' (Maybe OAuthToken)
vpOAuthToken
  = lens _vpOAuthToken (\ s a -> s{_vpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vpFields :: Lens' VariantsetsPatch' (Maybe Text)
vpFields = lens _vpFields (\ s a -> s{_vpFields = a})

instance GoogleAuth VariantsetsPatch' where
        authKey = vpKey . _Just
        authToken = vpOAuthToken . _Just

instance GoogleRequest VariantsetsPatch' where
        type Rs VariantsetsPatch' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsPatch'{..}
          = go _vpVariantSetId _vpQuotaUser
              (Just _vpPrettyPrint)
              _vpUserIP
              _vpFields
              _vpKey
              _vpOAuthToken
              (Just AltJSON)
              _vpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsPatchResource)
                      r
                      u
