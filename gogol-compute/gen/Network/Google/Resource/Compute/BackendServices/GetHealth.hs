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
-- Module      : Network.Google.Resource.Compute.BackendServices.GetHealth
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the most recent health check results for this BackendService.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.getHealth@.
module Network.Google.Resource.Compute.BackendServices.GetHealth
    (
    -- * REST Resource
      BackendServicesGetHealthResource

    -- * Creating a Request
    , backendServicesGetHealth
    , BackendServicesGetHealth

    -- * Request Lenses
    , bsghProject
    , bsghPayload
    , bsghBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.getHealth@ method which the
-- 'BackendServicesGetHealth' request conforms to.
type BackendServicesGetHealthResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   "getHealth" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ResourceGroupReference :>
                         Post '[JSON] BackendServiceGroupHealth

-- | Gets the most recent health check results for this BackendService.
--
-- /See:/ 'backendServicesGetHealth' smart constructor.
data BackendServicesGetHealth = BackendServicesGetHealth
    { _bsghProject        :: !Text
    , _bsghPayload        :: !ResourceGroupReference
    , _bsghBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesGetHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsghProject'
--
-- * 'bsghPayload'
--
-- * 'bsghBackendService'
backendServicesGetHealth
    :: Text -- ^ 'bsghProject'
    -> ResourceGroupReference -- ^ 'bsghPayload'
    -> Text -- ^ 'bsghBackendService'
    -> BackendServicesGetHealth
backendServicesGetHealth pBsghProject_ pBsghPayload_ pBsghBackendService_ =
    BackendServicesGetHealth
    { _bsghProject = pBsghProject_
    , _bsghPayload = pBsghPayload_
    , _bsghBackendService = pBsghBackendService_
    }

bsghProject :: Lens' BackendServicesGetHealth Text
bsghProject
  = lens _bsghProject (\ s a -> s{_bsghProject = a})

-- | Multipart request metadata.
bsghPayload :: Lens' BackendServicesGetHealth ResourceGroupReference
bsghPayload
  = lens _bsghPayload (\ s a -> s{_bsghPayload = a})

-- | Name of the BackendService resource to which the queried instance
-- belongs.
bsghBackendService :: Lens' BackendServicesGetHealth Text
bsghBackendService
  = lens _bsghBackendService
      (\ s a -> s{_bsghBackendService = a})

instance GoogleRequest BackendServicesGetHealth where
        type Rs BackendServicesGetHealth =
             BackendServiceGroupHealth
        type Scopes BackendServicesGetHealth =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient BackendServicesGetHealth{..}
          = go _bsghProject _bsghBackendService (Just AltJSON)
              _bsghPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesGetHealthResource)
                      mempty
