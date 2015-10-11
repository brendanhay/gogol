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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Export
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports variant set data to an external destination.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsExport@.
module Network.Google.Resource.Genomics.Variantsets.Export
    (
    -- * REST Resource
      VariantsetsExportResource

    -- * Creating a Request
    , variantsetsExport'
    , VariantsetsExport'

    -- * Request Lenses
    , veXgafv
    , veQuotaUser
    , vePrettyPrint
    , veUploadProtocol
    , vePp
    , veVariantSetId
    , veAccessToken
    , veUploadType
    , vePayload
    , veBearerToken
    , veKey
    , veOAuthToken
    , veFields
    , veCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsExport@ method which the
-- 'VariantsetsExport'' request conforms to.
type VariantsetsExportResource =
     "v1" :>
       "variantsets" :>
         CaptureMode "variantSetId" "export" Text :>
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
                                     ReqBody '[JSON] ExportVariantSetRequest :>
                                       Post '[JSON] Operation

-- | Exports variant set data to an external destination.
--
-- /See:/ 'variantsetsExport'' smart constructor.
data VariantsetsExport' = VariantsetsExport'
    { _veXgafv          :: !(Maybe Text)
    , _veQuotaUser      :: !(Maybe Text)
    , _vePrettyPrint    :: !Bool
    , _veUploadProtocol :: !(Maybe Text)
    , _vePp             :: !Bool
    , _veVariantSetId   :: !Text
    , _veAccessToken    :: !(Maybe Text)
    , _veUploadType     :: !(Maybe Text)
    , _vePayload        :: !ExportVariantSetRequest
    , _veBearerToken    :: !(Maybe Text)
    , _veKey            :: !(Maybe AuthKey)
    , _veOAuthToken     :: !(Maybe OAuthToken)
    , _veFields         :: !(Maybe Text)
    , _veCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veXgafv'
--
-- * 'veQuotaUser'
--
-- * 'vePrettyPrint'
--
-- * 'veUploadProtocol'
--
-- * 'vePp'
--
-- * 'veVariantSetId'
--
-- * 'veAccessToken'
--
-- * 'veUploadType'
--
-- * 'vePayload'
--
-- * 'veBearerToken'
--
-- * 'veKey'
--
-- * 'veOAuthToken'
--
-- * 'veFields'
--
-- * 'veCallback'
variantsetsExport'
    :: Text -- ^ 'variantSetId'
    -> ExportVariantSetRequest -- ^ 'payload'
    -> VariantsetsExport'
variantsetsExport' pVeVariantSetId_ pVePayload_ =
    VariantsetsExport'
    { _veXgafv = Nothing
    , _veQuotaUser = Nothing
    , _vePrettyPrint = True
    , _veUploadProtocol = Nothing
    , _vePp = True
    , _veVariantSetId = pVeVariantSetId_
    , _veAccessToken = Nothing
    , _veUploadType = Nothing
    , _vePayload = pVePayload_
    , _veBearerToken = Nothing
    , _veKey = Nothing
    , _veOAuthToken = Nothing
    , _veFields = Nothing
    , _veCallback = Nothing
    }

-- | V1 error format.
veXgafv :: Lens' VariantsetsExport' (Maybe Text)
veXgafv = lens _veXgafv (\ s a -> s{_veXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
veQuotaUser :: Lens' VariantsetsExport' (Maybe Text)
veQuotaUser
  = lens _veQuotaUser (\ s a -> s{_veQuotaUser = a})

-- | Returns response with indentations and line breaks.
vePrettyPrint :: Lens' VariantsetsExport' Bool
vePrettyPrint
  = lens _vePrettyPrint
      (\ s a -> s{_vePrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
veUploadProtocol :: Lens' VariantsetsExport' (Maybe Text)
veUploadProtocol
  = lens _veUploadProtocol
      (\ s a -> s{_veUploadProtocol = a})

-- | Pretty-print response.
vePp :: Lens' VariantsetsExport' Bool
vePp = lens _vePp (\ s a -> s{_vePp = a})

-- | Required. The ID of the variant set that contains variant data which
-- should be exported. The caller must have READ access to this variant
-- set.
veVariantSetId :: Lens' VariantsetsExport' Text
veVariantSetId
  = lens _veVariantSetId
      (\ s a -> s{_veVariantSetId = a})

-- | OAuth access token.
veAccessToken :: Lens' VariantsetsExport' (Maybe Text)
veAccessToken
  = lens _veAccessToken
      (\ s a -> s{_veAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
veUploadType :: Lens' VariantsetsExport' (Maybe Text)
veUploadType
  = lens _veUploadType (\ s a -> s{_veUploadType = a})

-- | Multipart request metadata.
vePayload :: Lens' VariantsetsExport' ExportVariantSetRequest
vePayload
  = lens _vePayload (\ s a -> s{_vePayload = a})

-- | OAuth bearer token.
veBearerToken :: Lens' VariantsetsExport' (Maybe Text)
veBearerToken
  = lens _veBearerToken
      (\ s a -> s{_veBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
veKey :: Lens' VariantsetsExport' (Maybe AuthKey)
veKey = lens _veKey (\ s a -> s{_veKey = a})

-- | OAuth 2.0 token for the current user.
veOAuthToken :: Lens' VariantsetsExport' (Maybe OAuthToken)
veOAuthToken
  = lens _veOAuthToken (\ s a -> s{_veOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
veFields :: Lens' VariantsetsExport' (Maybe Text)
veFields = lens _veFields (\ s a -> s{_veFields = a})

-- | JSONP
veCallback :: Lens' VariantsetsExport' (Maybe Text)
veCallback
  = lens _veCallback (\ s a -> s{_veCallback = a})

instance GoogleAuth VariantsetsExport' where
        _AuthKey = veKey . _Just
        _AuthToken = veOAuthToken . _Just

instance GoogleRequest VariantsetsExport' where
        type Rs VariantsetsExport' = Operation
        request = requestWith genomicsRequest
        requestWith rq VariantsetsExport'{..}
          = go _veVariantSetId _veXgafv _veUploadProtocol
              (Just _vePp)
              _veAccessToken
              _veUploadType
              _veBearerToken
              _veCallback
              _veQuotaUser
              (Just _vePrettyPrint)
              _veFields
              _veKey
              _veOAuthToken
              (Just AltJSON)
              _vePayload
          where go
                  = clientBuild
                      (Proxy :: Proxy VariantsetsExportResource)
                      rq
