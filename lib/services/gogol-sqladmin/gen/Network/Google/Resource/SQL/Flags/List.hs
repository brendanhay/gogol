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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all available database flags for Cloud SQL instances.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.flags.list@.
module Network.Google.Resource.SQL.Flags.List
    (
    -- * REST Resource
      FlagsListResource

    -- * Creating a Request
    , flagsList
    , FlagsList

    -- * Request Lenses
    , flXgafv
    , flDatabaseVersion
    , flUploadProtocol
    , flAccessToken
    , flUploadType
    , flCallback
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.flags.list@ method which the
-- 'FlagsList' request conforms to.
type FlagsListResource =
     "v1" :>
       "flags" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "databaseVersion" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] FlagsListResponse

-- | Lists all available database flags for Cloud SQL instances.
--
-- /See:/ 'flagsList' smart constructor.
data FlagsList =
  FlagsList'
    { _flXgafv :: !(Maybe Xgafv)
    , _flDatabaseVersion :: !(Maybe Text)
    , _flUploadProtocol :: !(Maybe Text)
    , _flAccessToken :: !(Maybe Text)
    , _flUploadType :: !(Maybe Text)
    , _flCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FlagsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flXgafv'
--
-- * 'flDatabaseVersion'
--
-- * 'flUploadProtocol'
--
-- * 'flAccessToken'
--
-- * 'flUploadType'
--
-- * 'flCallback'
flagsList
    :: FlagsList
flagsList =
  FlagsList'
    { _flXgafv = Nothing
    , _flDatabaseVersion = Nothing
    , _flUploadProtocol = Nothing
    , _flAccessToken = Nothing
    , _flUploadType = Nothing
    , _flCallback = Nothing
    }


-- | V1 error format.
flXgafv :: Lens' FlagsList (Maybe Xgafv)
flXgafv = lens _flXgafv (\ s a -> s{_flXgafv = a})

-- | Database type and version you want to retrieve flags for. By default,
-- this method returns flags for all database types and versions.
flDatabaseVersion :: Lens' FlagsList (Maybe Text)
flDatabaseVersion
  = lens _flDatabaseVersion
      (\ s a -> s{_flDatabaseVersion = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flUploadProtocol :: Lens' FlagsList (Maybe Text)
flUploadProtocol
  = lens _flUploadProtocol
      (\ s a -> s{_flUploadProtocol = a})

-- | OAuth access token.
flAccessToken :: Lens' FlagsList (Maybe Text)
flAccessToken
  = lens _flAccessToken
      (\ s a -> s{_flAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flUploadType :: Lens' FlagsList (Maybe Text)
flUploadType
  = lens _flUploadType (\ s a -> s{_flUploadType = a})

-- | JSONP
flCallback :: Lens' FlagsList (Maybe Text)
flCallback
  = lens _flCallback (\ s a -> s{_flCallback = a})

instance GoogleRequest FlagsList where
        type Rs FlagsList = FlagsListResponse
        type Scopes FlagsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient FlagsList'{..}
          = go _flXgafv _flDatabaseVersion _flUploadProtocol
              _flAccessToken
              _flUploadType
              _flCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy FlagsListResource)
                      mempty
