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
-- Module      : Network.Google.Resource.Compute.TargetPools.AddHealthCheck
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds health check URL to targetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsAddHealthCheck@.
module Network.Google.Resource.Compute.TargetPools.AddHealthCheck
    (
    -- * REST Resource
      TargetPoolsAddHealthCheckResource

    -- * Creating a Request
    , targetPoolsAddHealthCheck'
    , TargetPoolsAddHealthCheck'

    -- * Request Lenses
    , tpahcProject
    , tpahcTargetPool
    , tpahcPayload
    , tpahcRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsAddHealthCheck@ method which the
-- 'TargetPoolsAddHealthCheck'' request conforms to.
type TargetPoolsAddHealthCheckResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "addHealthCheck" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] TargetPoolsAddHealthCheckRequest :>
                     Post '[JSON] Operation

-- | Adds health check URL to targetPool.
--
-- /See:/ 'targetPoolsAddHealthCheck'' smart constructor.
data TargetPoolsAddHealthCheck' = TargetPoolsAddHealthCheck'
    { _tpahcProject    :: !Text
    , _tpahcTargetPool :: !Text
    , _tpahcPayload    :: !TargetPoolsAddHealthCheckRequest
    , _tpahcRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAddHealthCheck'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpahcProject'
--
-- * 'tpahcTargetPool'
--
-- * 'tpahcPayload'
--
-- * 'tpahcRegion'
targetPoolsAddHealthCheck'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> TargetPoolsAddHealthCheckRequest -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetPoolsAddHealthCheck'
targetPoolsAddHealthCheck' pTpahcProject_ pTpahcTargetPool_ pTpahcPayload_ pTpahcRegion_ =
    TargetPoolsAddHealthCheck'
    { _tpahcProject = pTpahcProject_
    , _tpahcTargetPool = pTpahcTargetPool_
    , _tpahcPayload = pTpahcPayload_
    , _tpahcRegion = pTpahcRegion_
    }

tpahcProject :: Lens' TargetPoolsAddHealthCheck' Text
tpahcProject
  = lens _tpahcProject (\ s a -> s{_tpahcProject = a})

-- | Name of the TargetPool resource to which health_check_url is to be
-- added.
tpahcTargetPool :: Lens' TargetPoolsAddHealthCheck' Text
tpahcTargetPool
  = lens _tpahcTargetPool
      (\ s a -> s{_tpahcTargetPool = a})

-- | Multipart request metadata.
tpahcPayload :: Lens' TargetPoolsAddHealthCheck' TargetPoolsAddHealthCheckRequest
tpahcPayload
  = lens _tpahcPayload (\ s a -> s{_tpahcPayload = a})

-- | Name of the region scoping this request.
tpahcRegion :: Lens' TargetPoolsAddHealthCheck' Text
tpahcRegion
  = lens _tpahcRegion (\ s a -> s{_tpahcRegion = a})

instance GoogleRequest TargetPoolsAddHealthCheck'
         where
        type Rs TargetPoolsAddHealthCheck' = Operation
        requestClient TargetPoolsAddHealthCheck'{..}
          = go _tpahcProject _tpahcRegion _tpahcTargetPool
              (Just AltJSON)
              _tpahcPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsAddHealthCheckResource)
                      mempty
