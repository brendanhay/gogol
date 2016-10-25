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
-- Module      : Network.Google.Resource.Compute.HealthChecks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a HealthCheck resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.healthChecks.insert@.
module Network.Google.Resource.Compute.HealthChecks.Insert
    (
    -- * REST Resource
      HealthChecksInsertResource

    -- * Creating a Request
    , healthChecksInsert
    , HealthChecksInsert

    -- * Request Lenses
    , hciProject
    , hciPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.healthChecks.insert@ method which the
-- 'HealthChecksInsert' request conforms to.
type HealthChecksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "healthChecks" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] HealthCheck :> Post '[JSON] Operation

-- | Creates a HealthCheck resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'healthChecksInsert' smart constructor.
data HealthChecksInsert = HealthChecksInsert'
    { _hciProject :: !Text
    , _hciPayload :: !HealthCheck
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthChecksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hciProject'
--
-- * 'hciPayload'
healthChecksInsert
    :: Text -- ^ 'hciProject'
    -> HealthCheck -- ^ 'hciPayload'
    -> HealthChecksInsert
healthChecksInsert pHciProject_ pHciPayload_ =
    HealthChecksInsert'
    { _hciProject = pHciProject_
    , _hciPayload = pHciPayload_
    }

-- | Project ID for this request.
hciProject :: Lens' HealthChecksInsert Text
hciProject
  = lens _hciProject (\ s a -> s{_hciProject = a})

-- | Multipart request metadata.
hciPayload :: Lens' HealthChecksInsert HealthCheck
hciPayload
  = lens _hciPayload (\ s a -> s{_hciPayload = a})

instance GoogleRequest HealthChecksInsert where
        type Rs HealthChecksInsert = Operation
        type Scopes HealthChecksInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HealthChecksInsert'{..}
          = go _hciProject (Just AltJSON) _hciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HealthChecksInsertResource)
                      mempty
