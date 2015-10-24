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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assign License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.update@.
module Network.Google.Resource.Licensing.LicenseAssignments.Update
    (
    -- * REST Resource
      LicenseAssignmentsUpdateResource

    -- * Creating a Request
    , licenseAssignmentsUpdate
    , LicenseAssignmentsUpdate

    -- * Request Lenses
    , lauSKUId
    , lauPayload
    , lauUserId
    , lauProductId
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LicenseAssignment :>
                           Put '[JSON] LicenseAssignment

-- | Assign License.
--
-- /See:/ 'licenseAssignmentsUpdate' smart constructor.
data LicenseAssignmentsUpdate = LicenseAssignmentsUpdate
    { _lauSKUId     :: !Text
    , _lauPayload   :: !LicenseAssignment
    , _lauUserId    :: !Text
    , _lauProductId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lauSKUId'
--
-- * 'lauPayload'
--
-- * 'lauUserId'
--
-- * 'lauProductId'
licenseAssignmentsUpdate
    :: Text -- ^ 'lauSKUId'
    -> LicenseAssignment -- ^ 'lauPayload'
    -> Text -- ^ 'lauUserId'
    -> Text -- ^ 'lauProductId'
    -> LicenseAssignmentsUpdate
licenseAssignmentsUpdate pLauSKUId_ pLauPayload_ pLauUserId_ pLauProductId_ =
    LicenseAssignmentsUpdate
    { _lauSKUId = pLauSKUId_
    , _lauPayload = pLauPayload_
    , _lauUserId = pLauUserId_
    , _lauProductId = pLauProductId_
    }

-- | Name for sku for which license would be revoked
lauSKUId :: Lens' LicenseAssignmentsUpdate Text
lauSKUId = lens _lauSKUId (\ s a -> s{_lauSKUId = a})

-- | Multipart request metadata.
lauPayload :: Lens' LicenseAssignmentsUpdate LicenseAssignment
lauPayload
  = lens _lauPayload (\ s a -> s{_lauPayload = a})

-- | email id or unique Id of the user
lauUserId :: Lens' LicenseAssignmentsUpdate Text
lauUserId
  = lens _lauUserId (\ s a -> s{_lauUserId = a})

-- | Name for product
lauProductId :: Lens' LicenseAssignmentsUpdate Text
lauProductId
  = lens _lauProductId (\ s a -> s{_lauProductId = a})

instance GoogleRequest LicenseAssignmentsUpdate where
        type Rs LicenseAssignmentsUpdate = LicenseAssignment
        requestClient LicenseAssignmentsUpdate{..}
          = go _lauProductId _lauSKUId _lauUserId
              (Just AltJSON)
              _lauPayload
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsUpdateResource)
                      mempty
