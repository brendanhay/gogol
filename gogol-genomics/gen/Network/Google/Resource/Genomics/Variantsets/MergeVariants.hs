{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Genomics.Variantsets.MergeVariants
    (
    -- * REST Resource
      VariantsetsMergeVariantsAPI

    -- * Creating a Request
    , variantsetsMergeVariants
    , VariantsetsMergeVariants

    -- * Request Lenses
    , vmvQuotaUser
    , vmvPrettyPrint
    , vmvVariantSetId
    , vmvUserIp
    , vmvKey
    , vmvOauthToken
    , vmvFields
    , vmvAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsMergeVariants@ which the
-- 'VariantsetsMergeVariants' request conforms to.
type VariantsetsMergeVariantsAPI =
     "variantsets" :>
       Capture "variantSetId" Text :>
         "mergeVariants" :> Post '[JSON] ()

-- | Merges the given variants with existing variants. Each variant will be
-- merged with an existing variant that matches its reference sequence,
-- start, end, reference bases, and alternative bases. If no such variant
-- exists, a new one will be created. When variants are merged, the call
-- information from the new variant is added to the existing variant, and
-- other fields (such as key\/value pairs) are discarded.
--
-- /See:/ 'variantsetsMergeVariants' smart constructor.
data VariantsetsMergeVariants = VariantsetsMergeVariants
    { _vmvQuotaUser    :: !(Maybe Text)
    , _vmvPrettyPrint  :: !Bool
    , _vmvVariantSetId :: !Text
    , _vmvUserIp       :: !(Maybe Text)
    , _vmvKey          :: !(Maybe Text)
    , _vmvOauthToken   :: !(Maybe Text)
    , _vmvFields       :: !(Maybe Text)
    , _vmvAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'vmvUserIp'
--
-- * 'vmvKey'
--
-- * 'vmvOauthToken'
--
-- * 'vmvFields'
--
-- * 'vmvAlt'
variantsetsMergeVariants
    :: Text -- ^ 'variantSetId'
    -> VariantsetsMergeVariants
variantsetsMergeVariants pVmvVariantSetId_ =
    VariantsetsMergeVariants
    { _vmvQuotaUser = Nothing
    , _vmvPrettyPrint = True
    , _vmvVariantSetId = pVmvVariantSetId_
    , _vmvUserIp = Nothing
    , _vmvKey = Nothing
    , _vmvOauthToken = Nothing
    , _vmvFields = Nothing
    , _vmvAlt = "json"
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
vmvUserIp :: Lens' VariantsetsMergeVariants' (Maybe Text)
vmvUserIp
  = lens _vmvUserIp (\ s a -> s{_vmvUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vmvKey :: Lens' VariantsetsMergeVariants' (Maybe Text)
vmvKey = lens _vmvKey (\ s a -> s{_vmvKey = a})

-- | OAuth 2.0 token for the current user.
vmvOauthToken :: Lens' VariantsetsMergeVariants' (Maybe Text)
vmvOauthToken
  = lens _vmvOauthToken
      (\ s a -> s{_vmvOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vmvFields :: Lens' VariantsetsMergeVariants' (Maybe Text)
vmvFields
  = lens _vmvFields (\ s a -> s{_vmvFields = a})

-- | Data format for the response.
vmvAlt :: Lens' VariantsetsMergeVariants' Text
vmvAlt = lens _vmvAlt (\ s a -> s{_vmvAlt = a})

instance GoogleRequest VariantsetsMergeVariants'
         where
        type Rs VariantsetsMergeVariants' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsMergeVariants{..}
          = go _vmvQuotaUser _vmvPrettyPrint _vmvVariantSetId
              _vmvUserIp
              _vmvKey
              _vmvOauthToken
              _vmvFields
              _vmvAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsMergeVariantsAPI)
                      r
                      u
