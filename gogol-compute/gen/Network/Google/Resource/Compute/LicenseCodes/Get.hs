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
-- Module      : Network.Google.Resource.Compute.LicenseCodes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a specified license code. License codes are mirrored across all
-- projects that have permissions to read the License Code.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenseCodes.get@.
module Network.Google.Resource.Compute.LicenseCodes.Get
    (
    -- * REST Resource
      LicenseCodesGetResource

    -- * Creating a Request
    , licenseCodesGet
    , LicenseCodesGet

    -- * Request Lenses
    , lcgProject
    , lcgLicenseCode
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.licenseCodes.get@ method which the
-- 'LicenseCodesGet' request conforms to.
type LicenseCodesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenseCodes" :>
                 Capture "licenseCode" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LicenseCode

-- | Return a specified license code. License codes are mirrored across all
-- projects that have permissions to read the License Code.
--
-- /See:/ 'licenseCodesGet' smart constructor.
data LicenseCodesGet =
  LicenseCodesGet'
    { _lcgProject     :: !Text
    , _lcgLicenseCode :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LicenseCodesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcgProject'
--
-- * 'lcgLicenseCode'
licenseCodesGet
    :: Text -- ^ 'lcgProject'
    -> Text -- ^ 'lcgLicenseCode'
    -> LicenseCodesGet
licenseCodesGet pLcgProject_ pLcgLicenseCode_ =
  LicenseCodesGet'
    {_lcgProject = pLcgProject_, _lcgLicenseCode = pLcgLicenseCode_}

-- | Project ID for this request.
lcgProject :: Lens' LicenseCodesGet Text
lcgProject
  = lens _lcgProject (\ s a -> s{_lcgProject = a})

-- | Number corresponding to the License code resource to return.
lcgLicenseCode :: Lens' LicenseCodesGet Text
lcgLicenseCode
  = lens _lcgLicenseCode
      (\ s a -> s{_lcgLicenseCode = a})

instance GoogleRequest LicenseCodesGet where
        type Rs LicenseCodesGet = LicenseCode
        type Scopes LicenseCodesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient LicenseCodesGet'{..}
          = go _lcgProject _lcgLicenseCode (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy LicenseCodesGetResource)
                      mempty
