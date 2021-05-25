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
-- Module      : Network.Google.Resource.Compute.RegionHealthCheckServices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified regional HealthCheckService resource with the data
-- included in the request. This method supports PATCH semantics and uses
-- the JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthCheckServices.patch@.
module Network.Google.Resource.Compute.RegionHealthCheckServices.Patch
    (
    -- * REST Resource
      RegionHealthCheckServicesPatchResource

    -- * Creating a Request
    , regionHealthCheckServicesPatch
    , RegionHealthCheckServicesPatch

    -- * Request Lenses
    , rhcspRequestId
    , rhcspHealthCheckService
    , rhcspProject
    , rhcspPayload
    , rhcspRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthCheckServices.patch@ method which the
-- 'RegionHealthCheckServicesPatch' request conforms to.
type RegionHealthCheckServicesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthCheckServices" :>
                   Capture "healthCheckService" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] HealthCheckService :>
                           Patch '[JSON] Operation

-- | Updates the specified regional HealthCheckService resource with the data
-- included in the request. This method supports PATCH semantics and uses
-- the JSON merge patch format and processing rules.
--
-- /See:/ 'regionHealthCheckServicesPatch' smart constructor.
data RegionHealthCheckServicesPatch =
  RegionHealthCheckServicesPatch'
    { _rhcspRequestId :: !(Maybe Text)
    , _rhcspHealthCheckService :: !Text
    , _rhcspProject :: !Text
    , _rhcspPayload :: !HealthCheckService
    , _rhcspRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthCheckServicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcspRequestId'
--
-- * 'rhcspHealthCheckService'
--
-- * 'rhcspProject'
--
-- * 'rhcspPayload'
--
-- * 'rhcspRegion'
regionHealthCheckServicesPatch
    :: Text -- ^ 'rhcspHealthCheckService'
    -> Text -- ^ 'rhcspProject'
    -> HealthCheckService -- ^ 'rhcspPayload'
    -> Text -- ^ 'rhcspRegion'
    -> RegionHealthCheckServicesPatch
regionHealthCheckServicesPatch pRhcspHealthCheckService_ pRhcspProject_ pRhcspPayload_ pRhcspRegion_ =
  RegionHealthCheckServicesPatch'
    { _rhcspRequestId = Nothing
    , _rhcspHealthCheckService = pRhcspHealthCheckService_
    , _rhcspProject = pRhcspProject_
    , _rhcspPayload = pRhcspPayload_
    , _rhcspRegion = pRhcspRegion_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
rhcspRequestId :: Lens' RegionHealthCheckServicesPatch (Maybe Text)
rhcspRequestId
  = lens _rhcspRequestId
      (\ s a -> s{_rhcspRequestId = a})

-- | Name of the HealthCheckService to update. The name must be 1-63
-- characters long, and comply with RFC1035.
rhcspHealthCheckService :: Lens' RegionHealthCheckServicesPatch Text
rhcspHealthCheckService
  = lens _rhcspHealthCheckService
      (\ s a -> s{_rhcspHealthCheckService = a})

-- | Project ID for this request.
rhcspProject :: Lens' RegionHealthCheckServicesPatch Text
rhcspProject
  = lens _rhcspProject (\ s a -> s{_rhcspProject = a})

-- | Multipart request metadata.
rhcspPayload :: Lens' RegionHealthCheckServicesPatch HealthCheckService
rhcspPayload
  = lens _rhcspPayload (\ s a -> s{_rhcspPayload = a})

-- | Name of the region scoping this request.
rhcspRegion :: Lens' RegionHealthCheckServicesPatch Text
rhcspRegion
  = lens _rhcspRegion (\ s a -> s{_rhcspRegion = a})

instance GoogleRequest RegionHealthCheckServicesPatch
         where
        type Rs RegionHealthCheckServicesPatch = Operation
        type Scopes RegionHealthCheckServicesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionHealthCheckServicesPatch'{..}
          = go _rhcspProject _rhcspRegion
              _rhcspHealthCheckService
              _rhcspRequestId
              (Just AltJSON)
              _rhcspPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionHealthCheckServicesPatchResource)
                      mempty
