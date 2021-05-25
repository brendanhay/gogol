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
-- Module      : Network.Google.Resource.SQL.Databases.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists databases in the specified Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.databases.list@.
module Network.Google.Resource.SQL.Databases.List
    (
    -- * REST Resource
      DatabasesListResource

    -- * Creating a Request
    , databasesList
    , DatabasesList

    -- * Request Lenses
    , dlXgafv
    , dlUploadProtocol
    , dlProject
    , dlAccessToken
    , dlUploadType
    , dlCallback
    , dlInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.list@ method which the
-- 'DatabasesList' request conforms to.
type DatabasesListResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "databases" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] DatabasesListResponse

-- | Lists databases in the specified Cloud SQL instance.
--
-- /See:/ 'databasesList' smart constructor.
data DatabasesList =
  DatabasesList'
    { _dlXgafv :: !(Maybe Xgafv)
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlProject :: !Text
    , _dlAccessToken :: !(Maybe Text)
    , _dlUploadType :: !(Maybe Text)
    , _dlCallback :: !(Maybe Text)
    , _dlInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
--
-- * 'dlUploadProtocol'
--
-- * 'dlProject'
--
-- * 'dlAccessToken'
--
-- * 'dlUploadType'
--
-- * 'dlCallback'
--
-- * 'dlInstance'
databasesList
    :: Text -- ^ 'dlProject'
    -> Text -- ^ 'dlInstance'
    -> DatabasesList
databasesList pDlProject_ pDlInstance_ =
  DatabasesList'
    { _dlXgafv = Nothing
    , _dlUploadProtocol = Nothing
    , _dlProject = pDlProject_
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlCallback = Nothing
    , _dlInstance = pDlInstance_
    }


-- | V1 error format.
dlXgafv :: Lens' DatabasesList (Maybe Xgafv)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlUploadProtocol :: Lens' DatabasesList (Maybe Text)
dlUploadProtocol
  = lens _dlUploadProtocol
      (\ s a -> s{_dlUploadProtocol = a})

-- | Project ID of the project that contains the instance.
dlProject :: Lens' DatabasesList Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | OAuth access token.
dlAccessToken :: Lens' DatabasesList (Maybe Text)
dlAccessToken
  = lens _dlAccessToken
      (\ s a -> s{_dlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlUploadType :: Lens' DatabasesList (Maybe Text)
dlUploadType
  = lens _dlUploadType (\ s a -> s{_dlUploadType = a})

-- | JSONP
dlCallback :: Lens' DatabasesList (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
dlInstance :: Lens' DatabasesList Text
dlInstance
  = lens _dlInstance (\ s a -> s{_dlInstance = a})

instance GoogleRequest DatabasesList where
        type Rs DatabasesList = DatabasesListResponse
        type Scopes DatabasesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient DatabasesList'{..}
          = go _dlProject _dlInstance _dlXgafv
              _dlUploadProtocol
              _dlAccessToken
              _dlUploadType
              _dlCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy DatabasesListResource)
                      mempty
