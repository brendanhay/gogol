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
-- Module      : Network.Google.Resource.Directory.Privileges.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all privileges for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.privileges.list@.
module Network.Google.Resource.Directory.Privileges.List
    (
    -- * REST Resource
      PrivilegesListResource

    -- * Creating a Request
    , privilegesList
    , PrivilegesList

    -- * Request Lenses
    , plXgafv
    , plUploadProtocol
    , plAccessToken
    , plUploadType
    , plCustomer
    , plCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.privileges.list@ method which the
-- 'PrivilegesList' request conforms to.
type PrivilegesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 "ALL" :>
                   "privileges" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] Privileges

-- | Retrieves a paginated list of all privileges for a customer.
--
-- /See:/ 'privilegesList' smart constructor.
data PrivilegesList =
  PrivilegesList'
    { _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plAccessToken :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plCustomer :: !Text
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrivilegesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plCustomer'
--
-- * 'plCallback'
privilegesList
    :: Text -- ^ 'plCustomer'
    -> PrivilegesList
privilegesList pPlCustomer_ =
  PrivilegesList'
    { _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plCustomer = pPlCustomer_
    , _plCallback = Nothing
    }


-- | V1 error format.
plXgafv :: Lens' PrivilegesList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' PrivilegesList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | OAuth access token.
plAccessToken :: Lens' PrivilegesList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' PrivilegesList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | Immutable ID of the Google Workspace account.
plCustomer :: Lens' PrivilegesList Text
plCustomer
  = lens _plCustomer (\ s a -> s{_plCustomer = a})

-- | JSONP
plCallback :: Lens' PrivilegesList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest PrivilegesList where
        type Rs PrivilegesList = Privileges
        type Scopes PrivilegesList =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement",
               "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
        requestClient PrivilegesList'{..}
          = go _plCustomer _plXgafv _plUploadProtocol
              _plAccessToken
              _plUploadType
              _plCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy PrivilegesListResource)
                      mempty
