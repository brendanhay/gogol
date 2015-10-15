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
-- Module      : Network.Google.Resource.Compute.Instances.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesDelete@.
module Network.Google.Resource.Compute.Instances.Delete
    (
    -- * REST Resource
      InstancesDeleteResource

    -- * Creating a Request
    , instancesDelete'
    , InstancesDelete'

    -- * Request Lenses
    , insProject
    , insZone
    , insInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesDelete@ method which the
-- 'InstancesDelete'' request conforms to.
type InstancesDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
--
-- /See:/ 'instancesDelete'' smart constructor.
data InstancesDelete' = InstancesDelete'
    { _insProject  :: !Text
    , _insZone     :: !Text
    , _insInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insProject'
--
-- * 'insZone'
--
-- * 'insInstance'
instancesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesDelete'
instancesDelete' pInsProject_ pInsZone_ pInsInstance_ =
    InstancesDelete'
    { _insProject = pInsProject_
    , _insZone = pInsZone_
    , _insInstance = pInsInstance_
    }

-- | Project ID for this request.
insProject :: Lens' InstancesDelete' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | The name of the zone for this request.
insZone :: Lens' InstancesDelete' Text
insZone = lens _insZone (\ s a -> s{_insZone = a})

-- | Name of the instance resource to delete.
insInstance :: Lens' InstancesDelete' Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleRequest InstancesDelete' where
        type Rs InstancesDelete' = Operation
        requestClient InstancesDelete'{..}
          = go _insProject _insZone _insInstance (Just AltJSON)
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDeleteResource)
                      mempty
