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
-- Module      : Network.Google.Resource.Compute.TargetPools.RemoveHealthCheck
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes health check URL from targetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsRemoveHealthCheck@.
module Network.Google.Resource.Compute.TargetPools.RemoveHealthCheck
    (
    -- * REST Resource
      TargetPoolsRemoveHealthCheckResource

    -- * Creating a Request
    , targetPoolsRemoveHealthCheck'
    , TargetPoolsRemoveHealthCheck'

    -- * Request Lenses
    , tprhcProject
    , tprhcTargetPool
    , tprhcPayload
    , tprhcRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsRemoveHealthCheck@ method which the
-- 'TargetPoolsRemoveHealthCheck'' request conforms to.
type TargetPoolsRemoveHealthCheckResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "removeHealthCheck" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] TargetPoolsRemoveHealthCheckRequest
                     :> Post '[JSON] Operation

-- | Removes health check URL from targetPool.
--
-- /See:/ 'targetPoolsRemoveHealthCheck'' smart constructor.
data TargetPoolsRemoveHealthCheck' = TargetPoolsRemoveHealthCheck'
    { _tprhcProject    :: !Text
    , _tprhcTargetPool :: !Text
    , _tprhcPayload    :: !TargetPoolsRemoveHealthCheckRequest
    , _tprhcRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsRemoveHealthCheck'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tprhcProject'
--
-- * 'tprhcTargetPool'
--
-- * 'tprhcPayload'
--
-- * 'tprhcRegion'
targetPoolsRemoveHealthCheck'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> TargetPoolsRemoveHealthCheckRequest -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetPoolsRemoveHealthCheck'
targetPoolsRemoveHealthCheck' pTprhcProject_ pTprhcTargetPool_ pTprhcPayload_ pTprhcRegion_ =
    TargetPoolsRemoveHealthCheck'
    { _tprhcProject = pTprhcProject_
    , _tprhcTargetPool = pTprhcTargetPool_
    , _tprhcPayload = pTprhcPayload_
    , _tprhcRegion = pTprhcRegion_
    }

tprhcProject :: Lens' TargetPoolsRemoveHealthCheck' Text
tprhcProject
  = lens _tprhcProject (\ s a -> s{_tprhcProject = a})

-- | Name of the TargetPool resource to which health_check_url is to be
-- removed.
tprhcTargetPool :: Lens' TargetPoolsRemoveHealthCheck' Text
tprhcTargetPool
  = lens _tprhcTargetPool
      (\ s a -> s{_tprhcTargetPool = a})

-- | Multipart request metadata.
tprhcPayload :: Lens' TargetPoolsRemoveHealthCheck' TargetPoolsRemoveHealthCheckRequest
tprhcPayload
  = lens _tprhcPayload (\ s a -> s{_tprhcPayload = a})

-- | Name of the region scoping this request.
tprhcRegion :: Lens' TargetPoolsRemoveHealthCheck' Text
tprhcRegion
  = lens _tprhcRegion (\ s a -> s{_tprhcRegion = a})

instance GoogleRequest TargetPoolsRemoveHealthCheck'
         where
        type Rs TargetPoolsRemoveHealthCheck' = Operation
        requestClient TargetPoolsRemoveHealthCheck'{..}
          = go _tprhcProject _tprhcRegion _tprhcTargetPool
              (Just AltJSON)
              _tprhcPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsRemoveHealthCheckResource)
                      mempty
