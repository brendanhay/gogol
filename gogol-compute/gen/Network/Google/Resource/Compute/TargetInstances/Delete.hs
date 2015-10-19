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
-- Copyright   : (c) 2015 Brendan Hay
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
    , targetInstancesDelete'
    , TargetInstancesDelete'

    -- * Request Lenses
    , tidProject
    , tidTargetInstance
    , tidZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetInstances.delete@ method which the
-- 'TargetInstancesDelete'' request conforms to.
type TargetInstancesDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "targetInstances" :>
             Capture "targetInstance" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetInstance resource.
--
-- /See:/ 'targetInstancesDelete'' smart constructor.
data TargetInstancesDelete' = TargetInstancesDelete'
    { _tidProject        :: !Text
    , _tidTargetInstance :: !Text
    , _tidZone           :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tidProject'
--
-- * 'tidTargetInstance'
--
-- * 'tidZone'
targetInstancesDelete'
    :: Text -- ^ 'tidProject'
    -> Text -- ^ 'tidTargetInstance'
    -> Text -- ^ 'tidZone'
    -> TargetInstancesDelete'
targetInstancesDelete' pTidProject_ pTidTargetInstance_ pTidZone_ =
    TargetInstancesDelete'
    { _tidProject = pTidProject_
    , _tidTargetInstance = pTidTargetInstance_
    , _tidZone = pTidZone_
    }

-- | Name of the project scoping this request.
tidProject :: Lens' TargetInstancesDelete' Text
tidProject
  = lens _tidProject (\ s a -> s{_tidProject = a})

-- | Name of the TargetInstance resource to delete.
tidTargetInstance :: Lens' TargetInstancesDelete' Text
tidTargetInstance
  = lens _tidTargetInstance
      (\ s a -> s{_tidTargetInstance = a})

-- | Name of the zone scoping this request.
tidZone :: Lens' TargetInstancesDelete' Text
tidZone = lens _tidZone (\ s a -> s{_tidZone = a})

instance GoogleRequest TargetInstancesDelete' where
        type Rs TargetInstancesDelete' = Operation
        requestClient TargetInstancesDelete'{..}
          = go _tidProject _tidZone _tidTargetInstance
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetInstancesDeleteResource)
                      mempty
