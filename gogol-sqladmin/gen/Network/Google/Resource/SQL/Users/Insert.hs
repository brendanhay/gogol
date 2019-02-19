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
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.users.insert@.
module Network.Google.Resource.SQL.Users.Insert
    (
    -- * REST Resource
      UsersInsertResource

    -- * Creating a Request
    , usersInsert
    , UsersInsert

    -- * Request Lenses
    , uiProject
    , uiPayload
    , uiInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.users.insert@ method which the
-- 'UsersInsert' request conforms to.
type UsersInsertResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "users" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] User :> Post '[JSON] Operation

-- | Creates a new user in a Cloud SQL instance.
--
-- /See:/ 'usersInsert' smart constructor.
data UsersInsert =
  UsersInsert'
    { _uiProject  :: !Text
    , _uiPayload  :: !User
    , _uiInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiProject'
--
-- * 'uiPayload'
--
-- * 'uiInstance'
usersInsert
    :: Text -- ^ 'uiProject'
    -> User -- ^ 'uiPayload'
    -> Text -- ^ 'uiInstance'
    -> UsersInsert
usersInsert pUiProject_ pUiPayload_ pUiInstance_ =
  UsersInsert'
    { _uiProject = pUiProject_
    , _uiPayload = pUiPayload_
    , _uiInstance = pUiInstance_
    }

-- | Project ID of the project that contains the instance.
uiProject :: Lens' UsersInsert Text
uiProject
  = lens _uiProject (\ s a -> s{_uiProject = a})

-- | Multipart request metadata.
uiPayload :: Lens' UsersInsert User
uiPayload
  = lens _uiPayload (\ s a -> s{_uiPayload = a})

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
          = go _uiProject _uiInstance (Just AltJSON) _uiPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersInsertResource)
                      mempty
