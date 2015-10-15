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
-- Module      : Network.Google.Resource.SQL.Instances.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a resource containing information about a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesGet@.
module Network.Google.Resource.SQL.Instances.Get
    (
    -- * REST Resource
      InstancesGetResource

    -- * Creating a Request
    , instancesGet'
    , InstancesGet'

    -- * Request Lenses
    , igProject
    , igInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesGet@ method which the
-- 'InstancesGet'' request conforms to.
type InstancesGetResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] DatabaseInstance

-- | Retrieves a resource containing information about a Cloud SQL instance.
--
-- /See:/ 'instancesGet'' smart constructor.
data InstancesGet' = InstancesGet'
    { _igProject  :: !Text
    , _igInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igProject'
--
-- * 'igInstance'
instancesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesGet'
instancesGet' pIgProject_ pIgInstance_ =
    InstancesGet'
    { _igProject = pIgProject_
    , _igInstance = pIgInstance_
    }

-- | Project ID of the project that contains the instance.
igProject :: Lens' InstancesGet' Text
igProject
  = lens _igProject (\ s a -> s{_igProject = a})

-- | Database instance ID. This does not include the project ID.
igInstance :: Lens' InstancesGet' Text
igInstance
  = lens _igInstance (\ s a -> s{_igInstance = a})

instance GoogleRequest InstancesGet' where
        type Rs InstancesGet' = DatabaseInstance
        requestClient InstancesGet'{..}
          = go _igProject _igInstance (Just AltJSON) sQLAdmin
          where go
                  = buildClient (Proxy :: Proxy InstancesGetResource)
                      mempty
