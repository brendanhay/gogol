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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all users assigned licenses for a specific product SKU.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.listForProduct@.
module Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct
    (
    -- * REST Resource
      LicenseAssignmentsListForProductResource

    -- * Creating a Request
    , licenseAssignmentsListForProduct
    , LicenseAssignmentsListForProduct

    -- * Request Lenses
    , lalfpXgafv
    , lalfpUploadProtocol
    , lalfpAccessToken
    , lalfpUploadType
    , lalfpCustomerId
    , lalfpPageToken
    , lalfpProductId
    , lalfpMaxResults
    , lalfpCallback
    ) where

import Network.Google.AppsLicensing.Types
import Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.listForProduct@ method which the
-- 'LicenseAssignmentsListForProduct' request conforms to.
type LicenseAssignmentsListForProductResource =
     "apps" :>
       "licensing" :>
         "v1" :>
           "product" :>
             Capture "productId" Text :>
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
-- /See:/ 'licenseAssignmentsListForProduct' smart constructor.
data LicenseAssignmentsListForProduct =
  LicenseAssignmentsListForProduct'
    { _lalfpXgafv :: !(Maybe Xgafv)
    , _lalfpUploadProtocol :: !(Maybe Text)
    , _lalfpAccessToken :: !(Maybe Text)
    , _lalfpUploadType :: !(Maybe Text)
    , _lalfpCustomerId :: !Text
    , _lalfpPageToken :: !Text
    , _lalfpProductId :: !Text
    , _lalfpMaxResults :: !(Textual Word32)
    , _lalfpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicenseAssignmentsListForProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalfpXgafv'
--
-- * 'lalfpUploadProtocol'
--
-- * 'lalfpAccessToken'
--
-- * 'lalfpUploadType'
--
-- * 'lalfpCustomerId'
--
-- * 'lalfpPageToken'
--
-- * 'lalfpProductId'
--
-- * 'lalfpMaxResults'
--
-- * 'lalfpCallback'
licenseAssignmentsListForProduct
    :: Text -- ^ 'lalfpCustomerId'
    -> Text -- ^ 'lalfpProductId'
    -> LicenseAssignmentsListForProduct
licenseAssignmentsListForProduct pLalfpCustomerId_ pLalfpProductId_ =
  LicenseAssignmentsListForProduct'
    { _lalfpXgafv = Nothing
    , _lalfpUploadProtocol = Nothing
    , _lalfpAccessToken = Nothing
    , _lalfpUploadType = Nothing
    , _lalfpCustomerId = pLalfpCustomerId_
    , _lalfpPageToken = ""
    , _lalfpProductId = pLalfpProductId_
    , _lalfpMaxResults = 100
    , _lalfpCallback = Nothing
    }


-- | V1 error format.
lalfpXgafv :: Lens' LicenseAssignmentsListForProduct (Maybe Xgafv)
lalfpXgafv
  = lens _lalfpXgafv (\ s a -> s{_lalfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lalfpUploadProtocol :: Lens' LicenseAssignmentsListForProduct (Maybe Text)
lalfpUploadProtocol
  = lens _lalfpUploadProtocol
      (\ s a -> s{_lalfpUploadProtocol = a})

-- | OAuth access token.
lalfpAccessToken :: Lens' LicenseAssignmentsListForProduct (Maybe Text)
lalfpAccessToken
  = lens _lalfpAccessToken
      (\ s a -> s{_lalfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lalfpUploadType :: Lens' LicenseAssignmentsListForProduct (Maybe Text)
lalfpUploadType
  = lens _lalfpUploadType
      (\ s a -> s{_lalfpUploadType = a})

-- | Customer\'s \`customerId\`. A previous version of this API accepted the
-- primary domain name as a value for this field. If the customer is
-- suspended, the server returns an error.
lalfpCustomerId :: Lens' LicenseAssignmentsListForProduct Text
lalfpCustomerId
  = lens _lalfpCustomerId
      (\ s a -> s{_lalfpCustomerId = a})

-- | Token to fetch the next page of data. The \`maxResults\` query string is
-- related to the \`pageToken\` since \`maxResults\` determines how many
-- entries are returned on each page. This is an optional query string. If
-- not specified, the server returns the first page.
lalfpPageToken :: Lens' LicenseAssignmentsListForProduct Text
lalfpPageToken
  = lens _lalfpPageToken
      (\ s a -> s{_lalfpPageToken = a})

-- | A product\'s unique identifier. For more information about products in
-- this version of the API, see Products and SKUs.
lalfpProductId :: Lens' LicenseAssignmentsListForProduct Text
lalfpProductId
  = lens _lalfpProductId
      (\ s a -> s{_lalfpProductId = a})

-- | The \`maxResults\` query string determines how many entries are returned
-- on each page of a large response. This is an optional parameter. The
-- value must be a positive number.
lalfpMaxResults :: Lens' LicenseAssignmentsListForProduct Word32
lalfpMaxResults
  = lens _lalfpMaxResults
      (\ s a -> s{_lalfpMaxResults = a})
      . _Coerce

-- | JSONP
lalfpCallback :: Lens' LicenseAssignmentsListForProduct (Maybe Text)
lalfpCallback
  = lens _lalfpCallback
      (\ s a -> s{_lalfpCallback = a})

instance GoogleRequest
           LicenseAssignmentsListForProduct
         where
        type Rs LicenseAssignmentsListForProduct =
             LicenseAssignmentList
        type Scopes LicenseAssignmentsListForProduct =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsListForProduct'{..}
          = go _lalfpProductId (Just _lalfpCustomerId)
              _lalfpXgafv
              _lalfpUploadProtocol
              _lalfpAccessToken
              _lalfpUploadType
              (Just _lalfpPageToken)
              (Just _lalfpMaxResults)
              _lalfpCallback
              (Just AltJSON)
              appsLicensingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LicenseAssignmentsListForProductResource)
                      mempty
