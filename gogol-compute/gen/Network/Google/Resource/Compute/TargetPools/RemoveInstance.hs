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
-- Module      : Network.Google.Resource.Compute.TargetPools.RemoveInstance
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes instance URL from a target pool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.removeInstance@.
module Network.Google.Resource.Compute.TargetPools.RemoveInstance
    (
    -- * REST Resource
      TargetPoolsRemoveInstanceResource

    -- * Creating a Request
    , targetPoolsRemoveInstance
    , TargetPoolsRemoveInstance

    -- * Request Lenses
    , tpriProject
    , tpriTargetPool
    , tpriPayload
    , tpriRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.removeInstance@ method which the
-- 'TargetPoolsRemoveInstance' request conforms to.
type TargetPoolsRemoveInstanceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "removeInstance" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TargetPoolsRemoveInstanceRequest :>
                           Post '[JSON] Operation

-- | Removes instance URL from a target pool.
--
-- /See:/ 'targetPoolsRemoveInstance' smart constructor.
data TargetPoolsRemoveInstance = TargetPoolsRemoveInstance'
    { _tpriProject    :: !Text
    , _tpriTargetPool :: !Text
    , _tpriPayload    :: !TargetPoolsRemoveInstanceRequest
    , _tpriRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsRemoveInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpriProject'
--
-- * 'tpriTargetPool'
--
-- * 'tpriPayload'
--
-- * 'tpriRegion'
targetPoolsRemoveInstance
    :: Text -- ^ 'tpriProject'
    -> Text -- ^ 'tpriTargetPool'
    -> TargetPoolsRemoveInstanceRequest -- ^ 'tpriPayload'
    -> Text -- ^ 'tpriRegion'
    -> TargetPoolsRemoveInstance
targetPoolsRemoveInstance pTpriProject_ pTpriTargetPool_ pTpriPayload_ pTpriRegion_ =
    TargetPoolsRemoveInstance'
    { _tpriProject = pTpriProject_
    , _tpriTargetPool = pTpriTargetPool_
    , _tpriPayload = pTpriPayload_
    , _tpriRegion = pTpriRegion_
    }

-- | Project ID for this request.
tpriProject :: Lens' TargetPoolsRemoveInstance Text
tpriProject
  = lens _tpriProject (\ s a -> s{_tpriProject = a})

-- | Name of the TargetPool resource to remove instances from.
tpriTargetPool :: Lens' TargetPoolsRemoveInstance Text
tpriTargetPool
  = lens _tpriTargetPool
      (\ s a -> s{_tpriTargetPool = a})

-- | Multipart request metadata.
tpriPayload :: Lens' TargetPoolsRemoveInstance TargetPoolsRemoveInstanceRequest
tpriPayload
  = lens _tpriPayload (\ s a -> s{_tpriPayload = a})

-- | Name of the region scoping this request.
tpriRegion :: Lens' TargetPoolsRemoveInstance Text
tpriRegion
  = lens _tpriRegion (\ s a -> s{_tpriRegion = a})

instance GoogleRequest TargetPoolsRemoveInstance
         where
        type Rs TargetPoolsRemoveInstance = Operation
        type Scopes TargetPoolsRemoveInstance =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetPoolsRemoveInstance'{..}
          = go _tpriProject _tpriRegion _tpriTargetPool
              (Just AltJSON)
              _tpriPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsRemoveInstanceResource)
                      mempty
