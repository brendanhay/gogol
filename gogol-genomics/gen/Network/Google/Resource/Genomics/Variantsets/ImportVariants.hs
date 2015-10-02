{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.ImportVariants
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
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsImportVariants@.
module Network.Google.Resource.Genomics.Variantsets.ImportVariants
    (
    -- * REST Resource
      VariantsetsImportVariantsResource

    -- * Creating a Request
    , variantsetsImportVariants'
    , VariantsetsImportVariants'

    -- * Request Lenses
    , vivQuotaUser
    , vivPrettyPrint
    , vivVariantSetId
    , vivUserIP
    , vivKey
    , vivImportVariantsRequest
    , vivOAuthToken
    , vivFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsImportVariants@ which the
-- 'VariantsetsImportVariants'' request conforms to.
type VariantsetsImportVariantsResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         "importVariants" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ImportVariantsRequest :>
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
    { _vivQuotaUser             :: !(Maybe Text)
    , _vivPrettyPrint           :: !Bool
    , _vivVariantSetId          :: !Text
    , _vivUserIP                :: !(Maybe Text)
    , _vivKey                   :: !(Maybe Key)
    , _vivImportVariantsRequest :: !ImportVariantsRequest
    , _vivOAuthToken            :: !(Maybe OAuthToken)
    , _vivFields                :: !(Maybe Text)
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
-- * 'vivUserIP'
--
-- * 'vivKey'
--
-- * 'vivImportVariantsRequest'
--
-- * 'vivOAuthToken'
--
-- * 'vivFields'
variantsetsImportVariants'
    :: Text -- ^ 'variantSetId'
    -> ImportVariantsRequest -- ^ 'ImportVariantsRequest'
    -> VariantsetsImportVariants'
variantsetsImportVariants' pVivVariantSetId_ pVivImportVariantsRequest_ =
    VariantsetsImportVariants'
    { _vivQuotaUser = Nothing
    , _vivPrettyPrint = True
    , _vivVariantSetId = pVivVariantSetId_
    , _vivUserIP = Nothing
    , _vivKey = Nothing
    , _vivImportVariantsRequest = pVivImportVariantsRequest_
    , _vivOAuthToken = Nothing
    , _vivFields = Nothing
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
vivUserIP :: Lens' VariantsetsImportVariants' (Maybe Text)
vivUserIP
  = lens _vivUserIP (\ s a -> s{_vivUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vivKey :: Lens' VariantsetsImportVariants' (Maybe Key)
vivKey = lens _vivKey (\ s a -> s{_vivKey = a})

-- | Multipart request metadata.
vivImportVariantsRequest :: Lens' VariantsetsImportVariants' ImportVariantsRequest
vivImportVariantsRequest
  = lens _vivImportVariantsRequest
      (\ s a -> s{_vivImportVariantsRequest = a})

-- | OAuth 2.0 token for the current user.
vivOAuthToken :: Lens' VariantsetsImportVariants' (Maybe OAuthToken)
vivOAuthToken
  = lens _vivOAuthToken
      (\ s a -> s{_vivOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vivFields :: Lens' VariantsetsImportVariants' (Maybe Text)
vivFields
  = lens _vivFields (\ s a -> s{_vivFields = a})

instance GoogleAuth VariantsetsImportVariants' where
        authKey = vivKey . _Just
        authToken = vivOAuthToken . _Just

instance GoogleRequest VariantsetsImportVariants'
         where
        type Rs VariantsetsImportVariants' =
             ImportVariantsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsImportVariants'{..}
          = go _vivQuotaUser (Just _vivPrettyPrint)
              _vivVariantSetId
              _vivUserIP
              _vivKey
              _vivOAuthToken
              _vivFields
              (Just AltJSON)
              _vivImportVariantsRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsImportVariantsResource)
                      r
                      u
