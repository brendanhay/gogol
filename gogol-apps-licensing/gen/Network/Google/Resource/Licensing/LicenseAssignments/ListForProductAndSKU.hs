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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List license assignments for given product and sku of the customer.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.listForProductAndSku@.
module Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSKU
    (
    -- * REST Resource
      LicenseAssignmentsListForProductAndSKUResource

    -- * Creating a Request
    , licenseAssignmentsListForProductAndSKU'
    , LicenseAssignmentsListForProductAndSKU'

    -- * Request Lenses
    , lalfpaskuSKUId
    , lalfpaskuCustomerId
    , lalfpaskuPageToken
    , lalfpaskuProductId
    , lalfpaskuMaxResults
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.listForProductAndSku@ method which the
-- 'LicenseAssignmentsListForProductAndSKU'' request conforms to.
type LicenseAssignmentsListForProductAndSKUResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "users" :>
             QueryParam "customerId" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] LicenseAssignmentList

-- | List license assignments for given product and sku of the customer.
--
-- /See:/ 'licenseAssignmentsListForProductAndSKU'' smart constructor.
data LicenseAssignmentsListForProductAndSKU' = LicenseAssignmentsListForProductAndSKU'
    { _lalfpaskuSKUId      :: !Text
    , _lalfpaskuCustomerId :: !Text
    , _lalfpaskuPageToken  :: !Text
    , _lalfpaskuProductId  :: !Text
    , _lalfpaskuMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsListForProductAndSKU'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalfpaskuSKUId'
--
-- * 'lalfpaskuCustomerId'
--
-- * 'lalfpaskuPageToken'
--
-- * 'lalfpaskuProductId'
--
-- * 'lalfpaskuMaxResults'
licenseAssignmentsListForProductAndSKU'
    :: Text -- ^ 'lalfpaskuSKUId'
    -> Text -- ^ 'lalfpaskuCustomerId'
    -> Text -- ^ 'lalfpaskuProductId'
    -> LicenseAssignmentsListForProductAndSKU'
licenseAssignmentsListForProductAndSKU' pLalfpaskuSKUId_ pLalfpaskuCustomerId_ pLalfpaskuProductId_ =
    LicenseAssignmentsListForProductAndSKU'
    { _lalfpaskuSKUId = pLalfpaskuSKUId_
    , _lalfpaskuCustomerId = pLalfpaskuCustomerId_
    , _lalfpaskuPageToken = ""
    , _lalfpaskuProductId = pLalfpaskuProductId_
    , _lalfpaskuMaxResults = 100
    }

-- | Name for sku
lalfpaskuSKUId :: Lens' LicenseAssignmentsListForProductAndSKU' Text
lalfpaskuSKUId
  = lens _lalfpaskuSKUId
      (\ s a -> s{_lalfpaskuSKUId = a})

-- | CustomerId represents the customer for whom licenseassignments are
-- queried
lalfpaskuCustomerId :: Lens' LicenseAssignmentsListForProductAndSKU' Text
lalfpaskuCustomerId
  = lens _lalfpaskuCustomerId
      (\ s a -> s{_lalfpaskuCustomerId = a})

-- | Token to fetch the next page.Optional. By default server will return
-- first page
lalfpaskuPageToken :: Lens' LicenseAssignmentsListForProductAndSKU' Text
lalfpaskuPageToken
  = lens _lalfpaskuPageToken
      (\ s a -> s{_lalfpaskuPageToken = a})

-- | Name for product
lalfpaskuProductId :: Lens' LicenseAssignmentsListForProductAndSKU' Text
lalfpaskuProductId
  = lens _lalfpaskuProductId
      (\ s a -> s{_lalfpaskuProductId = a})

-- | Maximum number of campaigns to return at one time. Must be positive.
-- Optional. Default value is 100.
lalfpaskuMaxResults :: Lens' LicenseAssignmentsListForProductAndSKU' Word32
lalfpaskuMaxResults
  = lens _lalfpaskuMaxResults
      (\ s a -> s{_lalfpaskuMaxResults = a})

instance GoogleRequest
         LicenseAssignmentsListForProductAndSKU' where
        type Rs LicenseAssignmentsListForProductAndSKU' =
             LicenseAssignmentList
        requestClient
          LicenseAssignmentsListForProductAndSKU'{..}
          = go _lalfpaskuProductId _lalfpaskuSKUId
              (Just _lalfpaskuCustomerId)
              (Just _lalfpaskuPageToken)
              (Just _lalfpaskuMaxResults)
              (Just AltJSON)
              appsLicensingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LicenseAssignmentsListForProductAndSKUResource)
                      mempty
