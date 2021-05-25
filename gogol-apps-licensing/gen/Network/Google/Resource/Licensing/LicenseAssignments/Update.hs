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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reassign a user\'s product SKU with a different SKU in the same product.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.update@.
module Network.Google.Resource.Licensing.LicenseAssignments.Update
    (
    -- * REST Resource
      LicenseAssignmentsUpdateResource

    -- * Creating a Request
    , licenseAssignmentsUpdate
    , LicenseAssignmentsUpdate

    -- * Request Lenses
    , lauXgafv
    , lauUploadProtocol
    , lauAccessToken
    , lauSKUId
    , lauUploadType
    , lauPayload
    , lauUserId
    , lauProductId
    , lauCallback
    ) where

import Network.Google.AppsLicensing.Types
import Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.update@ method which the
-- 'LicenseAssignmentsUpdate' request conforms to.
type LicenseAssignmentsUpdateResource =
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
                                     Put '[JSON] LicenseAssignment

-- | Reassign a user\'s product SKU with a different SKU in the same product.
--
-- /See:/ 'licenseAssignmentsUpdate' smart constructor.
data LicenseAssignmentsUpdate =
  LicenseAssignmentsUpdate'
    { _lauXgafv :: !(Maybe Xgafv)
    , _lauUploadProtocol :: !(Maybe Text)
    , _lauAccessToken :: !(Maybe Text)
    , _lauSKUId :: !Text
    , _lauUploadType :: !(Maybe Text)
    , _lauPayload :: !LicenseAssignment
    , _lauUserId :: !Text
    , _lauProductId :: !Text
    , _lauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicenseAssignmentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lauXgafv'
--
-- * 'lauUploadProtocol'
--
-- * 'lauAccessToken'
--
-- * 'lauSKUId'
--
-- * 'lauUploadType'
--
-- * 'lauPayload'
--
-- * 'lauUserId'
--
-- * 'lauProductId'
--
-- * 'lauCallback'
licenseAssignmentsUpdate
    :: Text -- ^ 'lauSKUId'
    -> LicenseAssignment -- ^ 'lauPayload'
    -> Text -- ^ 'lauUserId'
    -> Text -- ^ 'lauProductId'
    -> LicenseAssignmentsUpdate
licenseAssignmentsUpdate pLauSKUId_ pLauPayload_ pLauUserId_ pLauProductId_ =
  LicenseAssignmentsUpdate'
    { _lauXgafv = Nothing
    , _lauUploadProtocol = Nothing
    , _lauAccessToken = Nothing
    , _lauSKUId = pLauSKUId_
    , _lauUploadType = Nothing
    , _lauPayload = pLauPayload_
    , _lauUserId = pLauUserId_
    , _lauProductId = pLauProductId_
    , _lauCallback = Nothing
    }


-- | V1 error format.
lauXgafv :: Lens' LicenseAssignmentsUpdate (Maybe Xgafv)
lauXgafv = lens _lauXgafv (\ s a -> s{_lauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lauUploadProtocol :: Lens' LicenseAssignmentsUpdate (Maybe Text)
lauUploadProtocol
  = lens _lauUploadProtocol
      (\ s a -> s{_lauUploadProtocol = a})

-- | OAuth access token.
lauAccessToken :: Lens' LicenseAssignmentsUpdate (Maybe Text)
lauAccessToken
  = lens _lauAccessToken
      (\ s a -> s{_lauAccessToken = a})

-- | A product SKU\'s unique identifier. For more information about available
-- SKUs in this version of the API, see Products and SKUs.
lauSKUId :: Lens' LicenseAssignmentsUpdate Text
lauSKUId = lens _lauSKUId (\ s a -> s{_lauSKUId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lauUploadType :: Lens' LicenseAssignmentsUpdate (Maybe Text)
lauUploadType
  = lens _lauUploadType
      (\ s a -> s{_lauUploadType = a})

-- | Multipart request metadata.
lauPayload :: Lens' LicenseAssignmentsUpdate LicenseAssignment
lauPayload
  = lens _lauPayload (\ s a -> s{_lauPayload = a})

-- | The user\'s current primary email address. If the user\'s email address
-- changes, use the new email address in your API requests. Since a
-- \`userId\` is subject to change, do not use a \`userId\` value as a key
-- for persistent data. This key could break if the current user\'s email
-- address changes. If the \`userId\` is suspended, the license status
-- changes.
lauUserId :: Lens' LicenseAssignmentsUpdate Text
lauUserId
  = lens _lauUserId (\ s a -> s{_lauUserId = a})

-- | A product\'s unique identifier. For more information about products in
-- this version of the API, see Products and SKUs.
lauProductId :: Lens' LicenseAssignmentsUpdate Text
lauProductId
  = lens _lauProductId (\ s a -> s{_lauProductId = a})

-- | JSONP
lauCallback :: Lens' LicenseAssignmentsUpdate (Maybe Text)
lauCallback
  = lens _lauCallback (\ s a -> s{_lauCallback = a})

instance GoogleRequest LicenseAssignmentsUpdate where
        type Rs LicenseAssignmentsUpdate = LicenseAssignment
        type Scopes LicenseAssignmentsUpdate =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsUpdate'{..}
          = go _lauProductId _lauSKUId _lauUserId _lauXgafv
              _lauUploadProtocol
              _lauAccessToken
              _lauUploadType
              _lauCallback
              (Just AltJSON)
              _lauPayload
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsUpdateResource)
                      mempty
