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
-- Get license assignment of a particular product and sku for a user
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.get@.
module Network.Google.Resource.Licensing.LicenseAssignments.Get
    (
    -- * REST Resource
      LicenseAssignmentsGetResource

    -- * Creating a Request
    , licenseAssignmentsGet
    , LicenseAssignmentsGet

    -- * Request Lenses
    , lagSKUId
    , lagUserId
    , lagProductId
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] LicenseAssignment

-- | Get license assignment of a particular product and sku for a user
--
-- /See:/ 'licenseAssignmentsGet' smart constructor.
data LicenseAssignmentsGet = LicenseAssignmentsGet'
    { _lagSKUId     :: !Text
    , _lagUserId    :: !Text
    , _lagProductId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lagSKUId'
--
-- * 'lagUserId'
--
-- * 'lagProductId'
licenseAssignmentsGet
    :: Text -- ^ 'lagSKUId'
    -> Text -- ^ 'lagUserId'
    -> Text -- ^ 'lagProductId'
    -> LicenseAssignmentsGet
licenseAssignmentsGet pLagSKUId_ pLagUserId_ pLagProductId_ =
    LicenseAssignmentsGet'
    { _lagSKUId = pLagSKUId_
    , _lagUserId = pLagUserId_
    , _lagProductId = pLagProductId_
    }

-- | Name for sku
lagSKUId :: Lens' LicenseAssignmentsGet Text
lagSKUId = lens _lagSKUId (\ s a -> s{_lagSKUId = a})

-- | email id or unique Id of the user
lagUserId :: Lens' LicenseAssignmentsGet Text
lagUserId
  = lens _lagUserId (\ s a -> s{_lagUserId = a})

-- | Name for product
lagProductId :: Lens' LicenseAssignmentsGet Text
lagProductId
  = lens _lagProductId (\ s a -> s{_lagProductId = a})

instance GoogleRequest LicenseAssignmentsGet where
        type Rs LicenseAssignmentsGet = LicenseAssignment
        type Scopes LicenseAssignmentsGet =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsGet'{..}
          = go _lagProductId _lagSKUId _lagUserId
              (Just AltJSON)
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsGetResource)
                      mempty
