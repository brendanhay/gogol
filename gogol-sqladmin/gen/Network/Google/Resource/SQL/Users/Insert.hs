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
-- Module      : Network.Google.Resource.SQL.Users.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new user in a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.users.insert@.
module Network.Google.Resource.SQL.Users.Insert
    (
    -- * REST Resource
      UsersInsertResource

    -- * Creating a Request
    , usersInsert
    , UsersInsert

    -- * Request Lenses
    , uiXgafv
    , uiUploadProtocol
    , uiProject
    , uiAccessToken
    , uiUploadType
    , uiPayload
    , uiCallback
    , uiInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.users.insert@ method which the
-- 'UsersInsert' request conforms to.
type UsersInsertResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "users" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] User :> Post '[JSON] Operation

-- | Creates a new user in a Cloud SQL instance.
--
-- /See:/ 'usersInsert' smart constructor.
data UsersInsert =
  UsersInsert'
    { _uiXgafv :: !(Maybe Xgafv)
    , _uiUploadProtocol :: !(Maybe Text)
    , _uiProject :: !Text
    , _uiAccessToken :: !(Maybe Text)
    , _uiUploadType :: !(Maybe Text)
    , _uiPayload :: !User
    , _uiCallback :: !(Maybe Text)
    , _uiInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiXgafv'
--
-- * 'uiUploadProtocol'
--
-- * 'uiProject'
--
-- * 'uiAccessToken'
--
-- * 'uiUploadType'
--
-- * 'uiPayload'
--
-- * 'uiCallback'
--
-- * 'uiInstance'
usersInsert
    :: Text -- ^ 'uiProject'
    -> User -- ^ 'uiPayload'
    -> Text -- ^ 'uiInstance'
    -> UsersInsert
usersInsert pUiProject_ pUiPayload_ pUiInstance_ =
  UsersInsert'
    { _uiXgafv = Nothing
    , _uiUploadProtocol = Nothing
    , _uiProject = pUiProject_
    , _uiAccessToken = Nothing
    , _uiUploadType = Nothing
    , _uiPayload = pUiPayload_
    , _uiCallback = Nothing
    , _uiInstance = pUiInstance_
    }


-- | V1 error format.
uiXgafv :: Lens' UsersInsert (Maybe Xgafv)
uiXgafv = lens _uiXgafv (\ s a -> s{_uiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uiUploadProtocol :: Lens' UsersInsert (Maybe Text)
uiUploadProtocol
  = lens _uiUploadProtocol
      (\ s a -> s{_uiUploadProtocol = a})

-- | Project ID of the project that contains the instance.
uiProject :: Lens' UsersInsert Text
uiProject
  = lens _uiProject (\ s a -> s{_uiProject = a})

-- | OAuth access token.
uiAccessToken :: Lens' UsersInsert (Maybe Text)
uiAccessToken
  = lens _uiAccessToken
      (\ s a -> s{_uiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uiUploadType :: Lens' UsersInsert (Maybe Text)
uiUploadType
  = lens _uiUploadType (\ s a -> s{_uiUploadType = a})

-- | Multipart request metadata.
uiPayload :: Lens' UsersInsert User
uiPayload
  = lens _uiPayload (\ s a -> s{_uiPayload = a})

-- | JSONP
uiCallback :: Lens' UsersInsert (Maybe Text)
uiCallback
  = lens _uiCallback (\ s a -> s{_uiCallback = a})

-- | Database instance ID. This does not include the project ID.
uiInstance :: Lens' UsersInsert Text
uiInstance
  = lens _uiInstance (\ s a -> s{_uiInstance = a})

instance GoogleRequest UsersInsert where
        type Rs UsersInsert = Operation
        type Scopes UsersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient UsersInsert'{..}
          = go _uiProject _uiInstance _uiXgafv
              _uiUploadProtocol
              _uiAccessToken
              _uiUploadType
              _uiCallback
              (Just AltJSON)
              _uiPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersInsertResource)
                      mempty
