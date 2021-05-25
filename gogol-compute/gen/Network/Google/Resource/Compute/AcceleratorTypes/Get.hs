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
-- Module      : Network.Google.Resource.Compute.AcceleratorTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified accelerator type.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.acceleratorTypes.get@.
module Network.Google.Resource.Compute.AcceleratorTypes.Get
    (
    -- * REST Resource
      AcceleratorTypesGetResource

    -- * Creating a Request
    , acceleratorTypesGet
    , AcceleratorTypesGet

    -- * Request Lenses
    , atgAcceleratorType
    , atgProject
    , atgZone
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.acceleratorTypes.get@ method which the
-- 'AcceleratorTypesGet' request conforms to.
type AcceleratorTypesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "acceleratorTypes" :>
                   Capture "acceleratorType" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] AcceleratorType

-- | Returns the specified accelerator type.
--
-- /See:/ 'acceleratorTypesGet' smart constructor.
data AcceleratorTypesGet =
  AcceleratorTypesGet'
    { _atgAcceleratorType :: !Text
    , _atgProject :: !Text
    , _atgZone :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AcceleratorTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atgAcceleratorType'
--
-- * 'atgProject'
--
-- * 'atgZone'
acceleratorTypesGet
    :: Text -- ^ 'atgAcceleratorType'
    -> Text -- ^ 'atgProject'
    -> Text -- ^ 'atgZone'
    -> AcceleratorTypesGet
acceleratorTypesGet pAtgAcceleratorType_ pAtgProject_ pAtgZone_ =
  AcceleratorTypesGet'
    { _atgAcceleratorType = pAtgAcceleratorType_
    , _atgProject = pAtgProject_
    , _atgZone = pAtgZone_
    }


-- | Name of the accelerator type to return.
atgAcceleratorType :: Lens' AcceleratorTypesGet Text
atgAcceleratorType
  = lens _atgAcceleratorType
      (\ s a -> s{_atgAcceleratorType = a})

-- | Project ID for this request.
atgProject :: Lens' AcceleratorTypesGet Text
atgProject
  = lens _atgProject (\ s a -> s{_atgProject = a})

-- | The name of the zone for this request.
atgZone :: Lens' AcceleratorTypesGet Text
atgZone = lens _atgZone (\ s a -> s{_atgZone = a})

instance GoogleRequest AcceleratorTypesGet where
        type Rs AcceleratorTypesGet = AcceleratorType
        type Scopes AcceleratorTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient AcceleratorTypesGet'{..}
          = go _atgProject _atgZone _atgAcceleratorType
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AcceleratorTypesGetResource)
                      mempty
