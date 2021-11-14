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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSKU
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all users assigned licenses for a specific product SKU.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.listForProductAndSku@.
module Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSKU
    (
    -- * REST Resource
      LicenseAssignmentsListForProductAndSKUResource

    -- * Creating a Request
    , licenseAssignmentsListForProductAndSKU
    , LicenseAssignmentsListForProductAndSKU

    -- * Request Lenses
    , lalfpaskuXgafv
    , lalfpaskuUploadProtocol
    , lalfpaskuAccessToken
    , lalfpaskuSKUId
    , lalfpaskuUploadType
    , lalfpaskuCustomerId
    , lalfpaskuPageToken
    , lalfpaskuProductId
    , lalfpaskuMaxResults
    , lalfpaskuCallback
    ) where

import Network.Google.AppsLicensing.Types
import Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.listForProductAndSku@ method which the
-- 'LicenseAssignmentsListForProductAndSKU' request conforms to.
type LicenseAssignmentsListForProductAndSKUResource =
     "apps" :>
       "licensing" :>
         "v1" :>
           "product" :>
             Capture "productId" Text :>
               "sku" :>
                 Capture "skuId" Text :>
                   "users" :>
                     QueryParam "customerId" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "maxResults" (Textual Word32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] LicenseAssignmentList

-- | List all users assigned licenses for a specific product SKU.
--
-- /See:/ 'licenseAssignmentsListForProductAndSKU' smart constructor.
data LicenseAssignmentsListForProductAndSKU =
  LicenseAssignmentsListForProductAndSKU'
    { _lalfpaskuXgafv :: !(Maybe Xgafv)
    , _lalfpaskuUploadProtocol :: !(Maybe Text)
    , _lalfpaskuAccessToken :: !(Maybe Text)
    , _lalfpaskuSKUId :: !Text
    , _lalfpaskuUploadType :: !(Maybe Text)
    , _lalfpaskuCustomerId :: !Text
    , _lalfpaskuPageToken :: !Text
    , _lalfpaskuProductId :: !Text
    , _lalfpaskuMaxResults :: !(Textual Word32)
    , _lalfpaskuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicenseAssignmentsListForProductAndSKU' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalfpaskuXgafv'
--
-- * 'lalfpaskuUploadProtocol'
--
-- * 'lalfpaskuAccessToken'
--
-- * 'lalfpaskuSKUId'
--
-- * 'lalfpaskuUploadType'
--
-- * 'lalfpaskuCustomerId'
--
-- * 'lalfpaskuPageToken'
--
-- * 'lalfpaskuProductId'
--
-- * 'lalfpaskuMaxResults'
--
-- * 'lalfpaskuCallback'
licenseAssignmentsListForProductAndSKU
    :: Text -- ^ 'lalfpaskuSKUId'
    -> Text -- ^ 'lalfpaskuCustomerId'
    -> Text -- ^ 'lalfpaskuProductId'
    -> LicenseAssignmentsListForProductAndSKU
licenseAssignmentsListForProductAndSKU pLalfpaskuSKUId_ pLalfpaskuCustomerId_ pLalfpaskuProductId_ =
  LicenseAssignmentsListForProductAndSKU'
    { _lalfpaskuXgafv = Nothing
    , _lalfpaskuUploadProtocol = Nothing
    , _lalfpaskuAccessToken = Nothing
    , _lalfpaskuSKUId = pLalfpaskuSKUId_
    , _lalfpaskuUploadType = Nothing
    , _lalfpaskuCustomerId = pLalfpaskuCustomerId_
    , _lalfpaskuPageToken = ""
    , _lalfpaskuProductId = pLalfpaskuProductId_
    , _lalfpaskuMaxResults = 100
    , _lalfpaskuCallback = Nothing
    }


-- | V1 error format.
lalfpaskuXgafv :: Lens' LicenseAssignmentsListForProductAndSKU (Maybe Xgafv)
lalfpaskuXgafv
  = lens _lalfpaskuXgafv
      (\ s a -> s{_lalfpaskuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lalfpaskuUploadProtocol :: Lens' LicenseAssignmentsListForProductAndSKU (Maybe Text)
lalfpaskuUploadProtocol
  = lens _lalfpaskuUploadProtocol
      (\ s a -> s{_lalfpaskuUploadProtocol = a})

-- | OAuth access token.
lalfpaskuAccessToken :: Lens' LicenseAssignmentsListForProductAndSKU (Maybe Text)
lalfpaskuAccessToken
  = lens _lalfpaskuAccessToken
      (\ s a -> s{_lalfpaskuAccessToken = a})

-- | A product SKU\'s unique identifier. For more information about available
-- SKUs in this version of the API, see Products and SKUs.
lalfpaskuSKUId :: Lens' LicenseAssignmentsListForProductAndSKU Text
lalfpaskuSKUId
  = lens _lalfpaskuSKUId
      (\ s a -> s{_lalfpaskuSKUId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lalfpaskuUploadType :: Lens' LicenseAssignmentsListForProductAndSKU (Maybe Text)
lalfpaskuUploadType
  = lens _lalfpaskuUploadType
      (\ s a -> s{_lalfpaskuUploadType = a})

-- | Customer\'s \`customerId\`. A previous version of this API accepted the
-- primary domain name as a value for this field. If the customer is
-- suspended, the server returns an error.
lalfpaskuCustomerId :: Lens' LicenseAssignmentsListForProductAndSKU Text
lalfpaskuCustomerId
  = lens _lalfpaskuCustomerId
      (\ s a -> s{_lalfpaskuCustomerId = a})

-- | Token to fetch the next page of data. The \`maxResults\` query string is
-- related to the \`pageToken\` since \`maxResults\` determines how many
-- entries are returned on each page. This is an optional query string. If
-- not specified, the server returns the first page.
lalfpaskuPageToken :: Lens' LicenseAssignmentsListForProductAndSKU Text
lalfpaskuPageToken
  = lens _lalfpaskuPageToken
      (\ s a -> s{_lalfpaskuPageToken = a})

-- | A product\'s unique identifier. For more information about products in
-- this version of the API, see Products and SKUs.
lalfpaskuProductId :: Lens' LicenseAssignmentsListForProductAndSKU Text
lalfpaskuProductId
  = lens _lalfpaskuProductId
      (\ s a -> s{_lalfpaskuProductId = a})

-- | The \`maxResults\` query string determines how many entries are returned
-- on each page of a large response. This is an optional parameter. The
-- value must be a positive number.
lalfpaskuMaxResults :: Lens' LicenseAssignmentsListForProductAndSKU Word32
lalfpaskuMaxResults
  = lens _lalfpaskuMaxResults
      (\ s a -> s{_lalfpaskuMaxResults = a})
      . _Coerce

-- | JSONP
lalfpaskuCallback :: Lens' LicenseAssignmentsListForProductAndSKU (Maybe Text)
lalfpaskuCallback
  = lens _lalfpaskuCallback
      (\ s a -> s{_lalfpaskuCallback = a})

instance GoogleRequest
           LicenseAssignmentsListForProductAndSKU
         where
        type Rs LicenseAssignmentsListForProductAndSKU =
             LicenseAssignmentList
        type Scopes LicenseAssignmentsListForProductAndSKU =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient
          LicenseAssignmentsListForProductAndSKU'{..}
          = go _lalfpaskuProductId _lalfpaskuSKUId
              (Just _lalfpaskuCustomerId)
              _lalfpaskuXgafv
              _lalfpaskuUploadProtocol
              _lalfpaskuAccessToken
              _lalfpaskuUploadType
              (Just _lalfpaskuPageToken)
              (Just _lalfpaskuMaxResults)
              _lalfpaskuCallback
              (Just AltJSON)
              appsLicensingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LicenseAssignmentsListForProductAndSKUResource)
                      mempty
