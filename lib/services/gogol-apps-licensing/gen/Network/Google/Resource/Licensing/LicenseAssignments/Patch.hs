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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reassign a user\'s product SKU with a different SKU in the same product.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.patch@.
module Network.Google.Resource.Licensing.LicenseAssignments.Patch
    (
    -- * REST Resource
      LicenseAssignmentsPatchResource

    -- * Creating a Request
    , licenseAssignmentsPatch
    , LicenseAssignmentsPatch

    -- * Request Lenses
    , lapXgafv
    , lapUploadProtocol
    , lapAccessToken
    , lapSKUId
    , lapUploadType
    , lapPayload
    , lapUserId
    , lapProductId
    , lapCallback
    ) where

import Network.Google.AppsLicensing.Types
import Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.patch@ method which the
-- 'LicenseAssignmentsPatch' request conforms to.
type LicenseAssignmentsPatchResource =
     "apps" :>
       "licensing" :>
         "v1" :>
           "product" :>
             Capture "productId" Text :>
               "sku" :>
                 Capture "skuId" Text :>
                   "user" :>
                     Capture "userId" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] LicenseAssignment :>
                                     Patch '[JSON] LicenseAssignment

-- | Reassign a user\'s product SKU with a different SKU in the same product.
-- This method supports patch semantics.
--
-- /See:/ 'licenseAssignmentsPatch' smart constructor.
data LicenseAssignmentsPatch =
  LicenseAssignmentsPatch'
    { _lapXgafv :: !(Maybe Xgafv)
    , _lapUploadProtocol :: !(Maybe Text)
    , _lapAccessToken :: !(Maybe Text)
    , _lapSKUId :: !Text
    , _lapUploadType :: !(Maybe Text)
    , _lapPayload :: !LicenseAssignment
    , _lapUserId :: !Text
    , _lapProductId :: !Text
    , _lapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicenseAssignmentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapXgafv'
--
-- * 'lapUploadProtocol'
--
-- * 'lapAccessToken'
--
-- * 'lapSKUId'
--
-- * 'lapUploadType'
--
-- * 'lapPayload'
--
-- * 'lapUserId'
--
-- * 'lapProductId'
--
-- * 'lapCallback'
licenseAssignmentsPatch
    :: Text -- ^ 'lapSKUId'
    -> LicenseAssignment -- ^ 'lapPayload'
    -> Text -- ^ 'lapUserId'
    -> Text -- ^ 'lapProductId'
    -> LicenseAssignmentsPatch
licenseAssignmentsPatch pLapSKUId_ pLapPayload_ pLapUserId_ pLapProductId_ =
  LicenseAssignmentsPatch'
    { _lapXgafv = Nothing
    , _lapUploadProtocol = Nothing
    , _lapAccessToken = Nothing
    , _lapSKUId = pLapSKUId_
    , _lapUploadType = Nothing
    , _lapPayload = pLapPayload_
    , _lapUserId = pLapUserId_
    , _lapProductId = pLapProductId_
    , _lapCallback = Nothing
    }


-- | V1 error format.
lapXgafv :: Lens' LicenseAssignmentsPatch (Maybe Xgafv)
lapXgafv = lens _lapXgafv (\ s a -> s{_lapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lapUploadProtocol :: Lens' LicenseAssignmentsPatch (Maybe Text)
lapUploadProtocol
  = lens _lapUploadProtocol
      (\ s a -> s{_lapUploadProtocol = a})

-- | OAuth access token.
lapAccessToken :: Lens' LicenseAssignmentsPatch (Maybe Text)
lapAccessToken
  = lens _lapAccessToken
      (\ s a -> s{_lapAccessToken = a})

-- | A product SKU\'s unique identifier. For more information about available
-- SKUs in this version of the API, see Products and SKUs.
lapSKUId :: Lens' LicenseAssignmentsPatch Text
lapSKUId = lens _lapSKUId (\ s a -> s{_lapSKUId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lapUploadType :: Lens' LicenseAssignmentsPatch (Maybe Text)
lapUploadType
  = lens _lapUploadType
      (\ s a -> s{_lapUploadType = a})

-- | Multipart request metadata.
lapPayload :: Lens' LicenseAssignmentsPatch LicenseAssignment
lapPayload
  = lens _lapPayload (\ s a -> s{_lapPayload = a})

-- | The user\'s current primary email address. If the user\'s email address
-- changes, use the new email address in your API requests. Since a
-- \`userId\` is subject to change, do not use a \`userId\` value as a key
-- for persistent data. This key could break if the current user\'s email
-- address changes. If the \`userId\` is suspended, the license status
-- changes.
lapUserId :: Lens' LicenseAssignmentsPatch Text
lapUserId
  = lens _lapUserId (\ s a -> s{_lapUserId = a})

-- | A product\'s unique identifier. For more information about products in
-- this version of the API, see Products and SKUs.
lapProductId :: Lens' LicenseAssignmentsPatch Text
lapProductId
  = lens _lapProductId (\ s a -> s{_lapProductId = a})

-- | JSONP
lapCallback :: Lens' LicenseAssignmentsPatch (Maybe Text)
lapCallback
  = lens _lapCallback (\ s a -> s{_lapCallback = a})

instance GoogleRequest LicenseAssignmentsPatch where
        type Rs LicenseAssignmentsPatch = LicenseAssignment
        type Scopes LicenseAssignmentsPatch =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsPatch'{..}
          = go _lapProductId _lapSKUId _lapUserId _lapXgafv
              _lapUploadProtocol
              _lapAccessToken
              _lapUploadType
              _lapCallback
              (Just AltJSON)
              _lapPayload
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsPatchResource)
                      mempty
