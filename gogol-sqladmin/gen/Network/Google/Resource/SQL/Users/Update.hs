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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing user in a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.users.update@.
module Network.Google.Resource.SQL.Users.Update
    (
    -- * REST Resource
      UsersUpdateResource

    -- * Creating a Request
    , usersUpdate
    , UsersUpdate

    -- * Request Lenses
    , uuProject
    , uuPayload
    , uuName
    , uuHost
    , uuInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.users.update@ method which the
-- 'UsersUpdate' request conforms to.
type UsersUpdateResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "users" :>
                   QueryParam "host" Text :>
                     QueryParam "name" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] User :> Put '[JSON] Operation

-- | Updates an existing user in a Cloud SQL instance.
--
-- /See:/ 'usersUpdate' smart constructor.
data UsersUpdate = UsersUpdate
    { _uuProject  :: !Text
    , _uuPayload  :: !User
    , _uuName     :: !Text
    , _uuHost     :: !Text
    , _uuInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuProject'
--
-- * 'uuPayload'
--
-- * 'uuName'
--
-- * 'uuHost'
--
-- * 'uuInstance'
usersUpdate
    :: Text -- ^ 'uuProject'
    -> User -- ^ 'uuPayload'
    -> Text -- ^ 'uuName'
    -> Text -- ^ 'uuHost'
    -> Text -- ^ 'uuInstance'
    -> UsersUpdate
usersUpdate pUuProject_ pUuPayload_ pUuName_ pUuHost_ pUuInstance_ =
    UsersUpdate
    { _uuProject = pUuProject_
    , _uuPayload = pUuPayload_
    , _uuName = pUuName_
    , _uuHost = pUuHost_
    , _uuInstance = pUuInstance_
    }

-- | Project ID of the project that contains the instance.
uuProject :: Lens' UsersUpdate Text
uuProject
  = lens _uuProject (\ s a -> s{_uuProject = a})

-- | Multipart request metadata.
uuPayload :: Lens' UsersUpdate User
uuPayload
  = lens _uuPayload (\ s a -> s{_uuPayload = a})

-- | Name of the user in the instance.
uuName :: Lens' UsersUpdate Text
uuName = lens _uuName (\ s a -> s{_uuName = a})

-- | Host of the user in the instance.
uuHost :: Lens' UsersUpdate Text
uuHost = lens _uuHost (\ s a -> s{_uuHost = a})

-- | Database instance ID. This does not include the project ID.
uuInstance :: Lens' UsersUpdate Text
uuInstance
  = lens _uuInstance (\ s a -> s{_uuInstance = a})

instance GoogleRequest UsersUpdate where
        type Rs UsersUpdate = Operation
        requestClient UsersUpdate{..}
          = go _uuProject _uuInstance (Just _uuHost)
              (Just _uuName)
              (Just AltJSON)
              _uuPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersUpdateResource)
                      mempty
