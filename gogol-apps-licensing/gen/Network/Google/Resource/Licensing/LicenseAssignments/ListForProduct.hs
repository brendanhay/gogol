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
-- List license assignments for given product of the customer.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.listForProduct@.
module Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct
    (
    -- * REST Resource
      LicenseAssignmentsListForProductResource

    -- * Creating a Request
    , licenseAssignmentsListForProduct
    , LicenseAssignmentsListForProduct

    -- * Request Lenses
    , lalfpCustomerId
    , lalfpPageToken
    , lalfpProductId
    , lalfpMaxResults
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

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
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] LicenseAssignmentList

-- | List license assignments for given product of the customer.
--
-- /See:/ 'licenseAssignmentsListForProduct' smart constructor.
data LicenseAssignmentsListForProduct =
  LicenseAssignmentsListForProduct'
    { _lalfpCustomerId :: !Text
    , _lalfpPageToken  :: !Text
    , _lalfpProductId  :: !Text
    , _lalfpMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LicenseAssignmentsListForProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalfpCustomerId'
--
-- * 'lalfpPageToken'
--
-- * 'lalfpProductId'
--
-- * 'lalfpMaxResults'
licenseAssignmentsListForProduct
    :: Text -- ^ 'lalfpCustomerId'
    -> Text -- ^ 'lalfpProductId'
    -> LicenseAssignmentsListForProduct
licenseAssignmentsListForProduct pLalfpCustomerId_ pLalfpProductId_ =
  LicenseAssignmentsListForProduct'
    { _lalfpCustomerId = pLalfpCustomerId_
    , _lalfpPageToken = ""
    , _lalfpProductId = pLalfpProductId_
    , _lalfpMaxResults = 100
    }

-- | CustomerId represents the customer for whom licenseassignments are
-- queried
lalfpCustomerId :: Lens' LicenseAssignmentsListForProduct Text
lalfpCustomerId
  = lens _lalfpCustomerId
      (\ s a -> s{_lalfpCustomerId = a})

-- | Token to fetch the next page.Optional. By default server will return
-- first page
lalfpPageToken :: Lens' LicenseAssignmentsListForProduct Text
lalfpPageToken
  = lens _lalfpPageToken
      (\ s a -> s{_lalfpPageToken = a})

-- | Name for product
lalfpProductId :: Lens' LicenseAssignmentsListForProduct Text
lalfpProductId
  = lens _lalfpProductId
      (\ s a -> s{_lalfpProductId = a})

-- | Maximum number of campaigns to return at one time. Must be positive.
-- Optional. Default value is 100.
lalfpMaxResults :: Lens' LicenseAssignmentsListForProduct Word32
lalfpMaxResults
  = lens _lalfpMaxResults
      (\ s a -> s{_lalfpMaxResults = a})
      . _Coerce

instance GoogleRequest
           LicenseAssignmentsListForProduct
         where
        type Rs LicenseAssignmentsListForProduct =
             LicenseAssignmentList
        type Scopes LicenseAssignmentsListForProduct =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsListForProduct'{..}
          = go _lalfpProductId (Just _lalfpCustomerId)
              (Just _lalfpPageToken)
              (Just _lalfpMaxResults)
              (Just AltJSON)
              appsLicensingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LicenseAssignmentsListForProductResource)
                      mempty
