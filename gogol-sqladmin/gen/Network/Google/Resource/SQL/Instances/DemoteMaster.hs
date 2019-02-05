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
-- Module      : Network.Google.Resource.SQL.Instances.DemoteMaster
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Demotes the stand-alone instance to be a Cloud SQL read replica for an
-- external database server.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.demoteMaster@.
module Network.Google.Resource.SQL.Instances.DemoteMaster
    (
    -- * REST Resource
      InstancesDemoteMasterResource

    -- * Creating a Request
    , instancesDemoteMaster
    , InstancesDemoteMaster

    -- * Request Lenses
    , idmProject
    , idmPayload
    , idmInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.demoteMaster@ method which the
-- 'InstancesDemoteMaster' request conforms to.
type InstancesDemoteMasterResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "demoteMaster" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InstancesDemoteMasterRequest :>
                       Post '[JSON] Operation

-- | Demotes the stand-alone instance to be a Cloud SQL read replica for an
-- external database server.
--
-- /See:/ 'instancesDemoteMaster' smart constructor.
data InstancesDemoteMaster = InstancesDemoteMaster'
    { _idmProject  :: !Text
    , _idmPayload  :: !InstancesDemoteMasterRequest
    , _idmInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDemoteMaster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idmProject'
--
-- * 'idmPayload'
--
-- * 'idmInstance'
instancesDemoteMaster
    :: Text -- ^ 'idmProject'
    -> InstancesDemoteMasterRequest -- ^ 'idmPayload'
    -> Text -- ^ 'idmInstance'
    -> InstancesDemoteMaster
instancesDemoteMaster pIdmProject_ pIdmPayload_ pIdmInstance_ =
    InstancesDemoteMaster'
    { _idmProject = pIdmProject_
    , _idmPayload = pIdmPayload_
    , _idmInstance = pIdmInstance_
    }

-- | ID of the project that contains the instance.
idmProject :: Lens' InstancesDemoteMaster Text
idmProject
  = lens _idmProject (\ s a -> s{_idmProject = a})

-- | Multipart request metadata.
idmPayload :: Lens' InstancesDemoteMaster InstancesDemoteMasterRequest
idmPayload
  = lens _idmPayload (\ s a -> s{_idmPayload = a})

-- | Cloud SQL instance name.
idmInstance :: Lens' InstancesDemoteMaster Text
idmInstance
  = lens _idmInstance (\ s a -> s{_idmInstance = a})

instance GoogleRequest InstancesDemoteMaster where
        type Rs InstancesDemoteMaster = Operation
        type Scopes InstancesDemoteMaster =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesDemoteMaster'{..}
          = go _idmProject _idmInstance (Just AltJSON)
              _idmPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDemoteMasterResource)
                      mempty
