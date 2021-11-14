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
-- Module      : Network.Google.Resource.SQL.Connect.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves connect settings about a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.connect.get@.
module Network.Google.Resource.SQL.Connect.Get
    (
    -- * REST Resource
      ConnectGetResource

    -- * Creating a Request
    , connectGet
    , ConnectGet

    -- * Request Lenses
    , cgXgafv
    , cgReadTime
    , cgUploadProtocol
    , cgProject
    , cgAccessToken
    , cgUploadType
    , cgCallback
    , cgInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.connect.get@ method which the
-- 'ConnectGet' request conforms to.
type ConnectGetResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "connectSettings" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "readTime" DateTime' :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ConnectSettings

-- | Retrieves connect settings about a Cloud SQL instance.
--
-- /See:/ 'connectGet' smart constructor.
data ConnectGet =
  ConnectGet'
    { _cgXgafv :: !(Maybe Xgafv)
    , _cgReadTime :: !(Maybe DateTime')
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgProject :: !Text
    , _cgAccessToken :: !(Maybe Text)
    , _cgUploadType :: !(Maybe Text)
    , _cgCallback :: !(Maybe Text)
    , _cgInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConnectGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgReadTime'
--
-- * 'cgUploadProtocol'
--
-- * 'cgProject'
--
-- * 'cgAccessToken'
--
-- * 'cgUploadType'
--
-- * 'cgCallback'
--
-- * 'cgInstance'
connectGet
    :: Text -- ^ 'cgProject'
    -> Text -- ^ 'cgInstance'
    -> ConnectGet
connectGet pCgProject_ pCgInstance_ =
  ConnectGet'
    { _cgXgafv = Nothing
    , _cgReadTime = Nothing
    , _cgUploadProtocol = Nothing
    , _cgProject = pCgProject_
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgCallback = Nothing
    , _cgInstance = pCgInstance_
    }


-- | V1 error format.
cgXgafv :: Lens' ConnectGet (Maybe Xgafv)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Optional. Optional snapshot read timestamp to trade freshness for
-- performance.
cgReadTime :: Lens' ConnectGet (Maybe UTCTime)
cgReadTime
  = lens _cgReadTime (\ s a -> s{_cgReadTime = a}) .
      mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' ConnectGet (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | Project ID of the project that contains the instance.
cgProject :: Lens' ConnectGet Text
cgProject
  = lens _cgProject (\ s a -> s{_cgProject = a})

-- | OAuth access token.
cgAccessToken :: Lens' ConnectGet (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' ConnectGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | JSONP
cgCallback :: Lens' ConnectGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
cgInstance :: Lens' ConnectGet Text
cgInstance
  = lens _cgInstance (\ s a -> s{_cgInstance = a})

instance GoogleRequest ConnectGet where
        type Rs ConnectGet = ConnectSettings
        type Scopes ConnectGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient ConnectGet'{..}
          = go _cgProject _cgInstance _cgXgafv _cgReadTime
              _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy ConnectGetResource)
                      mempty
