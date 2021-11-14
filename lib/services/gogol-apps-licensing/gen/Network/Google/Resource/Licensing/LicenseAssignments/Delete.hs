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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revoke a license.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.delete@.
module Network.Google.Resource.Licensing.LicenseAssignments.Delete
    (
    -- * REST Resource
      LicenseAssignmentsDeleteResource

    -- * Creating a Request
    , licenseAssignmentsDelete
    , LicenseAssignmentsDelete

    -- * Request Lenses
    , ladXgafv
    , ladUploadProtocol
    , ladAccessToken
    , ladSKUId
    , ladUploadType
    , ladUserId
    , ladProductId
    , ladCallback
    ) where

import Network.Google.AppsLicensing.Types
import Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.delete@ method which the
-- 'LicenseAssignmentsDelete' request conforms to.
type LicenseAssignmentsDeleteResource =
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
                                   Delete '[JSON] Empty

-- | Revoke a license.
--
-- /See:/ 'licenseAssignmentsDelete' smart constructor.
data LicenseAssignmentsDelete =
  LicenseAssignmentsDelete'
    { _ladXgafv :: !(Maybe Xgafv)
    , _ladUploadProtocol :: !(Maybe Text)
    , _ladAccessToken :: !(Maybe Text)
    , _ladSKUId :: !Text
    , _ladUploadType :: !(Maybe Text)
    , _ladUserId :: !Text
    , _ladProductId :: !Text
    , _ladCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicenseAssignmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladXgafv'
--
-- * 'ladUploadProtocol'
--
-- * 'ladAccessToken'
--
-- * 'ladSKUId'
--
-- * 'ladUploadType'
--
-- * 'ladUserId'
--
-- * 'ladProductId'
--
-- * 'ladCallback'
licenseAssignmentsDelete
    :: Text -- ^ 'ladSKUId'
    -> Text -- ^ 'ladUserId'
    -> Text -- ^ 'ladProductId'
    -> LicenseAssignmentsDelete
licenseAssignmentsDelete pLadSKUId_ pLadUserId_ pLadProductId_ =
  LicenseAssignmentsDelete'
    { _ladXgafv = Nothing
    , _ladUploadProtocol = Nothing
    , _ladAccessToken = Nothing
    , _ladSKUId = pLadSKUId_
    , _ladUploadType = Nothing
    , _ladUserId = pLadUserId_
    , _ladProductId = pLadProductId_
    , _ladCallback = Nothing
    }


-- | V1 error format.
ladXgafv :: Lens' LicenseAssignmentsDelete (Maybe Xgafv)
ladXgafv = lens _ladXgafv (\ s a -> s{_ladXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ladUploadProtocol :: Lens' LicenseAssignmentsDelete (Maybe Text)
ladUploadProtocol
  = lens _ladUploadProtocol
      (\ s a -> s{_ladUploadProtocol = a})

-- | OAuth access token.
ladAccessToken :: Lens' LicenseAssignmentsDelete (Maybe Text)
ladAccessToken
  = lens _ladAccessToken
      (\ s a -> s{_ladAccessToken = a})

-- | A product SKU\'s unique identifier. For more information about available
-- SKUs in this version of the API, see Products and SKUs.
ladSKUId :: Lens' LicenseAssignmentsDelete Text
ladSKUId = lens _ladSKUId (\ s a -> s{_ladSKUId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ladUploadType :: Lens' LicenseAssignmentsDelete (Maybe Text)
ladUploadType
  = lens _ladUploadType
      (\ s a -> s{_ladUploadType = a})

-- | The user\'s current primary email address. If the user\'s email address
-- changes, use the new email address in your API requests. Since a
-- \`userId\` is subject to change, do not use a \`userId\` value as a key
-- for persistent data. This key could break if the current user\'s email
-- address changes. If the \`userId\` is suspended, the license status
-- changes.
ladUserId :: Lens' LicenseAssignmentsDelete Text
ladUserId
  = lens _ladUserId (\ s a -> s{_ladUserId = a})

-- | A product\'s unique identifier. For more information about products in
-- this version of the API, see Products and SKUs.
ladProductId :: Lens' LicenseAssignmentsDelete Text
ladProductId
  = lens _ladProductId (\ s a -> s{_ladProductId = a})

-- | JSONP
ladCallback :: Lens' LicenseAssignmentsDelete (Maybe Text)
ladCallback
  = lens _ladCallback (\ s a -> s{_ladCallback = a})

instance GoogleRequest LicenseAssignmentsDelete where
        type Rs LicenseAssignmentsDelete = Empty
        type Scopes LicenseAssignmentsDelete =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsDelete'{..}
          = go _ladProductId _ladSKUId _ladUserId _ladXgafv
              _ladUploadProtocol
              _ladAccessToken
              _ladUploadType
              _ladCallback
              (Just AltJSON)
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsDeleteResource)
                      mempty
