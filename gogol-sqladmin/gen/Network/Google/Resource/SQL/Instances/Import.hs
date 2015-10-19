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
-- Module      : Network.Google.Resource.SQL.Instances.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.import@.
module Network.Google.Resource.SQL.Instances.Import
    (
    -- * REST Resource
      InstancesImportResource

    -- * Creating a Request
    , instancesImport'
    , InstancesImport'

    -- * Request Lenses
    , insProject
    , insPayload
    , insInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.import@ method which the
-- 'InstancesImport'' request conforms to.
type InstancesImportResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "import" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] InstancesImportRequest :>
                   Post '[JSON] Operation

-- | Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
--
-- /See:/ 'instancesImport'' smart constructor.
data InstancesImport' = InstancesImport'
    { _insProject  :: !Text
    , _insPayload  :: !InstancesImportRequest
    , _insInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insProject'
--
-- * 'insPayload'
--
-- * 'insInstance'
instancesImport'
    :: Text -- ^ 'insProject'
    -> InstancesImportRequest -- ^ 'insPayload'
    -> Text -- ^ 'insInstance'
    -> InstancesImport'
instancesImport' pInsProject_ pInsPayload_ pInsInstance_ =
    InstancesImport'
    { _insProject = pInsProject_
    , _insPayload = pInsPayload_
    , _insInstance = pInsInstance_
    }

-- | Project ID of the project that contains the instance.
insProject :: Lens' InstancesImport' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | Multipart request metadata.
insPayload :: Lens' InstancesImport' InstancesImportRequest
insPayload
  = lens _insPayload (\ s a -> s{_insPayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
insInstance :: Lens' InstancesImport' Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleRequest InstancesImport' where
        type Rs InstancesImport' = Operation
        requestClient InstancesImport'{..}
          = go _insProject _insInstance (Just AltJSON)
              _insPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesImportResource)
                      mempty
