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
-- Module      : Network.Google.Resource.SQL.Users.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user from a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.users.delete@.
module Network.Google.Resource.SQL.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete
    , UsersDelete

    -- * Request Lenses
    , udXgafv
    , udUploadProtocol
    , udProject
    , udAccessToken
    , udUploadType
    , udName
    , udHost
    , udCallback
    , udInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.users.delete@ method which the
-- 'UsersDelete' request conforms to.
type UsersDeleteResource =
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
                                 Delete '[JSON] Operation

-- | Deletes a user from a Cloud SQL instance.
--
-- /See:/ 'usersDelete' smart constructor.
data UsersDelete =
  UsersDelete'
    { _udXgafv :: !(Maybe Xgafv)
    , _udUploadProtocol :: !(Maybe Text)
    , _udProject :: !Text
    , _udAccessToken :: !(Maybe Text)
    , _udUploadType :: !(Maybe Text)
    , _udName :: !(Maybe Text)
    , _udHost :: !(Maybe Text)
    , _udCallback :: !(Maybe Text)
    , _udInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udXgafv'
--
-- * 'udUploadProtocol'
--
-- * 'udProject'
--
-- * 'udAccessToken'
--
-- * 'udUploadType'
--
-- * 'udName'
--
-- * 'udHost'
--
-- * 'udCallback'
--
-- * 'udInstance'
usersDelete
    :: Text -- ^ 'udProject'
    -> Text -- ^ 'udInstance'
    -> UsersDelete
usersDelete pUdProject_ pUdInstance_ =
  UsersDelete'
    { _udXgafv = Nothing
    , _udUploadProtocol = Nothing
    , _udProject = pUdProject_
    , _udAccessToken = Nothing
    , _udUploadType = Nothing
    , _udName = Nothing
    , _udHost = Nothing
    , _udCallback = Nothing
    , _udInstance = pUdInstance_
    }


-- | V1 error format.
udXgafv :: Lens' UsersDelete (Maybe Xgafv)
udXgafv = lens _udXgafv (\ s a -> s{_udXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udUploadProtocol :: Lens' UsersDelete (Maybe Text)
udUploadProtocol
  = lens _udUploadProtocol
      (\ s a -> s{_udUploadProtocol = a})

-- | Project ID of the project that contains the instance.
udProject :: Lens' UsersDelete Text
udProject
  = lens _udProject (\ s a -> s{_udProject = a})

-- | OAuth access token.
udAccessToken :: Lens' UsersDelete (Maybe Text)
udAccessToken
  = lens _udAccessToken
      (\ s a -> s{_udAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udUploadType :: Lens' UsersDelete (Maybe Text)
udUploadType
  = lens _udUploadType (\ s a -> s{_udUploadType = a})

-- | Name of the user in the instance.
udName :: Lens' UsersDelete (Maybe Text)
udName = lens _udName (\ s a -> s{_udName = a})

-- | Host of the user in the instance.
udHost :: Lens' UsersDelete (Maybe Text)
udHost = lens _udHost (\ s a -> s{_udHost = a})

-- | JSONP
udCallback :: Lens' UsersDelete (Maybe Text)
udCallback
  = lens _udCallback (\ s a -> s{_udCallback = a})

-- | Database instance ID. This does not include the project ID.
udInstance :: Lens' UsersDelete Text
udInstance
  = lens _udInstance (\ s a -> s{_udInstance = a})

instance GoogleRequest UsersDelete where
        type Rs UsersDelete = Operation
        type Scopes UsersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient UsersDelete'{..}
          = go _udProject _udInstance _udXgafv
              _udUploadProtocol
              _udAccessToken
              _udUploadType
              _udName
              _udHost
              _udCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersDeleteResource)
                      mempty
