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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revoke License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.delete@.
module Network.Google.Resource.Licensing.LicenseAssignments.Delete
    (
    -- * REST Resource
      LicenseAssignmentsDeleteResource

    -- * Creating a Request
    , licenseAssignmentsDelete
    , LicenseAssignmentsDelete

    -- * Request Lenses
    , ladSKUId
    , ladUserId
    , ladProductId
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Revoke License.
--
-- /See:/ 'licenseAssignmentsDelete' smart constructor.
data LicenseAssignmentsDelete = LicenseAssignmentsDelete'
    { _ladSKUId     :: !Text
    , _ladUserId    :: !Text
    , _ladProductId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladSKUId'
--
-- * 'ladUserId'
--
-- * 'ladProductId'
licenseAssignmentsDelete
    :: Text -- ^ 'ladSKUId'
    -> Text -- ^ 'ladUserId'
    -> Text -- ^ 'ladProductId'
    -> LicenseAssignmentsDelete
licenseAssignmentsDelete pLadSKUId_ pLadUserId_ pLadProductId_ =
    LicenseAssignmentsDelete'
    { _ladSKUId = pLadSKUId_
    , _ladUserId = pLadUserId_
    , _ladProductId = pLadProductId_
    }

-- | Name for sku
ladSKUId :: Lens' LicenseAssignmentsDelete Text
ladSKUId = lens _ladSKUId (\ s a -> s{_ladSKUId = a})

-- | email id or unique Id of the user
ladUserId :: Lens' LicenseAssignmentsDelete Text
ladUserId
  = lens _ladUserId (\ s a -> s{_ladUserId = a})

-- | Name for product
ladProductId :: Lens' LicenseAssignmentsDelete Text
ladProductId
  = lens _ladProductId (\ s a -> s{_ladProductId = a})

instance GoogleRequest LicenseAssignmentsDelete where
        type Rs LicenseAssignmentsDelete = ()
        type Scopes LicenseAssignmentsDelete =
             '["https://www.googleapis.com/auth/apps.licensing"]
        requestClient LicenseAssignmentsDelete'{..}
          = go _ladProductId _ladSKUId _ladUserId
              (Just AltJSON)
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsDeleteResource)
                      mempty
