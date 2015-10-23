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
-- Module      : Network.Google.Resource.Compute.Licenses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified license resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenses.get@.
module Network.Google.Resource.Compute.Licenses.Get
    (
    -- * REST Resource
      LicensesGetResource

    -- * Creating a Request
    , licensesGet
    , LicensesGet

    -- * Request Lenses
    , lgProject
    , lgLicense
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.licenses.get@ method which the
-- 'LicensesGet' request conforms to.
type LicensesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenses" :>
                 Capture "license" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] License

-- | Returns the specified license resource.
--
-- /See:/ 'licensesGet' smart constructor.
data LicensesGet = LicensesGet
    { _lgProject :: !Text
    , _lgLicense :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicensesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgProject'
--
-- * 'lgLicense'
licensesGet
    :: Text -- ^ 'lgProject'
    -> Text -- ^ 'lgLicense'
    -> LicensesGet
licensesGet pLgProject_ pLgLicense_ =
    LicensesGet
    { _lgProject = pLgProject_
    , _lgLicense = pLgLicense_
    }

-- | Project ID for this request.
lgProject :: Lens' LicensesGet Text
lgProject
  = lens _lgProject (\ s a -> s{_lgProject = a})

-- | Name of the license resource to return.
lgLicense :: Lens' LicensesGet Text
lgLicense
  = lens _lgLicense (\ s a -> s{_lgLicense = a})

instance GoogleRequest LicensesGet where
        type Rs LicensesGet = License
        requestClient LicensesGet{..}
          = go _lgProject _lgLicense (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy LicensesGetResource)
                      mempty
