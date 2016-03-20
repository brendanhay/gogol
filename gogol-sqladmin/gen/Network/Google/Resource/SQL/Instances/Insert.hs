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
-- Module      : Network.Google.Resource.SQL.Instances.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.insert@.
module Network.Google.Resource.SQL.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertResource

    -- * Creating a Request
    , instancesInsert
    , InstancesInsert

    -- * Request Lenses
    , insProject
    , insPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.insert@ method which the
-- 'InstancesInsert' request conforms to.
type InstancesInsertResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DatabaseInstance :>
                   Post '[JSON] Operation

-- | Creates a new Cloud SQL instance.
--
-- /See:/ 'instancesInsert' smart constructor.
data InstancesInsert = InstancesInsert
    { _insProject :: !Text
    , _insPayload :: !DatabaseInstance
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insProject'
--
-- * 'insPayload'
instancesInsert
    :: Text -- ^ 'insProject'
    -> DatabaseInstance -- ^ 'insPayload'
    -> InstancesInsert
instancesInsert pInsProject_ pInsPayload_ =
    InstancesInsert
    { _insProject = pInsProject_
    , _insPayload = pInsPayload_
    }

-- | Project ID of the project to which the newly created Cloud SQL instances
-- should belong.
insProject :: Lens' InstancesInsert Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | Multipart request metadata.
insPayload :: Lens' InstancesInsert DatabaseInstance
insPayload
  = lens _insPayload (\ s a -> s{_insPayload = a})

instance GoogleRequest InstancesInsert where
        type Rs InstancesInsert = Operation
        requestClient InstancesInsert{..}
          = go _insProject (Just AltJSON) _insPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesInsertResource)
                      mempty
