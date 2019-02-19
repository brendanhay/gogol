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
-- Module      : Network.Google.Resource.Compute.TargetInstances.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetInstance resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetInstances.delete@.
module Network.Google.Resource.Compute.TargetInstances.Delete
    (
    -- * REST Resource
      TargetInstancesDeleteResource

    -- * Creating a Request
    , targetInstancesDelete
    , TargetInstancesDelete

    -- * Request Lenses
    , tidRequestId
    , tidProject
    , tidTargetInstance
    , tidZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetInstances.delete@ method which the
-- 'TargetInstancesDelete' request conforms to.
type TargetInstancesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "targetInstances" :>
                   Capture "targetInstance" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetInstance resource.
--
-- /See:/ 'targetInstancesDelete' smart constructor.
data TargetInstancesDelete =
  TargetInstancesDelete'
    { _tidRequestId      :: !(Maybe Text)
    , _tidProject        :: !Text
    , _tidTargetInstance :: !Text
    , _tidZone           :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TargetInstancesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tidRequestId'
--
-- * 'tidProject'
--
-- * 'tidTargetInstance'
--
-- * 'tidZone'
targetInstancesDelete
    :: Text -- ^ 'tidProject'
    -> Text -- ^ 'tidTargetInstance'
    -> Text -- ^ 'tidZone'
    -> TargetInstancesDelete
targetInstancesDelete pTidProject_ pTidTargetInstance_ pTidZone_ =
  TargetInstancesDelete'
    { _tidRequestId = Nothing
    , _tidProject = pTidProject_
    , _tidTargetInstance = pTidTargetInstance_
    , _tidZone = pTidZone_
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
tidRequestId :: Lens' TargetInstancesDelete (Maybe Text)
tidRequestId
  = lens _tidRequestId (\ s a -> s{_tidRequestId = a})

-- | Project ID for this request.
tidProject :: Lens' TargetInstancesDelete Text
tidProject
  = lens _tidProject (\ s a -> s{_tidProject = a})

-- | Name of the TargetInstance resource to delete.
tidTargetInstance :: Lens' TargetInstancesDelete Text
tidTargetInstance
  = lens _tidTargetInstance
      (\ s a -> s{_tidTargetInstance = a})

-- | Name of the zone scoping this request.
tidZone :: Lens' TargetInstancesDelete Text
tidZone = lens _tidZone (\ s a -> s{_tidZone = a})

instance GoogleRequest TargetInstancesDelete where
        type Rs TargetInstancesDelete = Operation
        type Scopes TargetInstancesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetInstancesDelete'{..}
          = go _tidProject _tidZone _tidTargetInstance
              _tidRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetInstancesDeleteResource)
                      mempty
