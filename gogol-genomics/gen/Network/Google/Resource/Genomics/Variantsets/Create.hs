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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new variant set. The provided variant set must have a valid
-- \`datasetId\` set - all other fields are optional. Note that the \`id\`
-- field will be ignored, as this is assigned by the server.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsCreate@.
module Network.Google.Resource.Genomics.Variantsets.Create
    (
    -- * REST Resource
      VariantsetsCreateResource

    -- * Creating a Request
    , variantsetsCreate'
    , VariantsetsCreate'

    -- * Request Lenses
    , vcXgafv
    , vcQuotaUser
    , vcPrettyPrint
    , vcUploadProtocol
    , vcPp
    , vcAccessToken
    , vcUploadType
    , vcPayload
    , vcBearerToken
    , vcKey
    , vcOAuthToken
    , vcFields
    , vcCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsCreate@ method which the
-- 'VariantsetsCreate'' request conforms to.
type VariantsetsCreateResource =
     "v1" :>
       "variantsets" :>
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
                                   ReqBody '[JSON] VariantSet :>
                                     Post '[JSON] VariantSet

-- | Creates a new variant set. The provided variant set must have a valid
-- \`datasetId\` set - all other fields are optional. Note that the \`id\`
-- field will be ignored, as this is assigned by the server.
--
-- /See:/ 'variantsetsCreate'' smart constructor.
data VariantsetsCreate' = VariantsetsCreate'
    { _vcXgafv          :: !(Maybe Text)
    , _vcQuotaUser      :: !(Maybe Text)
    , _vcPrettyPrint    :: !Bool
    , _vcUploadProtocol :: !(Maybe Text)
    , _vcPp             :: !Bool
    , _vcAccessToken    :: !(Maybe Text)
    , _vcUploadType     :: !(Maybe Text)
    , _vcPayload        :: !VariantSet
    , _vcBearerToken    :: !(Maybe Text)
    , _vcKey            :: !(Maybe AuthKey)
    , _vcOAuthToken     :: !(Maybe OAuthToken)
    , _vcFields         :: !(Maybe Text)
    , _vcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcXgafv'
--
-- * 'vcQuotaUser'
--
-- * 'vcPrettyPrint'
--
-- * 'vcUploadProtocol'
--
-- * 'vcPp'
--
-- * 'vcAccessToken'
--
-- * 'vcUploadType'
--
-- * 'vcPayload'
--
-- * 'vcBearerToken'
--
-- * 'vcKey'
--
-- * 'vcOAuthToken'
--
-- * 'vcFields'
--
-- * 'vcCallback'
variantsetsCreate'
    :: VariantSet -- ^ 'payload'
    -> VariantsetsCreate'
variantsetsCreate' pVcPayload_ =
    VariantsetsCreate'
    { _vcXgafv = Nothing
    , _vcQuotaUser = Nothing
    , _vcPrettyPrint = True
    , _vcUploadProtocol = Nothing
    , _vcPp = True
    , _vcAccessToken = Nothing
    , _vcUploadType = Nothing
    , _vcPayload = pVcPayload_
    , _vcBearerToken = Nothing
    , _vcKey = Nothing
    , _vcOAuthToken = Nothing
    , _vcFields = Nothing
    , _vcCallback = Nothing
    }

-- | V1 error format.
vcXgafv :: Lens' VariantsetsCreate' (Maybe Text)
vcXgafv = lens _vcXgafv (\ s a -> s{_vcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
vcQuotaUser :: Lens' VariantsetsCreate' (Maybe Text)
vcQuotaUser
  = lens _vcQuotaUser (\ s a -> s{_vcQuotaUser = a})

-- | Returns response with indentations and line breaks.
vcPrettyPrint :: Lens' VariantsetsCreate' Bool
vcPrettyPrint
  = lens _vcPrettyPrint
      (\ s a -> s{_vcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vcUploadProtocol :: Lens' VariantsetsCreate' (Maybe Text)
vcUploadProtocol
  = lens _vcUploadProtocol
      (\ s a -> s{_vcUploadProtocol = a})

-- | Pretty-print response.
vcPp :: Lens' VariantsetsCreate' Bool
vcPp = lens _vcPp (\ s a -> s{_vcPp = a})

-- | OAuth access token.
vcAccessToken :: Lens' VariantsetsCreate' (Maybe Text)
vcAccessToken
  = lens _vcAccessToken
      (\ s a -> s{_vcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vcUploadType :: Lens' VariantsetsCreate' (Maybe Text)
vcUploadType
  = lens _vcUploadType (\ s a -> s{_vcUploadType = a})

-- | Multipart request metadata.
vcPayload :: Lens' VariantsetsCreate' VariantSet
vcPayload
  = lens _vcPayload (\ s a -> s{_vcPayload = a})

-- | OAuth bearer token.
vcBearerToken :: Lens' VariantsetsCreate' (Maybe Text)
vcBearerToken
  = lens _vcBearerToken
      (\ s a -> s{_vcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vcKey :: Lens' VariantsetsCreate' (Maybe AuthKey)
vcKey = lens _vcKey (\ s a -> s{_vcKey = a})

-- | OAuth 2.0 token for the current user.
vcOAuthToken :: Lens' VariantsetsCreate' (Maybe OAuthToken)
vcOAuthToken
  = lens _vcOAuthToken (\ s a -> s{_vcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vcFields :: Lens' VariantsetsCreate' (Maybe Text)
vcFields = lens _vcFields (\ s a -> s{_vcFields = a})

-- | JSONP
vcCallback :: Lens' VariantsetsCreate' (Maybe Text)
vcCallback
  = lens _vcCallback (\ s a -> s{_vcCallback = a})

instance GoogleAuth VariantsetsCreate' where
        _AuthKey = vcKey . _Just
        _AuthToken = vcOAuthToken . _Just

instance GoogleRequest VariantsetsCreate' where
        type Rs VariantsetsCreate' = VariantSet
        request = requestWith genomicsRequest
        requestWith rq VariantsetsCreate'{..}
          = go _vcXgafv _vcUploadProtocol (Just _vcPp)
              _vcAccessToken
              _vcUploadType
              _vcBearerToken
              _vcCallback
              _vcQuotaUser
              (Just _vcPrettyPrint)
              _vcFields
              _vcKey
              _vcOAuthToken
              (Just AltJSON)
              _vcPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy VariantsetsCreateResource)
                      rq
