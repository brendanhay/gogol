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
-- Module      : Network.Google.Resource.Compute.RegionBackendServices.GetHealth
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the most recent health check results for this regional
-- BackendService.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionBackendServices.getHealth@.
module Network.Google.Resource.Compute.RegionBackendServices.GetHealth
    (
    -- * REST Resource
      RegionBackendServicesGetHealthResource

    -- * Creating a Request
    , regionBackendServicesGetHealth
    , RegionBackendServicesGetHealth

    -- * Request Lenses
    , rbsghProject
    , rbsghPayload
    , rbsghRegion
    , rbsghBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionBackendServices.getHealth@ method which the
-- 'RegionBackendServicesGetHealth' request conforms to.
type RegionBackendServicesGetHealthResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "backendServices" :>
                   Capture "backendService" Text :>
                     "getHealth" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ResourceGroupReference :>
                           Post '[JSON] BackendServiceGroupHealth

-- | Gets the most recent health check results for this regional
-- BackendService.
--
-- /See:/ 'regionBackendServicesGetHealth' smart constructor.
data RegionBackendServicesGetHealth = RegionBackendServicesGetHealth'
    { _rbsghProject        :: !Text
    , _rbsghPayload        :: !ResourceGroupReference
    , _rbsghRegion         :: !Text
    , _rbsghBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionBackendServicesGetHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbsghProject'
--
-- * 'rbsghPayload'
--
-- * 'rbsghRegion'
--
-- * 'rbsghBackendService'
regionBackendServicesGetHealth
    :: Text -- ^ 'rbsghProject'
    -> ResourceGroupReference -- ^ 'rbsghPayload'
    -> Text -- ^ 'rbsghRegion'
    -> Text -- ^ 'rbsghBackendService'
    -> RegionBackendServicesGetHealth
regionBackendServicesGetHealth pRbsghProject_ pRbsghPayload_ pRbsghRegion_ pRbsghBackendService_ =
    RegionBackendServicesGetHealth'
    { _rbsghProject = pRbsghProject_
    , _rbsghPayload = pRbsghPayload_
    , _rbsghRegion = pRbsghRegion_
    , _rbsghBackendService = pRbsghBackendService_
    }

rbsghProject :: Lens' RegionBackendServicesGetHealth Text
rbsghProject
  = lens _rbsghProject (\ s a -> s{_rbsghProject = a})

-- | Multipart request metadata.
rbsghPayload :: Lens' RegionBackendServicesGetHealth ResourceGroupReference
rbsghPayload
  = lens _rbsghPayload (\ s a -> s{_rbsghPayload = a})

-- | Name of the region scoping this request.
rbsghRegion :: Lens' RegionBackendServicesGetHealth Text
rbsghRegion
  = lens _rbsghRegion (\ s a -> s{_rbsghRegion = a})

-- | Name of the BackendService resource to which the queried instance
-- belongs.
rbsghBackendService :: Lens' RegionBackendServicesGetHealth Text
rbsghBackendService
  = lens _rbsghBackendService
      (\ s a -> s{_rbsghBackendService = a})

instance GoogleRequest RegionBackendServicesGetHealth
         where
        type Rs RegionBackendServicesGetHealth =
             BackendServiceGroupHealth
        type Scopes RegionBackendServicesGetHealth =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionBackendServicesGetHealth'{..}
          = go _rbsghProject _rbsghRegion _rbsghBackendService
              (Just AltJSON)
              _rbsghPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionBackendServicesGetHealthResource)
                      mempty
