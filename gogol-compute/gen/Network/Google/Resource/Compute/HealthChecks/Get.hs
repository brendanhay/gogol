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
-- Module      : Network.Google.Resource.Compute.HealthChecks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified HealthCheck resource. Gets a list of available
-- health checks by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.healthChecks.get@.
module Network.Google.Resource.Compute.HealthChecks.Get
    (
    -- * REST Resource
      HealthChecksGetResource

    -- * Creating a Request
    , healthChecksGet
    , HealthChecksGet

    -- * Request Lenses
    , hcgHealthCheck
    , hcgProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.healthChecks.get@ method which the
-- 'HealthChecksGet' request conforms to.
type HealthChecksGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "healthChecks" :>
                 Capture "healthCheck" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] HealthCheck

-- | Returns the specified HealthCheck resource. Gets a list of available
-- health checks by making a list() request.
--
-- /See:/ 'healthChecksGet' smart constructor.
data HealthChecksGet = HealthChecksGet'
    { _hcgHealthCheck :: !Text
    , _hcgProject     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthChecksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcgHealthCheck'
--
-- * 'hcgProject'
healthChecksGet
    :: Text -- ^ 'hcgHealthCheck'
    -> Text -- ^ 'hcgProject'
    -> HealthChecksGet
healthChecksGet pHcgHealthCheck_ pHcgProject_ =
    HealthChecksGet'
    { _hcgHealthCheck = pHcgHealthCheck_
    , _hcgProject = pHcgProject_
    }

-- | Name of the HealthCheck resource to return.
hcgHealthCheck :: Lens' HealthChecksGet Text
hcgHealthCheck
  = lens _hcgHealthCheck
      (\ s a -> s{_hcgHealthCheck = a})

-- | Project ID for this request.
hcgProject :: Lens' HealthChecksGet Text
hcgProject
  = lens _hcgProject (\ s a -> s{_hcgProject = a})

instance GoogleRequest HealthChecksGet where
        type Rs HealthChecksGet = HealthCheck
        type Scopes HealthChecksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient HealthChecksGet'{..}
          = go _hcgProject _hcgHealthCheck (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HealthChecksGetResource)
                      mempty
