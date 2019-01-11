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
-- Module      : Network.Google.Resource.SQL.Instances.ListServerCas
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the trusted Certificate Authorities (CAs) for the specified
-- instance. There can be up to three CAs listed: the CA that was used to
-- sign the certificate that is currently in use, a CA that has been added
-- but not yet used to sign a certificate, and a CA used to sign a
-- certificate that has previously rotated out.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.listServerCas@.
module Network.Google.Resource.SQL.Instances.ListServerCas
    (
    -- * REST Resource
      InstancesListServerCasResource

    -- * Creating a Request
    , instancesListServerCas
    , InstancesListServerCas

    -- * Request Lenses
    , ilscProject
    , ilscInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.listServerCas@ method which the
-- 'InstancesListServerCas' request conforms to.
type InstancesListServerCasResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "listServerCas" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] InstancesListServerCasResponse

-- | Lists all of the trusted Certificate Authorities (CAs) for the specified
-- instance. There can be up to three CAs listed: the CA that was used to
-- sign the certificate that is currently in use, a CA that has been added
-- but not yet used to sign a certificate, and a CA used to sign a
-- certificate that has previously rotated out.
--
-- /See:/ 'instancesListServerCas' smart constructor.
data InstancesListServerCas = InstancesListServerCas'
    { _ilscProject  :: !Text
    , _ilscInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesListServerCas' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilscProject'
--
-- * 'ilscInstance'
instancesListServerCas
    :: Text -- ^ 'ilscProject'
    -> Text -- ^ 'ilscInstance'
    -> InstancesListServerCas
instancesListServerCas pIlscProject_ pIlscInstance_ =
    InstancesListServerCas'
    { _ilscProject = pIlscProject_
    , _ilscInstance = pIlscInstance_
    }

-- | Project ID of the project that contains the instance.
ilscProject :: Lens' InstancesListServerCas Text
ilscProject
  = lens _ilscProject (\ s a -> s{_ilscProject = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ilscInstance :: Lens' InstancesListServerCas Text
ilscInstance
  = lens _ilscInstance (\ s a -> s{_ilscInstance = a})

instance GoogleRequest InstancesListServerCas where
        type Rs InstancesListServerCas =
             InstancesListServerCasResponse
        type Scopes InstancesListServerCas =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesListServerCas'{..}
          = go _ilscProject _ilscInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesListServerCasResource)
                      mempty
