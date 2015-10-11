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
-- Module      : Network.Google.Resource.Genomics.Variants.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of variants matching the criteria. Implements
-- [GlobalAllianceApi.searchVariants](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L126).
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsSearch@.
module Network.Google.Resource.Genomics.Variants.Search
    (
    -- * REST Resource
      VariantsSearchResource

    -- * Creating a Request
    , variantsSearch'
    , VariantsSearch'

    -- * Request Lenses
    , vsXgafv
    , vsQuotaUser
    , vsPrettyPrint
    , vsUploadProtocol
    , vsPp
    , vsAccessToken
    , vsUploadType
    , vsPayload
    , vsBearerToken
    , vsKey
    , vsOAuthToken
    , vsFields
    , vsCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsSearch@ method which the
-- 'VariantsSearch'' request conforms to.
type VariantsSearchResource =
     "v1" :>
       "variants" :>
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
                                     ReqBody '[JSON] SearchVariantsRequest :>
                                       Post '[JSON] SearchVariantsResponse

-- | Gets a list of variants matching the criteria. Implements
-- [GlobalAllianceApi.searchVariants](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L126).
--
-- /See:/ 'variantsSearch'' smart constructor.
data VariantsSearch' = VariantsSearch'
    { _vsXgafv          :: !(Maybe Text)
    , _vsQuotaUser      :: !(Maybe Text)
    , _vsPrettyPrint    :: !Bool
    , _vsUploadProtocol :: !(Maybe Text)
    , _vsPp             :: !Bool
    , _vsAccessToken    :: !(Maybe Text)
    , _vsUploadType     :: !(Maybe Text)
    , _vsPayload        :: !SearchVariantsRequest
    , _vsBearerToken    :: !(Maybe Text)
    , _vsKey            :: !(Maybe AuthKey)
    , _vsOAuthToken     :: !(Maybe OAuthToken)
    , _vsFields         :: !(Maybe Text)
    , _vsCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsXgafv'
--
-- * 'vsQuotaUser'
--
-- * 'vsPrettyPrint'
--
-- * 'vsUploadProtocol'
--
-- * 'vsPp'
--
-- * 'vsAccessToken'
--
-- * 'vsUploadType'
--
-- * 'vsPayload'
--
-- * 'vsBearerToken'
--
-- * 'vsKey'
--
-- * 'vsOAuthToken'
--
-- * 'vsFields'
--
-- * 'vsCallback'
variantsSearch'
    :: SearchVariantsRequest -- ^ 'payload'
    -> VariantsSearch'
variantsSearch' pVsPayload_ =
    VariantsSearch'
    { _vsXgafv = Nothing
    , _vsQuotaUser = Nothing
    , _vsPrettyPrint = True
    , _vsUploadProtocol = Nothing
    , _vsPp = True
    , _vsAccessToken = Nothing
    , _vsUploadType = Nothing
    , _vsPayload = pVsPayload_
    , _vsBearerToken = Nothing
    , _vsKey = Nothing
    , _vsOAuthToken = Nothing
    , _vsFields = Nothing
    , _vsCallback = Nothing
    }

-- | V1 error format.
vsXgafv :: Lens' VariantsSearch' (Maybe Text)
vsXgafv = lens _vsXgafv (\ s a -> s{_vsXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
vsQuotaUser :: Lens' VariantsSearch' (Maybe Text)
vsQuotaUser
  = lens _vsQuotaUser (\ s a -> s{_vsQuotaUser = a})

-- | Returns response with indentations and line breaks.
vsPrettyPrint :: Lens' VariantsSearch' Bool
vsPrettyPrint
  = lens _vsPrettyPrint
      (\ s a -> s{_vsPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vsUploadProtocol :: Lens' VariantsSearch' (Maybe Text)
vsUploadProtocol
  = lens _vsUploadProtocol
      (\ s a -> s{_vsUploadProtocol = a})

-- | Pretty-print response.
vsPp :: Lens' VariantsSearch' Bool
vsPp = lens _vsPp (\ s a -> s{_vsPp = a})

-- | OAuth access token.
vsAccessToken :: Lens' VariantsSearch' (Maybe Text)
vsAccessToken
  = lens _vsAccessToken
      (\ s a -> s{_vsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vsUploadType :: Lens' VariantsSearch' (Maybe Text)
vsUploadType
  = lens _vsUploadType (\ s a -> s{_vsUploadType = a})

-- | Multipart request metadata.
vsPayload :: Lens' VariantsSearch' SearchVariantsRequest
vsPayload
  = lens _vsPayload (\ s a -> s{_vsPayload = a})

-- | OAuth bearer token.
vsBearerToken :: Lens' VariantsSearch' (Maybe Text)
vsBearerToken
  = lens _vsBearerToken
      (\ s a -> s{_vsBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vsKey :: Lens' VariantsSearch' (Maybe AuthKey)
vsKey = lens _vsKey (\ s a -> s{_vsKey = a})

-- | OAuth 2.0 token for the current user.
vsOAuthToken :: Lens' VariantsSearch' (Maybe OAuthToken)
vsOAuthToken
  = lens _vsOAuthToken (\ s a -> s{_vsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vsFields :: Lens' VariantsSearch' (Maybe Text)
vsFields = lens _vsFields (\ s a -> s{_vsFields = a})

-- | JSONP
vsCallback :: Lens' VariantsSearch' (Maybe Text)
vsCallback
  = lens _vsCallback (\ s a -> s{_vsCallback = a})

instance GoogleAuth VariantsSearch' where
        _AuthKey = vsKey . _Just
        _AuthToken = vsOAuthToken . _Just

instance GoogleRequest VariantsSearch' where
        type Rs VariantsSearch' = SearchVariantsResponse
        request = requestWith genomicsRequest
        requestWith rq VariantsSearch'{..}
          = go _vsXgafv _vsUploadProtocol (Just _vsPp)
              _vsAccessToken
              _vsUploadType
              _vsBearerToken
              _vsCallback
              _vsQuotaUser
              (Just _vsPrettyPrint)
              _vsFields
              _vsKey
              _vsOAuthToken
              (Just AltJSON)
              _vsPayload
          where go
                  = clientBuild (Proxy :: Proxy VariantsSearchResource)
                      rq
