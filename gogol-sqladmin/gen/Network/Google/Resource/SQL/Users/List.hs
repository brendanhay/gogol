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
-- Module      : Network.Google.Resource.SQL.Users.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists users in the specified Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.users.list@.
module Network.Google.Resource.SQL.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulXgafv
    , ulBodyInstance
    , ulBodySQLserverUserDetailsServerRoles
    , ulUploadProtocol
    , ulProject
    , ulBodySQLserverUserDetailsDisabled
    , ulAccessToken
    , ulUploadType
    , ulBodyKind
    , ulBodyPassword
    , ulBodyName
    , ulBodyProject
    , ulBodyHost
    , ulBodyType
    , ulBodyEtag
    , ulCallback
    , ulInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.users.list@ method which the
-- 'UsersList' request conforms to.
type UsersListResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "users" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "body.instance" Text :>
                     QueryParams "body.sqlserverUserDetails.serverRoles"
                       Text
                       :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "body.sqlserverUserDetails.disabled" Bool
                           :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "body.kind" Text :>
                                 QueryParam "body.password" Text :>
                                   QueryParam "body.name" Text :>
                                     QueryParam "body.project" Text :>
                                       QueryParam "body.host" Text :>
                                         QueryParam "body.type"
                                           UsersListBodyType
                                           :>
                                           QueryParam "body.etag" Text :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON] UsersListResponse

-- | Lists users in the specified Cloud SQL instance.
--
-- /See:/ 'usersList' smart constructor.
data UsersList =
  UsersList'
    { _ulXgafv :: !(Maybe Xgafv)
    , _ulBodyInstance :: !(Maybe Text)
    , _ulBodySQLserverUserDetailsServerRoles :: !(Maybe [Text])
    , _ulUploadProtocol :: !(Maybe Text)
    , _ulProject :: !Text
    , _ulBodySQLserverUserDetailsDisabled :: !(Maybe Bool)
    , _ulAccessToken :: !(Maybe Text)
    , _ulUploadType :: !(Maybe Text)
    , _ulBodyKind :: !(Maybe Text)
    , _ulBodyPassword :: !(Maybe Text)
    , _ulBodyName :: !(Maybe Text)
    , _ulBodyProject :: !(Maybe Text)
    , _ulBodyHost :: !(Maybe Text)
    , _ulBodyType :: !(Maybe UsersListBodyType)
    , _ulBodyEtag :: !(Maybe Text)
    , _ulCallback :: !(Maybe Text)
    , _ulInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulXgafv'
--
-- * 'ulBodyInstance'
--
-- * 'ulBodySQLserverUserDetailsServerRoles'
--
-- * 'ulUploadProtocol'
--
-- * 'ulProject'
--
-- * 'ulBodySQLserverUserDetailsDisabled'
--
-- * 'ulAccessToken'
--
-- * 'ulUploadType'
--
-- * 'ulBodyKind'
--
-- * 'ulBodyPassword'
--
-- * 'ulBodyName'
--
-- * 'ulBodyProject'
--
-- * 'ulBodyHost'
--
-- * 'ulBodyType'
--
-- * 'ulBodyEtag'
--
-- * 'ulCallback'
--
-- * 'ulInstance'
usersList
    :: Text -- ^ 'ulProject'
    -> Text -- ^ 'ulInstance'
    -> UsersList
usersList pUlProject_ pUlInstance_ =
  UsersList'
    { _ulXgafv = Nothing
    , _ulBodyInstance = Nothing
    , _ulBodySQLserverUserDetailsServerRoles = Nothing
    , _ulUploadProtocol = Nothing
    , _ulProject = pUlProject_
    , _ulBodySQLserverUserDetailsDisabled = Nothing
    , _ulAccessToken = Nothing
    , _ulUploadType = Nothing
    , _ulBodyKind = Nothing
    , _ulBodyPassword = Nothing
    , _ulBodyName = Nothing
    , _ulBodyProject = Nothing
    , _ulBodyHost = Nothing
    , _ulBodyType = Nothing
    , _ulBodyEtag = Nothing
    , _ulCallback = Nothing
    , _ulInstance = pUlInstance_
    }


-- | V1 error format.
ulXgafv :: Lens' UsersList (Maybe Xgafv)
ulXgafv = lens _ulXgafv (\ s a -> s{_ulXgafv = a})

-- | The name of the Cloud SQL instance. This does not include the project
-- ID. Can be omitted for *update* since it is already specified on the
-- URL.
ulBodyInstance :: Lens' UsersList (Maybe Text)
ulBodyInstance
  = lens _ulBodyInstance
      (\ s a -> s{_ulBodyInstance = a})

-- | The server roles for this user
ulBodySQLserverUserDetailsServerRoles :: Lens' UsersList [Text]
ulBodySQLserverUserDetailsServerRoles
  = lens _ulBodySQLserverUserDetailsServerRoles
      (\ s a ->
         s{_ulBodySQLserverUserDetailsServerRoles = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ulUploadProtocol :: Lens' UsersList (Maybe Text)
ulUploadProtocol
  = lens _ulUploadProtocol
      (\ s a -> s{_ulUploadProtocol = a})

-- | Project ID of the project that contains the instance.
ulProject :: Lens' UsersList Text
ulProject
  = lens _ulProject (\ s a -> s{_ulProject = a})

-- | If the user has been disabled
ulBodySQLserverUserDetailsDisabled :: Lens' UsersList (Maybe Bool)
ulBodySQLserverUserDetailsDisabled
  = lens _ulBodySQLserverUserDetailsDisabled
      (\ s a -> s{_ulBodySQLserverUserDetailsDisabled = a})

-- | OAuth access token.
ulAccessToken :: Lens' UsersList (Maybe Text)
ulAccessToken
  = lens _ulAccessToken
      (\ s a -> s{_ulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ulUploadType :: Lens' UsersList (Maybe Text)
ulUploadType
  = lens _ulUploadType (\ s a -> s{_ulUploadType = a})

-- | This is always *sql#user*.
ulBodyKind :: Lens' UsersList (Maybe Text)
ulBodyKind
  = lens _ulBodyKind (\ s a -> s{_ulBodyKind = a})

-- | The password for the user.
ulBodyPassword :: Lens' UsersList (Maybe Text)
ulBodyPassword
  = lens _ulBodyPassword
      (\ s a -> s{_ulBodyPassword = a})

-- | The name of the user in the Cloud SQL instance. Can be omitted for
-- *update* since it is already specified in the URL.
ulBodyName :: Lens' UsersList (Maybe Text)
ulBodyName
  = lens _ulBodyName (\ s a -> s{_ulBodyName = a})

-- | The project ID of the project containing the Cloud SQL database. The
-- Google apps domain is prefixed if applicable. Can be omitted for
-- *update* since it is already specified on the URL.
ulBodyProject :: Lens' UsersList (Maybe Text)
ulBodyProject
  = lens _ulBodyProject
      (\ s a -> s{_ulBodyProject = a})

-- | The host name from which the user can connect. For *insert* operations,
-- host defaults to an empty string. For *update* operations, host is
-- specified as part of the request URL. The host name cannot be updated
-- after insertion.
ulBodyHost :: Lens' UsersList (Maybe Text)
ulBodyHost
  = lens _ulBodyHost (\ s a -> s{_ulBodyHost = a})

-- | The user type. It determines the method to authenticate the user during
-- login. The default is the database\'s built-in user type.
ulBodyType :: Lens' UsersList (Maybe UsersListBodyType)
ulBodyType
  = lens _ulBodyType (\ s a -> s{_ulBodyType = a})

-- | This field is deprecated and will be removed from a future version of
-- the API.
ulBodyEtag :: Lens' UsersList (Maybe Text)
ulBodyEtag
  = lens _ulBodyEtag (\ s a -> s{_ulBodyEtag = a})

-- | JSONP
ulCallback :: Lens' UsersList (Maybe Text)
ulCallback
  = lens _ulCallback (\ s a -> s{_ulCallback = a})

-- | Database instance ID. This does not include the project ID.
ulInstance :: Lens' UsersList Text
ulInstance
  = lens _ulInstance (\ s a -> s{_ulInstance = a})

instance GoogleRequest UsersList where
        type Rs UsersList = UsersListResponse
        type Scopes UsersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient UsersList'{..}
          = go _ulProject _ulInstance _ulXgafv _ulBodyInstance
              (_ulBodySQLserverUserDetailsServerRoles ^. _Default)
              _ulUploadProtocol
              _ulBodySQLserverUserDetailsDisabled
              _ulAccessToken
              _ulUploadType
              _ulBodyKind
              _ulBodyPassword
              _ulBodyName
              _ulBodyProject
              _ulBodyHost
              _ulBodyType
              _ulBodyEtag
              _ulCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersListResource)
                      mempty
