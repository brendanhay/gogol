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
-- Module      : Network.Google.Resource.SQL.Flags.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all available database flags for Cloud SQL instances.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.flags.list@.
module Network.Google.Resource.SQL.Flags.List
    (
    -- * REST Resource
      FlagsListResource

    -- * Creating a Request
    , flagsList
    , FlagsList

    -- * Request Lenses
    , flDatabaseVersion
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.flags.list@ method which the
-- 'FlagsList' request conforms to.
type FlagsListResource =
     "sql" :>
       "v1beta4" :>
         "flags" :>
           QueryParam "databaseVersion" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] FlagsListResponse

-- | List all available database flags for Cloud SQL instances.
--
-- /See:/ 'flagsList' smart constructor.
newtype FlagsList =
  FlagsList'
    { _flDatabaseVersion :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FlagsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flDatabaseVersion'
flagsList
    :: FlagsList
flagsList = FlagsList' {_flDatabaseVersion = Nothing}

-- | Database type and version you want to retrieve flags for. By default,
-- this method returns flags for all database types and versions.
flDatabaseVersion :: Lens' FlagsList (Maybe Text)
flDatabaseVersion
  = lens _flDatabaseVersion
      (\ s a -> s{_flDatabaseVersion = a})

instance GoogleRequest FlagsList where
        type Rs FlagsList = FlagsListResponse
        type Scopes FlagsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient FlagsList'{..}
          = go _flDatabaseVersion (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy FlagsListResource)
                      mempty
