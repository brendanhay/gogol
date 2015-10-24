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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalAddresses.get@.
module Network.Google.Resource.Compute.GlobalAddresses.Get
    (
    -- * REST Resource
      GlobalAddressesGetResource

    -- * Creating a Request
    , globalAddressesGet
    , GlobalAddressesGet

    -- * Request Lenses
    , gagProject
    , gagAddress
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalAddresses.get@ method which the
-- 'GlobalAddressesGet' request conforms to.
type GlobalAddressesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 Capture "address" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Address

-- | Returns the specified address resource.
--
-- /See:/ 'globalAddressesGet' smart constructor.
data GlobalAddressesGet = GlobalAddressesGet
    { _gagProject :: !Text
    , _gagAddress :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gagProject'
--
-- * 'gagAddress'
globalAddressesGet
    :: Text -- ^ 'gagProject'
    -> Text -- ^ 'gagAddress'
    -> GlobalAddressesGet
globalAddressesGet pGagProject_ pGagAddress_ =
    GlobalAddressesGet
    { _gagProject = pGagProject_
    , _gagAddress = pGagAddress_
    }

-- | Project ID for this request.
gagProject :: Lens' GlobalAddressesGet Text
gagProject
  = lens _gagProject (\ s a -> s{_gagProject = a})

-- | Name of the address resource to return.
gagAddress :: Lens' GlobalAddressesGet Text
gagAddress
  = lens _gagAddress (\ s a -> s{_gagAddress = a})

instance GoogleRequest GlobalAddressesGet where
        type Rs GlobalAddressesGet = Address
        requestClient GlobalAddressesGet{..}
          = go _gagProject _gagAddress (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalAddressesGetResource)
                      mempty
