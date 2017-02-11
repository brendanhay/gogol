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
-- Module      : Network.Google.Resource.Compute.RegionBackendServices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified regional BackendService resource with the data
-- included in the request. There are several restrictions and guidelines
-- to keep in mind when updating a backend service. Read Restrictions and
-- Guidelines for more information. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionBackendServices.patch@.
module Network.Google.Resource.Compute.RegionBackendServices.Patch
    (
    -- * REST Resource
      RegionBackendServicesPatchResource

    -- * Creating a Request
    , regionBackendServicesPatch
    , RegionBackendServicesPatch

    -- * Request Lenses
    , rbspProject
    , rbspPayload
    , rbspRegion
    , rbspBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionBackendServices.patch@ method which the
-- 'RegionBackendServicesPatch' request conforms to.
type RegionBackendServicesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "backendServices" :>
                   Capture "backendService" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BackendService :>
                         Patch '[JSON] Operation

-- | Updates the specified regional BackendService resource with the data
-- included in the request. There are several restrictions and guidelines
-- to keep in mind when updating a backend service. Read Restrictions and
-- Guidelines for more information. This method supports patch semantics.
--
-- /See:/ 'regionBackendServicesPatch' smart constructor.
data RegionBackendServicesPatch = RegionBackendServicesPatch'
    { _rbspProject        :: !Text
    , _rbspPayload        :: !BackendService
    , _rbspRegion         :: !Text
    , _rbspBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionBackendServicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbspProject'
--
-- * 'rbspPayload'
--
-- * 'rbspRegion'
--
-- * 'rbspBackendService'
regionBackendServicesPatch
    :: Text -- ^ 'rbspProject'
    -> BackendService -- ^ 'rbspPayload'
    -> Text -- ^ 'rbspRegion'
    -> Text -- ^ 'rbspBackendService'
    -> RegionBackendServicesPatch
regionBackendServicesPatch pRbspProject_ pRbspPayload_ pRbspRegion_ pRbspBackendService_ =
    RegionBackendServicesPatch'
    { _rbspProject = pRbspProject_
    , _rbspPayload = pRbspPayload_
    , _rbspRegion = pRbspRegion_
    , _rbspBackendService = pRbspBackendService_
    }

-- | Project ID for this request.
rbspProject :: Lens' RegionBackendServicesPatch Text
rbspProject
  = lens _rbspProject (\ s a -> s{_rbspProject = a})

-- | Multipart request metadata.
rbspPayload :: Lens' RegionBackendServicesPatch BackendService
rbspPayload
  = lens _rbspPayload (\ s a -> s{_rbspPayload = a})

-- | Name of the region scoping this request.
rbspRegion :: Lens' RegionBackendServicesPatch Text
rbspRegion
  = lens _rbspRegion (\ s a -> s{_rbspRegion = a})

-- | Name of the BackendService resource to update.
rbspBackendService :: Lens' RegionBackendServicesPatch Text
rbspBackendService
  = lens _rbspBackendService
      (\ s a -> s{_rbspBackendService = a})

instance GoogleRequest RegionBackendServicesPatch
         where
        type Rs RegionBackendServicesPatch = Operation
        type Scopes RegionBackendServicesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionBackendServicesPatch'{..}
          = go _rbspProject _rbspRegion _rbspBackendService
              (Just AltJSON)
              _rbspPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesPatchResource)
                      mempty
