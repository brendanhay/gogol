{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variantsets.ImportVariants
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates variant data by asynchronously importing the provided
-- information. The variants for import will be merged with any existing
-- data and each other according to the behavior of mergeVariants. In
-- particular, this means for merged VCF variants that have conflicting
-- INFO fields, some data will be arbitrarily discarded. As a special case,
-- for single-sample VCF files, QUAL and FILTER fields will be moved to the
-- call level; these are sometimes interpreted in a call-specific context.
-- Imported VCF headers are appended to the metadata already in a variant
-- set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variantsets.importVariants@.
module Network.Google.API.Genomics.Variantsets.ImportVariants
    (
    -- * REST Resource
      VariantsetsImportVariantsAPI

    -- * Creating a Request
    , variantsetsImportVariants'
    , VariantsetsImportVariants'

    -- * Request Lenses
    , vivQuotaUser
    , vivPrettyPrint
    , vivVariantSetId
    , vivUserIp
    , vivKey
    , vivOauthToken
    , vivFields
    , vivAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.variantsets.importVariants which the
-- 'VariantsetsImportVariants'' request conforms to.
type VariantsetsImportVariantsAPI =
     "variantsets" :>
       Capture "variantSetId" Text :>
         "importVariants" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] ImportVariantsResponse

-- | Creates variant data by asynchronously importing the provided
-- information. The variants for import will be merged with any existing
-- data and each other according to the behavior of mergeVariants. In
-- particular, this means for merged VCF variants that have conflicting
-- INFO fields, some data will be arbitrarily discarded. As a special case,
-- for single-sample VCF files, QUAL and FILTER fields will be moved to the
-- call level; these are sometimes interpreted in a call-specific context.
-- Imported VCF headers are appended to the metadata already in a variant
-- set.
--
-- /See:/ 'variantsetsImportVariants'' smart constructor.
data VariantsetsImportVariants' = VariantsetsImportVariants'
    { _vivQuotaUser    :: !(Maybe Text)
    , _vivPrettyPrint  :: !Bool
    , _vivVariantSetId :: !Text
    , _vivUserIp       :: !(Maybe Text)
    , _vivKey          :: !(Maybe Text)
    , _vivOauthToken   :: !(Maybe Text)
    , _vivFields       :: !(Maybe Text)
    , _vivAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsImportVariants'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vivQuotaUser'
--
-- * 'vivPrettyPrint'
--
-- * 'vivVariantSetId'
--
-- * 'vivUserIp'
--
-- * 'vivKey'
--
-- * 'vivOauthToken'
--
-- * 'vivFields'
--
-- * 'vivAlt'
variantsetsImportVariants'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsImportVariants'
variantsetsImportVariants' pVivVariantSetId_ =
    VariantsetsImportVariants'
    { _vivQuotaUser = Nothing
    , _vivPrettyPrint = True
    , _vivVariantSetId = pVivVariantSetId_
    , _vivUserIp = Nothing
    , _vivKey = Nothing
    , _vivOauthToken = Nothing
    , _vivFields = Nothing
    , _vivAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vivQuotaUser :: Lens' VariantsetsImportVariants' (Maybe Text)
vivQuotaUser
  = lens _vivQuotaUser (\ s a -> s{_vivQuotaUser = a})

-- | Returns response with indentations and line breaks.
vivPrettyPrint :: Lens' VariantsetsImportVariants' Bool
vivPrettyPrint
  = lens _vivPrettyPrint
      (\ s a -> s{_vivPrettyPrint = a})

-- | Required. The variant set to which variant data should be imported.
vivVariantSetId :: Lens' VariantsetsImportVariants' Text
vivVariantSetId
  = lens _vivVariantSetId
      (\ s a -> s{_vivVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vivUserIp :: Lens' VariantsetsImportVariants' (Maybe Text)
vivUserIp
  = lens _vivUserIp (\ s a -> s{_vivUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vivKey :: Lens' VariantsetsImportVariants' (Maybe Text)
vivKey = lens _vivKey (\ s a -> s{_vivKey = a})

-- | OAuth 2.0 token for the current user.
vivOauthToken :: Lens' VariantsetsImportVariants' (Maybe Text)
vivOauthToken
  = lens _vivOauthToken
      (\ s a -> s{_vivOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vivFields :: Lens' VariantsetsImportVariants' (Maybe Text)
vivFields
  = lens _vivFields (\ s a -> s{_vivFields = a})

-- | Data format for the response.
vivAlt :: Lens' VariantsetsImportVariants' Alt
vivAlt = lens _vivAlt (\ s a -> s{_vivAlt = a})

instance GoogleRequest VariantsetsImportVariants'
         where
        type Rs VariantsetsImportVariants' =
             ImportVariantsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsImportVariants'{..}
          = go _vivQuotaUser (Just _vivPrettyPrint)
              _vivVariantSetId
              _vivUserIp
              _vivKey
              _vivOauthToken
              _vivFields
              (Just _vivAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsImportVariantsAPI)
                      r
                      u
