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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesInsert@.
module Network.Google.Resource.SQL.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertResource

    -- * Creating a Request
    , instancesInsert'
    , InstancesInsert'

    -- * Request Lenses
    , iiProject
    , iiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesInsert@ method which the
-- 'InstancesInsert'' request conforms to.
type InstancesInsertResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] DatabaseInstance :>
               Post '[JSON] Operation

-- | Creates a new Cloud SQL instance.
--
-- /See:/ 'instancesInsert'' smart constructor.
data InstancesInsert' = InstancesInsert'
    { _iiProject :: !Text
    , _iiPayload :: !DatabaseInstance
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiProject'
--
-- * 'iiPayload'
instancesInsert'
    :: Text -- ^ 'project'
    -> DatabaseInstance -- ^ 'payload'
    -> InstancesInsert'
instancesInsert' pIiProject_ pIiPayload_ =
    InstancesInsert'
    { _iiProject = pIiProject_
    , _iiPayload = pIiPayload_
    }

-- | Project ID of the project to which the newly created Cloud SQL instances
-- should belong.
iiProject :: Lens' InstancesInsert' Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | Multipart request metadata.
iiPayload :: Lens' InstancesInsert' DatabaseInstance
iiPayload
  = lens _iiPayload (\ s a -> s{_iiPayload = a})

instance GoogleRequest InstancesInsert' where
        type Rs InstancesInsert' = Operation
        requestClient InstancesInsert'{..}
          = go _iiProject (Just AltJSON) _iiPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesInsertResource)
                      mempty
