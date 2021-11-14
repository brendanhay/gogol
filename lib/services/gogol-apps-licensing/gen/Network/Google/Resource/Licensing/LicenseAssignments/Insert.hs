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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assign a license.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.insert@.
module Network.Google.Resource.Licensing.LicenseAssignments.Insert
    (
    -- * REST Resource
      LicenseAssignmentsInsertResource

    -- * Creating a Request
    , licenseAssignmentsInsert
    , LicenseAssignmentsInsert

    -- * Request Lenses
    , laiXgafv
    , laiUploadProtocol
    , laiAccessToken
    , laiSKUId
    , laiUploadType
    , laiPayload
    , laiProductId
    , laiCallback
    ) where

import Network.Google.AppsLicensing.Types
import Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.insert@ method which the
-- 'LicenseAssignmentsInsert' request conforms to.
type LicenseAssignmentsInsertResource =
     "apps" :>
       "licensing" :>
         "v1" :>
           "product" :>
             Capture "productId" Text :>
               "sku" :>
                 Capture "skuId" Text :>
                   "user" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] LicenseAssignmentInsert :>
                                   Post '[JSON] LicenseAssignment

-- | Assign a license.
--
-- /See:/ 'licenseAssignmentsInsert' smart constructor.
data LicenseAssignmentsInsert =
  LicenseAssignmentsInsert'
    { _laiXgafv :: !(Maybe Xgafv)
    , _laiUploadProtocol :: !(Maybe Text)
    , _laiAccessToken :: !(Maybe Text)
    , _laiSKUId :: !Text
    , _laiUploadType :: !(Maybe Text)
    , _laiPayload :: !LicenseAssignmentInsert
    , _laiProductId :: !Text
    , _laiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicenseAssignmentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laiXgafv'
--
-- * 'laiUploadProtocol'
--
-- * 'laiAccessToken'
--
-- * 'laiSKUId'
--
-- * 'laiUploadType'
--
-- * 'laiPayload'
--
-- * 'laiProductId'
--
-- * 'laiCallback'
licenseAssignmentsInsert
    :: Text -- ^ 'laiSKUId'
    -> LicenseAssignmentInsert -- ^ 'laiPayload'
    -> Text -- ^ 'laiProductId'
    -> LicenseAssignmentsInsert
licenseAssignmentsInsert pLaiSKUId_ pLaiPayload_ pLaiProductId_ =
  LicenseAssignmentsInsert'
    { _laiXgafv = Nothing
    , _laiUploadProtocol = Nothing
    , _laiAccessToken = Nothing
    , _laiSKUId = pLaiSKUId_
    , _laiUploadType = Nothing
    , _laiPayload = pLaiPayload_
    , _laiProductId = pLaiProductId_
    , _laiCallback = Nothing
    }


-- | V1 error format.
laiXgafv :: Lens' LicenseAssignmentsInsert (Maybe Xgafv)
laiXgafv = lens _laiXgafv (\ s a -> s{_laiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
laiUploadProtocol :: Lens' LicenseAssignmentsInsert (Maybe Text)
laiUploadProtocol
  = lens _laiUploadProtocol
      (\ s a -> s{_laiUploadProtocol = a})

-- | OAuth access token.
laiAccessToken :: Lens' LicenseAssignmentsInsert (Maybe Text)
laiAccessToken
  = lens _laiAccessToken
      (\ s a -> s{_laiAccessToken = a})

-- | A product SKU\'s unique identifier. For more information about available
-- SKUs in this version of the API, see Products and SKUs.
laiSKUId :: Lens' LicenseAssignmentsInsert Text
laiSKUId = lens _laiSKUId (\ s a -> s{_laiSKUId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
laiUploadType :: Lens' LicenseAssignmentsInsert (Maybe Text)
laiUploadType
  = lens _laiUploadType
      (\ s a -> s{_laiUploadType = a})

-- | Multipart request metadata.
laiPayload :: Lens' LicenseAssignmentsInsert LicenseAssignmentInsert
laiPayload
  = lens _laiPayload (\ s a -> s{_laiPayload = a})

-- | A product\'s unique identifier. For more information about products in
-- this version of the API, see Products and SKUs.
laiProductId :: Lens' LicenseAssignmentsInsert Text
laiProductId
  = lens _laiProductId (\ s a -> s{_laiProductId = a})

-- | JSONP
laiCallback :: Lens' LicenseAssignmentsInsert (Maybe Text)
laiCallback
  = lens _laiCallback (\ s a -> s{_laiCallback = a})

instance GoogleRequest LicenseAssignmentsInsert where
        type Rs LicenseAssignmentsInsert = LicenseAssignment
        type Scopes LicenseAssignmentsInsert =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsInsert'{..}
          = go _laiProductId _laiSKUId _laiXgafv
              _laiUploadProtocol
              _laiAccessToken
              _laiUploadType
              _laiCallback
              (Just AltJSON)
              _laiPayload
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsInsertResource)
                      mempty
