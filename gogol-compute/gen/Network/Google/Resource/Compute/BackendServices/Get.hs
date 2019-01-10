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
-- Module      : Network.Google.Resource.Compute.BackendServices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified BackendService resource. Gets a list of available
-- backend services.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.get@.
module Network.Google.Resource.Compute.BackendServices.Get
    (
    -- * REST Resource
      BackendServicesGetResource

    -- * Creating a Request
    , backendServicesGet
    , BackendServicesGet

    -- * Request Lenses
    , bsgProject
    , bsgBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.get@ method which the
-- 'BackendServicesGet' request conforms to.
type BackendServicesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] BackendService

-- | Returns the specified BackendService resource. Gets a list of available
-- backend services.
--
-- /See:/ 'backendServicesGet' smart constructor.
data BackendServicesGet = BackendServicesGet'
    { _bsgProject        :: !Text
    , _bsgBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsgProject'
--
-- * 'bsgBackendService'
backendServicesGet
    :: Text -- ^ 'bsgProject'
    -> Text -- ^ 'bsgBackendService'
    -> BackendServicesGet
backendServicesGet pBsgProject_ pBsgBackendService_ =
    BackendServicesGet'
    { _bsgProject = pBsgProject_
    , _bsgBackendService = pBsgBackendService_
    }

-- | Project ID for this request.
bsgProject :: Lens' BackendServicesGet Text
bsgProject
  = lens _bsgProject (\ s a -> s{_bsgProject = a})

-- | Name of the BackendService resource to return.
bsgBackendService :: Lens' BackendServicesGet Text
bsgBackendService
  = lens _bsgBackendService
      (\ s a -> s{_bsgBackendService = a})

instance GoogleRequest BackendServicesGet where
        type Rs BackendServicesGet = BackendService
        type Scopes BackendServicesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient BackendServicesGet'{..}
          = go _bsgProject _bsgBackendService (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesGetResource)
                      mempty
