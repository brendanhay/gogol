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
-- Module      : Network.Google.Resource.Genomics.Variantsets.MergeVariants
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Merges the given variants with existing variants. Each variant will be
-- merged with an existing variant that matches its reference sequence,
-- start, end, reference bases, and alternative bases. If no such variant
-- exists, a new one will be created. When variants are merged, the call
-- information from the new variant is added to the existing variant, and
-- other fields (such as key\/value pairs) are discarded.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsMergeVariants@.
module Network.Google.Resource.Genomics.Variantsets.MergeVariants
    (
    -- * REST Resource
      VariantsetsMergeVariantsResource

    -- * Creating a Request
    , variantsetsMergeVariants'
    , VariantsetsMergeVariants'

    -- * Request Lenses
    , vmvQuotaUser
    , vmvPrettyPrint
    , vmvVariantSetId
    , vmvUserIP
    , vmvPayload
    , vmvKey
    , vmvOAuthToken
    , vmvFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsMergeVariants@ which the
-- 'VariantsetsMergeVariants'' request conforms to.
type VariantsetsMergeVariantsResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         "mergeVariants" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] MergeVariantsRequest :>
                           Post '[JSON] ()

-- | Merges the given variants with existing variants. Each variant will be
-- merged with an existing variant that matches its reference sequence,
-- start, end, reference bases, and alternative bases. If no such variant
-- exists, a new one will be created. When variants are merged, the call
-- information from the new variant is added to the existing variant, and
-- other fields (such as key\/value pairs) are discarded.
--
-- /See:/ 'variantsetsMergeVariants'' smart constructor.
data VariantsetsMergeVariants' = VariantsetsMergeVariants'
    { _vmvQuotaUser    :: !(Maybe Text)
    , _vmvPrettyPrint  :: !Bool
    , _vmvVariantSetId :: !Text
    , _vmvUserIP       :: !(Maybe Text)
    , _vmvPayload      :: !MergeVariantsRequest
    , _vmvKey          :: !(Maybe AuthKey)
    , _vmvOAuthToken   :: !(Maybe OAuthToken)
    , _vmvFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsMergeVariants'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmvQuotaUser'
--
-- * 'vmvPrettyPrint'
--
-- * 'vmvVariantSetId'
--
-- * 'vmvUserIP'
--
-- * 'vmvPayload'
--
-- * 'vmvKey'
--
-- * 'vmvOAuthToken'
--
-- * 'vmvFields'
variantsetsMergeVariants'
    :: Text -- ^ 'variantSetId'
    -> MergeVariantsRequest -- ^ 'payload'
    -> VariantsetsMergeVariants'
variantsetsMergeVariants' pVmvVariantSetId_ pVmvPayload_ =
    VariantsetsMergeVariants'
    { _vmvQuotaUser = Nothing
    , _vmvPrettyPrint = True
    , _vmvVariantSetId = pVmvVariantSetId_
    , _vmvUserIP = Nothing
    , _vmvPayload = pVmvPayload_
    , _vmvKey = Nothing
    , _vmvOAuthToken = Nothing
    , _vmvFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vmvQuotaUser :: Lens' VariantsetsMergeVariants' (Maybe Text)
vmvQuotaUser
  = lens _vmvQuotaUser (\ s a -> s{_vmvQuotaUser = a})

-- | Returns response with indentations and line breaks.
vmvPrettyPrint :: Lens' VariantsetsMergeVariants' Bool
vmvPrettyPrint
  = lens _vmvPrettyPrint
      (\ s a -> s{_vmvPrettyPrint = a})

-- | The destination variant set.
vmvVariantSetId :: Lens' VariantsetsMergeVariants' Text
vmvVariantSetId
  = lens _vmvVariantSetId
      (\ s a -> s{_vmvVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vmvUserIP :: Lens' VariantsetsMergeVariants' (Maybe Text)
vmvUserIP
  = lens _vmvUserIP (\ s a -> s{_vmvUserIP = a})

-- | Multipart request metadata.
vmvPayload :: Lens' VariantsetsMergeVariants' MergeVariantsRequest
vmvPayload
  = lens _vmvPayload (\ s a -> s{_vmvPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vmvKey :: Lens' VariantsetsMergeVariants' (Maybe AuthKey)
vmvKey = lens _vmvKey (\ s a -> s{_vmvKey = a})

-- | OAuth 2.0 token for the current user.
vmvOAuthToken :: Lens' VariantsetsMergeVariants' (Maybe OAuthToken)
vmvOAuthToken
  = lens _vmvOAuthToken
      (\ s a -> s{_vmvOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vmvFields :: Lens' VariantsetsMergeVariants' (Maybe Text)
vmvFields
  = lens _vmvFields (\ s a -> s{_vmvFields = a})

instance GoogleAuth VariantsetsMergeVariants' where
        authKey = vmvKey . _Just
        authToken = vmvOAuthToken . _Just

instance GoogleRequest VariantsetsMergeVariants'
         where
        type Rs VariantsetsMergeVariants' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsMergeVariants'{..}
          = go _vmvVariantSetId _vmvQuotaUser
              (Just _vmvPrettyPrint)
              _vmvUserIP
              _vmvFields
              _vmvKey
              _vmvOAuthToken
              (Just AltJSON)
              _vmvPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsMergeVariantsResource)
                      r
                      u
