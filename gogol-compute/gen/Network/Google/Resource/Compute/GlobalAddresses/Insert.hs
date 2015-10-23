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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalAddresses.insert@.
module Network.Google.Resource.Compute.GlobalAddresses.Insert
    (
    -- * REST Resource
      GlobalAddressesInsertResource

    -- * Creating a Request
    , globalAddressesInsert
    , GlobalAddressesInsert

    -- * Request Lenses
    , gaiProject
    , gaiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalAddresses.insert@ method which the
-- 'GlobalAddressesInsert' request conforms to.
type GlobalAddressesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Address :> Post '[JSON] Operation

-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'globalAddressesInsert' smart constructor.
data GlobalAddressesInsert = GlobalAddressesInsert
    { _gaiProject :: !Text
    , _gaiPayload :: !Address
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaiProject'
--
-- * 'gaiPayload'
globalAddressesInsert
    :: Text -- ^ 'gaiProject'
    -> Address -- ^ 'gaiPayload'
    -> GlobalAddressesInsert
globalAddressesInsert pGaiProject_ pGaiPayload_ =
    GlobalAddressesInsert
    { _gaiProject = pGaiProject_
    , _gaiPayload = pGaiPayload_
    }

-- | Project ID for this request.
gaiProject :: Lens' GlobalAddressesInsert Text
gaiProject
  = lens _gaiProject (\ s a -> s{_gaiProject = a})

-- | Multipart request metadata.
gaiPayload :: Lens' GlobalAddressesInsert Address
gaiPayload
  = lens _gaiPayload (\ s a -> s{_gaiPayload = a})

instance GoogleRequest GlobalAddressesInsert where
        type Rs GlobalAddressesInsert = Operation
        requestClient GlobalAddressesInsert{..}
          = go _gaiProject (Just AltJSON) _gaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalAddressesInsertResource)
                      mempty
