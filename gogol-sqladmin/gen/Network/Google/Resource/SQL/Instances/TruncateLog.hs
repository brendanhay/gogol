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
-- Module      : Network.Google.Resource.SQL.Instances.TruncateLog
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Truncate MySQL general and slow query log tables
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.truncateLog@.
module Network.Google.Resource.SQL.Instances.TruncateLog
    (
    -- * REST Resource
      InstancesTruncateLogResource

    -- * Creating a Request
    , instancesTruncateLog
    , InstancesTruncateLog

    -- * Request Lenses
    , itlProject
    , itlPayload
    , itlInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.truncateLog@ method which the
-- 'InstancesTruncateLog' request conforms to.
type InstancesTruncateLogResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "truncateLog" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InstancesTruncateLogRequest :>
                       Post '[JSON] Operation

-- | Truncate MySQL general and slow query log tables
--
-- /See:/ 'instancesTruncateLog' smart constructor.
data InstancesTruncateLog = InstancesTruncateLog'
    { _itlProject  :: !Text
    , _itlPayload  :: !InstancesTruncateLogRequest
    , _itlInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesTruncateLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlProject'
--
-- * 'itlPayload'
--
-- * 'itlInstance'
instancesTruncateLog
    :: Text -- ^ 'itlProject'
    -> InstancesTruncateLogRequest -- ^ 'itlPayload'
    -> Text -- ^ 'itlInstance'
    -> InstancesTruncateLog
instancesTruncateLog pItlProject_ pItlPayload_ pItlInstance_ =
    InstancesTruncateLog'
    { _itlProject = pItlProject_
    , _itlPayload = pItlPayload_
    , _itlInstance = pItlInstance_
    }

-- | Project ID of the Cloud SQL project.
itlProject :: Lens' InstancesTruncateLog Text
itlProject
  = lens _itlProject (\ s a -> s{_itlProject = a})

-- | Multipart request metadata.
itlPayload :: Lens' InstancesTruncateLog InstancesTruncateLogRequest
itlPayload
  = lens _itlPayload (\ s a -> s{_itlPayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
itlInstance :: Lens' InstancesTruncateLog Text
itlInstance
  = lens _itlInstance (\ s a -> s{_itlInstance = a})

instance GoogleRequest InstancesTruncateLog where
        type Rs InstancesTruncateLog = Operation
        type Scopes InstancesTruncateLog =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesTruncateLog'{..}
          = go _itlProject _itlInstance (Just AltJSON)
              _itlPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesTruncateLogResource)
                      mempty
