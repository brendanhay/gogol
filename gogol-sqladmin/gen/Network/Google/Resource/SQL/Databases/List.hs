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
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.databases.list@.
module Network.Google.Resource.SQL.Databases.List
    (
    -- * REST Resource
      DatabasesListResource

    -- * Creating a Request
    , databasesList
    , DatabasesList

    -- * Request Lenses
    , dlProject
    , dlInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.list@ method which the
-- 'DatabasesList' request conforms to.
type DatabasesListResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "databases" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] DatabasesListResponse

-- | Lists databases in the specified Cloud SQL instance.
--
-- /See:/ 'databasesList' smart constructor.
data DatabasesList = DatabasesList'
    { _dlProject  :: !Text
    , _dlInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlProject'
--
-- * 'dlInstance'
databasesList
    :: Text -- ^ 'dlProject'
    -> Text -- ^ 'dlInstance'
    -> DatabasesList
databasesList pDlProject_ pDlInstance_ =
    DatabasesList'
    { _dlProject = pDlProject_
    , _dlInstance = pDlInstance_
    }

-- | Project ID of the project that contains the instance.
dlProject :: Lens' DatabasesList Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

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
          = go _dlProject _dlInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy DatabasesListResource)
                      mempty
