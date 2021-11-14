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
-- Module      : Network.Google.Resource.SQL.Users.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing user in a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.users.update@.
module Network.Google.Resource.SQL.Users.Update
    (
    -- * REST Resource
      UsersUpdateResource

    -- * Creating a Request
    , usersUpdate
    , UsersUpdate

    -- * Request Lenses
    , uuXgafv
    , uuUploadProtocol
    , uuProject
    , uuAccessToken
    , uuUploadType
    , uuPayload
    , uuName
    , uuHost
    , uuCallback
    , uuInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.users.update@ method which the
-- 'UsersUpdate' request conforms to.
type UsersUpdateResource =
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
                         QueryParam "name" Text :>
                           QueryParam "host" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] User :> Put '[JSON] Operation

-- | Updates an existing user in a Cloud SQL instance.
--
-- /See:/ 'usersUpdate' smart constructor.
data UsersUpdate =
  UsersUpdate'
    { _uuXgafv :: !(Maybe Xgafv)
    , _uuUploadProtocol :: !(Maybe Text)
    , _uuProject :: !Text
    , _uuAccessToken :: !(Maybe Text)
    , _uuUploadType :: !(Maybe Text)
    , _uuPayload :: !User
    , _uuName :: !(Maybe Text)
    , _uuHost :: !(Maybe Text)
    , _uuCallback :: !(Maybe Text)
    , _uuInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuXgafv'
--
-- * 'uuUploadProtocol'
--
-- * 'uuProject'
--
-- * 'uuAccessToken'
--
-- * 'uuUploadType'
--
-- * 'uuPayload'
--
-- * 'uuName'
--
-- * 'uuHost'
--
-- * 'uuCallback'
--
-- * 'uuInstance'
usersUpdate
    :: Text -- ^ 'uuProject'
    -> User -- ^ 'uuPayload'
    -> Text -- ^ 'uuInstance'
    -> UsersUpdate
usersUpdate pUuProject_ pUuPayload_ pUuInstance_ =
  UsersUpdate'
    { _uuXgafv = Nothing
    , _uuUploadProtocol = Nothing
    , _uuProject = pUuProject_
    , _uuAccessToken = Nothing
    , _uuUploadType = Nothing
    , _uuPayload = pUuPayload_
    , _uuName = Nothing
    , _uuHost = Nothing
    , _uuCallback = Nothing
    , _uuInstance = pUuInstance_
    }


-- | V1 error format.
uuXgafv :: Lens' UsersUpdate (Maybe Xgafv)
uuXgafv = lens _uuXgafv (\ s a -> s{_uuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uuUploadProtocol :: Lens' UsersUpdate (Maybe Text)
uuUploadProtocol
  = lens _uuUploadProtocol
      (\ s a -> s{_uuUploadProtocol = a})

-- | Project ID of the project that contains the instance.
uuProject :: Lens' UsersUpdate Text
uuProject
  = lens _uuProject (\ s a -> s{_uuProject = a})

-- | OAuth access token.
uuAccessToken :: Lens' UsersUpdate (Maybe Text)
uuAccessToken
  = lens _uuAccessToken
      (\ s a -> s{_uuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uuUploadType :: Lens' UsersUpdate (Maybe Text)
uuUploadType
  = lens _uuUploadType (\ s a -> s{_uuUploadType = a})

-- | Multipart request metadata.
uuPayload :: Lens' UsersUpdate User
uuPayload
  = lens _uuPayload (\ s a -> s{_uuPayload = a})

-- | Name of the user in the instance.
uuName :: Lens' UsersUpdate (Maybe Text)
uuName = lens _uuName (\ s a -> s{_uuName = a})

-- | Optional. Host of the user in the instance.
uuHost :: Lens' UsersUpdate (Maybe Text)
uuHost = lens _uuHost (\ s a -> s{_uuHost = a})

-- | JSONP
uuCallback :: Lens' UsersUpdate (Maybe Text)
uuCallback
  = lens _uuCallback (\ s a -> s{_uuCallback = a})

-- | Database instance ID. This does not include the project ID.
uuInstance :: Lens' UsersUpdate Text
uuInstance
  = lens _uuInstance (\ s a -> s{_uuInstance = a})

instance GoogleRequest UsersUpdate where
        type Rs UsersUpdate = Operation
        type Scopes UsersUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient UsersUpdate'{..}
          = go _uuProject _uuInstance _uuXgafv
              _uuUploadProtocol
              _uuAccessToken
              _uuUploadType
              _uuName
              _uuHost
              _uuCallback
              (Just AltJSON)
              _uuPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersUpdateResource)
                      mempty
