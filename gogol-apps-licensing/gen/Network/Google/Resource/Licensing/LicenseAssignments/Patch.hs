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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assign License. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.patch@.
module Network.Google.Resource.Licensing.LicenseAssignments.Patch
    (
    -- * REST Resource
      LicenseAssignmentsPatchResource

    -- * Creating a Request
    , licenseAssignmentsPatch'
    , LicenseAssignmentsPatch'

    -- * Request Lenses
    , lapSKUId
    , lapPayload
    , lapUserId
    , lapProductId
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @licensing.licenseAssignments.patch@ method which the
-- 'LicenseAssignmentsPatch'' request conforms to.
type LicenseAssignmentsPatchResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             Capture "userId" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LicenseAssignment :>
                   Patch '[JSON] LicenseAssignment

-- | Assign License. This method supports patch semantics.
--
-- /See:/ 'licenseAssignmentsPatch'' smart constructor.
data LicenseAssignmentsPatch' = LicenseAssignmentsPatch'
    { _lapSKUId     :: !Text
    , _lapPayload   :: !LicenseAssignment
    , _lapUserId    :: !Text
    , _lapProductId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapSKUId'
--
-- * 'lapPayload'
--
-- * 'lapUserId'
--
-- * 'lapProductId'
licenseAssignmentsPatch'
    :: Text -- ^ 'lapSKUId'
    -> LicenseAssignment -- ^ 'lapPayload'
    -> Text -- ^ 'lapUserId'
    -> Text -- ^ 'lapProductId'
    -> LicenseAssignmentsPatch'
licenseAssignmentsPatch' pLapSKUId_ pLapPayload_ pLapUserId_ pLapProductId_ =
    LicenseAssignmentsPatch'
    { _lapSKUId = pLapSKUId_
    , _lapPayload = pLapPayload_
    , _lapUserId = pLapUserId_
    , _lapProductId = pLapProductId_
    }

-- | Name for sku for which license would be revoked
lapSKUId :: Lens' LicenseAssignmentsPatch' Text
lapSKUId = lens _lapSKUId (\ s a -> s{_lapSKUId = a})

-- | Multipart request metadata.
lapPayload :: Lens' LicenseAssignmentsPatch' LicenseAssignment
lapPayload
  = lens _lapPayload (\ s a -> s{_lapPayload = a})

-- | email id or unique Id of the user
lapUserId :: Lens' LicenseAssignmentsPatch' Text
lapUserId
  = lens _lapUserId (\ s a -> s{_lapUserId = a})

-- | Name for product
lapProductId :: Lens' LicenseAssignmentsPatch' Text
lapProductId
  = lens _lapProductId (\ s a -> s{_lapProductId = a})

instance GoogleRequest LicenseAssignmentsPatch' where
        type Rs LicenseAssignmentsPatch' = LicenseAssignment
        requestClient LicenseAssignmentsPatch'{..}
          = go _lapProductId _lapSKUId _lapUserId
              (Just AltJSON)
              _lapPayload
              appsLicensingService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseAssignmentsPatchResource)
                      mempty
