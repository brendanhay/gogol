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
-- Truncate MySQL general and slow query log tables MySQL only.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.truncateLog@.
module Network.Google.Resource.SQL.Instances.TruncateLog
    (
    -- * REST Resource
      InstancesTruncateLogResource

    -- * Creating a Request
    , instancesTruncateLog
    , InstancesTruncateLog

    -- * Request Lenses
    , itlXgafv
    , itlUploadProtocol
    , itlProject
    , itlAccessToken
    , itlUploadType
    , itlPayload
    , itlCallback
    , itlInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.truncateLog@ method which the
-- 'InstancesTruncateLog' request conforms to.
type InstancesTruncateLogResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "truncateLog" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesTruncateLogRequest :>
                               Post '[JSON] Operation

-- | Truncate MySQL general and slow query log tables MySQL only.
--
-- /See:/ 'instancesTruncateLog' smart constructor.
data InstancesTruncateLog =
  InstancesTruncateLog'
    { _itlXgafv :: !(Maybe Xgafv)
    , _itlUploadProtocol :: !(Maybe Text)
    , _itlProject :: !Text
    , _itlAccessToken :: !(Maybe Text)
    , _itlUploadType :: !(Maybe Text)
    , _itlPayload :: !InstancesTruncateLogRequest
    , _itlCallback :: !(Maybe Text)
    , _itlInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesTruncateLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlXgafv'
--
-- * 'itlUploadProtocol'
--
-- * 'itlProject'
--
-- * 'itlAccessToken'
--
-- * 'itlUploadType'
--
-- * 'itlPayload'
--
-- * 'itlCallback'
--
-- * 'itlInstance'
instancesTruncateLog
    :: Text -- ^ 'itlProject'
    -> InstancesTruncateLogRequest -- ^ 'itlPayload'
    -> Text -- ^ 'itlInstance'
    -> InstancesTruncateLog
instancesTruncateLog pItlProject_ pItlPayload_ pItlInstance_ =
  InstancesTruncateLog'
    { _itlXgafv = Nothing
    , _itlUploadProtocol = Nothing
    , _itlProject = pItlProject_
    , _itlAccessToken = Nothing
    , _itlUploadType = Nothing
    , _itlPayload = pItlPayload_
    , _itlCallback = Nothing
    , _itlInstance = pItlInstance_
    }


-- | V1 error format.
itlXgafv :: Lens' InstancesTruncateLog (Maybe Xgafv)
itlXgafv = lens _itlXgafv (\ s a -> s{_itlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
itlUploadProtocol :: Lens' InstancesTruncateLog (Maybe Text)
itlUploadProtocol
  = lens _itlUploadProtocol
      (\ s a -> s{_itlUploadProtocol = a})

-- | Project ID of the Cloud SQL project.
itlProject :: Lens' InstancesTruncateLog Text
itlProject
  = lens _itlProject (\ s a -> s{_itlProject = a})

-- | OAuth access token.
itlAccessToken :: Lens' InstancesTruncateLog (Maybe Text)
itlAccessToken
  = lens _itlAccessToken
      (\ s a -> s{_itlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
itlUploadType :: Lens' InstancesTruncateLog (Maybe Text)
itlUploadType
  = lens _itlUploadType
      (\ s a -> s{_itlUploadType = a})

-- | Multipart request metadata.
itlPayload :: Lens' InstancesTruncateLog InstancesTruncateLogRequest
itlPayload
  = lens _itlPayload (\ s a -> s{_itlPayload = a})

-- | JSONP
itlCallback :: Lens' InstancesTruncateLog (Maybe Text)
itlCallback
  = lens _itlCallback (\ s a -> s{_itlCallback = a})

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
          = go _itlProject _itlInstance _itlXgafv
              _itlUploadProtocol
              _itlAccessToken
              _itlUploadType
              _itlCallback
              (Just AltJSON)
              _itlPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesTruncateLogResource)
                      mempty
