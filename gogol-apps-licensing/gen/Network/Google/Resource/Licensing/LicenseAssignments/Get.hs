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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a specific user\'s license by product SKU.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.get@.
module Network.Google.Resource.Licensing.LicenseAssignments.Get
    (
    -- * REST Resource
      LicenseAssignmentsGetResource

    -- * Creating a Request
    , licenseAssignmentsGet
    , LicenseAssignmentsGet

    -- * Request Lenses
    , lagXgafv
    , lagUploadProtocol
    , lagAccessToken
    , lagSKUId
    , lagUploadType
    , lagUserId
    , lagProductId
    , lagCallback
    ) where

import Network.Google.AppsLicensing.Types
import Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.get@ method which the
-- 'LicenseAssignmentsGet' request conforms to.
type LicenseAssignmentsGetResource =
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
                                   Get '[JSON] LicenseAssignment

-- | Get a specific user\'s license by product SKU.
--
-- /See:/ 'licenseAssignmentsGet' smart constructor.
data LicenseAssignmentsGet =
  LicenseAssignmentsGet'
    { _lagXgafv :: !(Maybe Xgafv)
    , _lagUploadProtocol :: !(Maybe Text)
    , _lagAccessToken :: !(Maybe Text)
    , _lagSKUId :: !Text
    , _lagUploadType :: !(Maybe Text)
    , _lagUserId :: !Text
    , _lagProductId :: !Text
    , _lagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicenseAssignmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lagXgafv'
--
-- * 'lagUploadProtocol'
--
-- * 'lagAccessToken'
--
-- * 'lagSKUId'
--
-- * 'lagUploadType'
--
-- * 'lagUserId'
--
-- * 'lagProductId'
--
-- * 'lagCallback'
licenseAssignmentsGet
    :: Text -- ^ 'lagSKUId'
    -> Text -- ^ 'lagUserId'
    -> Text -- ^ 'lagProductId'
    -> LicenseAssignmentsGet
licenseAssignmentsGet pLagSKUId_ pLagUserId_ pLagProductId_ =
  LicenseAssignmentsGet'
    { _lagXgafv = Nothing
    , _lagUploadProtocol = Nothing
    , _lagAccessToken = Nothing
    , _lagSKUId = pLagSKUId_
    , _lagUploadType = Nothing
    , _lagUserId = pLagUserId_
    , _lagProductId = pLagProductId_
    , _lagCallback = Nothing
    }


-- | V1 error format.
lagXgafv :: Lens' LicenseAssignmentsGet (Maybe Xgafv)
lagXgafv = lens _lagXgafv (\ s a -> s{_lagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lagUploadProtocol :: Lens' LicenseAssignmentsGet (Maybe Text)
lagUploadProtocol
  = lens _lagUploadProtocol
      (\ s a -> s{_lagUploadProtocol = a})

-- | OAuth access token.
lagAccessToken :: Lens' LicenseAssignmentsGet (Maybe Text)
lagAccessToken
  = lens _lagAccessToken
      (\ s a -> s{_lagAccessToken = a})

-- | A product SKU\'s unique identifier. For more information about available
-- SKUs in this version of the API, see Products and SKUs.
lagSKUId :: Lens' LicenseAssignmentsGet Text
lagSKUId = lens _lagSKUId (\ s a -> s{_lagSKUId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lagUploadType :: Lens' LicenseAssignmentsGet (Maybe Text)
lagUploadType
  = lens _lagUploadType
      (\ s a -> s{_lagUploadType = a})

-- | The user\'s current primary email address. If the user\'s email address
-- changes, use the new email address in your API requests. Since a
-- \`userId\` is subject to change, do not use a \`userId\` value as a key
-- for persistent data. This key could break if the current user\'s email
-- address changes. If the \`userId\` is suspended, the license status
-- changes.
lagUserId :: Lens' LicenseAssignmentsGet Text
lagUserId
  = lens _lagUserId (\ s a -> s{_lagUserId = a})

-- | A product\'s unique identifier. For more information about products in
-- this version of the API, see Products and SKUs.
lagProductId :: Lens' LicenseAssignmentsGet Text
lagProductId
  = lens _lagProductId (\ s a -> s{_lagProductId = a})

-- | JSONP
lagCallback :: Lens' LicenseAssignmentsGet (Maybe Text)
lagCallback
  = lens _lagCallback (\ s a -> s{_lagCallback = a})

instance GoogleRequest LicenseAssignmentsGet where
        type Rs LicenseAssignmentsGet = LicenseAssignment
        type Scopes LicenseAssignmentsGet =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsGet'{..}
          = go _lagProductId _lagSKUId _lagUserId _lagXgafv
              _lagUploadProtocol
              _lagAccessToken
              _lagUploadType
              _lagCallback
              (Just AltJSON)
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsGetResource)
                      mempty
