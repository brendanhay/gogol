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
-- Module      : Network.Google.Resource.Compute.TargetPools.GetHealth
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the most recent health check results for each IP for the given
-- instance that is referenced by given TargetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsGetHealth@.
module Network.Google.Resource.Compute.TargetPools.GetHealth
    (
    -- * REST Resource
      TargetPoolsGetHealthResource

    -- * Creating a Request
    , targetPoolsGetHealth'
    , TargetPoolsGetHealth'

    -- * Request Lenses
    , tpghProject
    , tpghTargetPool
    , tpghPayload
    , tpghRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsGetHealth@ method which the
-- 'TargetPoolsGetHealth'' request conforms to.
type TargetPoolsGetHealthResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "getHealth" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] InstanceReference :>
                     Post '[JSON] TargetPoolInstanceHealth

-- | Gets the most recent health check results for each IP for the given
-- instance that is referenced by given TargetPool.
--
-- /See:/ 'targetPoolsGetHealth'' smart constructor.
data TargetPoolsGetHealth' = TargetPoolsGetHealth'
    { _tpghProject    :: !Text
    , _tpghTargetPool :: !Text
    , _tpghPayload    :: !InstanceReference
    , _tpghRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsGetHealth'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpghProject'
--
-- * 'tpghTargetPool'
--
-- * 'tpghPayload'
--
-- * 'tpghRegion'
targetPoolsGetHealth'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> InstanceReference -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetPoolsGetHealth'
targetPoolsGetHealth' pTpghProject_ pTpghTargetPool_ pTpghPayload_ pTpghRegion_ =
    TargetPoolsGetHealth'
    { _tpghProject = pTpghProject_
    , _tpghTargetPool = pTpghTargetPool_
    , _tpghPayload = pTpghPayload_
    , _tpghRegion = pTpghRegion_
    }

tpghProject :: Lens' TargetPoolsGetHealth' Text
tpghProject
  = lens _tpghProject (\ s a -> s{_tpghProject = a})

-- | Name of the TargetPool resource to which the queried instance belongs.
tpghTargetPool :: Lens' TargetPoolsGetHealth' Text
tpghTargetPool
  = lens _tpghTargetPool
      (\ s a -> s{_tpghTargetPool = a})

-- | Multipart request metadata.
tpghPayload :: Lens' TargetPoolsGetHealth' InstanceReference
tpghPayload
  = lens _tpghPayload (\ s a -> s{_tpghPayload = a})

-- | Name of the region scoping this request.
tpghRegion :: Lens' TargetPoolsGetHealth' Text
tpghRegion
  = lens _tpghRegion (\ s a -> s{_tpghRegion = a})

instance GoogleRequest TargetPoolsGetHealth' where
        type Rs TargetPoolsGetHealth' =
             TargetPoolInstanceHealth
        requestClient TargetPoolsGetHealth'{..}
          = go _tpghProject _tpghRegion _tpghTargetPool
              (Just AltJSON)
              _tpghPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsGetHealthResource)
                      mempty
