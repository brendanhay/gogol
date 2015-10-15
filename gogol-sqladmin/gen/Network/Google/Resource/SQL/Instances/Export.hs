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
-- Module      : Network.Google.Resource.SQL.Instances.Export
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports data from a Cloud SQL instance to a Google Cloud Storage bucket
-- as a MySQL dump file.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesExport@.
module Network.Google.Resource.SQL.Instances.Export
    (
    -- * REST Resource
      InstancesExportResource

    -- * Creating a Request
    , instancesExport'
    , InstancesExport'

    -- * Request Lenses
    , ieProject
    , iePayload
    , ieInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesExport@ method which the
-- 'InstancesExport'' request conforms to.
type InstancesExportResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "export" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] InstancesExportRequest :>
                   Post '[JSON] Operation

-- | Exports data from a Cloud SQL instance to a Google Cloud Storage bucket
-- as a MySQL dump file.
--
-- /See:/ 'instancesExport'' smart constructor.
data InstancesExport' = InstancesExport'
    { _ieProject  :: !Text
    , _iePayload  :: !InstancesExportRequest
    , _ieInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ieProject'
--
-- * 'iePayload'
--
-- * 'ieInstance'
instancesExport'
    :: Text -- ^ 'project'
    -> InstancesExportRequest -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesExport'
instancesExport' pIeProject_ pIePayload_ pIeInstance_ =
    InstancesExport'
    { _ieProject = pIeProject_
    , _iePayload = pIePayload_
    , _ieInstance = pIeInstance_
    }

-- | Project ID of the project that contains the instance to be exported.
ieProject :: Lens' InstancesExport' Text
ieProject
  = lens _ieProject (\ s a -> s{_ieProject = a})

-- | Multipart request metadata.
iePayload :: Lens' InstancesExport' InstancesExportRequest
iePayload
  = lens _iePayload (\ s a -> s{_iePayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ieInstance :: Lens' InstancesExport' Text
ieInstance
  = lens _ieInstance (\ s a -> s{_ieInstance = a})

instance GoogleRequest InstancesExport' where
        type Rs InstancesExport' = Operation
        requestClient InstancesExport'{..}
          = go _ieProject _ieInstance (Just AltJSON) _iePayload
              sQLAdmin
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesExportResource)
                      mempty
