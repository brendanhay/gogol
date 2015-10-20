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
-- Module      : Network.Google.Resource.SQL.Instances.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.delete@.
module Network.Google.Resource.SQL.Instances.Delete
    (
    -- * REST Resource
      InstancesDeleteResource

    -- * Creating a Request
    , instancesDelete
    , InstancesDelete

    -- * Request Lenses
    , idProject
    , idInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.delete@ method which the
-- 'InstancesDelete' request conforms to.
type InstancesDeleteResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a Cloud SQL instance.
--
-- /See:/ 'instancesDelete' smart constructor.
data InstancesDelete = InstancesDelete
    { _idProject  :: !Text
    , _idInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idProject'
--
-- * 'idInstance'
instancesDelete
    :: Text -- ^ 'idProject'
    -> Text -- ^ 'idInstance'
    -> InstancesDelete
instancesDelete pIdProject_ pIdInstance_ =
    InstancesDelete
    { _idProject = pIdProject_
    , _idInstance = pIdInstance_
    }

-- | Project ID of the project that contains the instance to be deleted.
idProject :: Lens' InstancesDelete Text
idProject
  = lens _idProject (\ s a -> s{_idProject = a})

-- | Cloud SQL instance ID. This does not include the project ID.
idInstance :: Lens' InstancesDelete Text
idInstance
  = lens _idInstance (\ s a -> s{_idInstance = a})

instance GoogleRequest InstancesDelete where
        type Rs InstancesDelete = Operation
        requestClient InstancesDelete{..}
          = go _idProject _idInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDeleteResource)
                      mempty
