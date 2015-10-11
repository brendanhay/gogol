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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of all variant sets matching search criteria. Implements
-- [GlobalAllianceApi.searchVariantSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L49).
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsSearch@.
module Network.Google.Resource.Genomics.Variantsets.Search
    (
    -- * REST Resource
      VariantsetsSearchResource

    -- * Creating a Request
    , variantsetsSearch'
    , VariantsetsSearch'

    -- * Request Lenses
    , vXgafv
    , vQuotaUser
    , vPrettyPrint
    , vUploadProtocol
    , vPp
    , vAccessToken
    , vUploadType
    , vPayload
    , vBearerToken
    , vKey
    , vOAuthToken
    , vFields
    , vCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsSearch@ method which the
-- 'VariantsetsSearch'' request conforms to.
type VariantsetsSearchResource =
     "v1" :>
       "variantsets" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] SearchVariantSetsRequest :>
                                       Post '[JSON] SearchVariantSetsResponse

-- | Returns a list of all variant sets matching search criteria. Implements
-- [GlobalAllianceApi.searchVariantSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L49).
--
-- /See:/ 'variantsetsSearch'' smart constructor.
data VariantsetsSearch' = VariantsetsSearch'
    { _vXgafv          :: !(Maybe Text)
    , _vQuotaUser      :: !(Maybe Text)
    , _vPrettyPrint    :: !Bool
    , _vUploadProtocol :: !(Maybe Text)
    , _vPp             :: !Bool
    , _vAccessToken    :: !(Maybe Text)
    , _vUploadType     :: !(Maybe Text)
    , _vPayload        :: !SearchVariantSetsRequest
    , _vBearerToken    :: !(Maybe Text)
    , _vKey            :: !(Maybe AuthKey)
    , _vOAuthToken     :: !(Maybe OAuthToken)
    , _vFields         :: !(Maybe Text)
    , _vCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vXgafv'
--
-- * 'vQuotaUser'
--
-- * 'vPrettyPrint'
--
-- * 'vUploadProtocol'
--
-- * 'vPp'
--
-- * 'vAccessToken'
--
-- * 'vUploadType'
--
-- * 'vPayload'
--
-- * 'vBearerToken'
--
-- * 'vKey'
--
-- * 'vOAuthToken'
--
-- * 'vFields'
--
-- * 'vCallback'
variantsetsSearch'
    :: SearchVariantSetsRequest -- ^ 'payload'
    -> VariantsetsSearch'
variantsetsSearch' pVPayload_ =
    VariantsetsSearch'
    { _vXgafv = Nothing
    , _vQuotaUser = Nothing
    , _vPrettyPrint = True
    , _vUploadProtocol = Nothing
    , _vPp = True
    , _vAccessToken = Nothing
    , _vUploadType = Nothing
    , _vPayload = pVPayload_
    , _vBearerToken = Nothing
    , _vKey = Nothing
    , _vOAuthToken = Nothing
    , _vFields = Nothing
    , _vCallback = Nothing
    }

-- | V1 error format.
vXgafv :: Lens' VariantsetsSearch' (Maybe Text)
vXgafv = lens _vXgafv (\ s a -> s{_vXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
vQuotaUser :: Lens' VariantsetsSearch' (Maybe Text)
vQuotaUser
  = lens _vQuotaUser (\ s a -> s{_vQuotaUser = a})

-- | Returns response with indentations and line breaks.
vPrettyPrint :: Lens' VariantsetsSearch' Bool
vPrettyPrint
  = lens _vPrettyPrint (\ s a -> s{_vPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vUploadProtocol :: Lens' VariantsetsSearch' (Maybe Text)
vUploadProtocol
  = lens _vUploadProtocol
      (\ s a -> s{_vUploadProtocol = a})

-- | Pretty-print response.
vPp :: Lens' VariantsetsSearch' Bool
vPp = lens _vPp (\ s a -> s{_vPp = a})

-- | OAuth access token.
vAccessToken :: Lens' VariantsetsSearch' (Maybe Text)
vAccessToken
  = lens _vAccessToken (\ s a -> s{_vAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vUploadType :: Lens' VariantsetsSearch' (Maybe Text)
vUploadType
  = lens _vUploadType (\ s a -> s{_vUploadType = a})

-- | Multipart request metadata.
vPayload :: Lens' VariantsetsSearch' SearchVariantSetsRequest
vPayload = lens _vPayload (\ s a -> s{_vPayload = a})

-- | OAuth bearer token.
vBearerToken :: Lens' VariantsetsSearch' (Maybe Text)
vBearerToken
  = lens _vBearerToken (\ s a -> s{_vBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vKey :: Lens' VariantsetsSearch' (Maybe AuthKey)
vKey = lens _vKey (\ s a -> s{_vKey = a})

-- | OAuth 2.0 token for the current user.
vOAuthToken :: Lens' VariantsetsSearch' (Maybe OAuthToken)
vOAuthToken
  = lens _vOAuthToken (\ s a -> s{_vOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vFields :: Lens' VariantsetsSearch' (Maybe Text)
vFields = lens _vFields (\ s a -> s{_vFields = a})

-- | JSONP
vCallback :: Lens' VariantsetsSearch' (Maybe Text)
vCallback
  = lens _vCallback (\ s a -> s{_vCallback = a})

instance GoogleAuth VariantsetsSearch' where
        _AuthKey = vKey . _Just
        _AuthToken = vOAuthToken . _Just

instance GoogleRequest VariantsetsSearch' where
        type Rs VariantsetsSearch' =
             SearchVariantSetsResponse
        request = requestWith genomicsRequest
        requestWith rq VariantsetsSearch'{..}
          = go _vXgafv _vUploadProtocol (Just _vPp)
              _vAccessToken
              _vUploadType
              _vBearerToken
              _vCallback
              _vQuotaUser
              (Just _vPrettyPrint)
              _vFields
              _vKey
              _vOAuthToken
              (Just AltJSON)
              _vPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy VariantsetsSearchResource)
                      rq
