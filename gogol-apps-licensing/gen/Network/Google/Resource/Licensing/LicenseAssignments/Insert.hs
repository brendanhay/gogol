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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Assign License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsInsert@.
module Network.Google.Resource.Licensing.LicenseAssignments.Insert
    (
    -- * REST Resource
      LicenseAssignmentsInsertResource

    -- * Creating a Request
    , licenseAssignmentsInsert'
    , LicenseAssignmentsInsert'

    -- * Request Lenses
    , laiSKUId
    , laiPayload
    , laiProductId
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsInsert@ method which the
-- 'LicenseAssignmentsInsert'' request conforms to.
type LicenseAssignmentsInsertResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] LicenseAssignmentInsert :>
                 Post '[JSON] LicenseAssignment

-- | Assign License.
--
-- /See:/ 'licenseAssignmentsInsert'' smart constructor.
data LicenseAssignmentsInsert' = LicenseAssignmentsInsert'
    { _laiSKUId     :: !Text
    , _laiPayload   :: !LicenseAssignmentInsert
    , _laiProductId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laiSKUId'
--
-- * 'laiPayload'
--
-- * 'laiProductId'
licenseAssignmentsInsert'
    :: Text -- ^ 'skuId'
    -> LicenseAssignmentInsert -- ^ 'payload'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsInsert'
licenseAssignmentsInsert' pLaiSKUId_ pLaiPayload_ pLaiProductId_ =
    LicenseAssignmentsInsert'
    { _laiSKUId = pLaiSKUId_
    , _laiPayload = pLaiPayload_
    , _laiProductId = pLaiProductId_
    }

-- | Name for sku
laiSKUId :: Lens' LicenseAssignmentsInsert' Text
laiSKUId = lens _laiSKUId (\ s a -> s{_laiSKUId = a})

-- | Multipart request metadata.
laiPayload :: Lens' LicenseAssignmentsInsert' LicenseAssignmentInsert
laiPayload
  = lens _laiPayload (\ s a -> s{_laiPayload = a})

-- | Name for product
laiProductId :: Lens' LicenseAssignmentsInsert' Text
laiProductId
  = lens _laiProductId (\ s a -> s{_laiProductId = a})

instance GoogleRequest LicenseAssignmentsInsert'
         where
        type Rs LicenseAssignmentsInsert' = LicenseAssignment
        requestClient LicenseAssignmentsInsert'{..}
          = go _laiProductId _laiSKUId (Just AltJSON)
              _laiPayload
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsInsertResource)
                      mempty
