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
-- Module      : Network.Google.Resource.Directory.Roles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all the roles in a domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roles.list@.
module Network.Google.Resource.Directory.Roles.List
    (
    -- * REST Resource
      RolesListResource

    -- * Creating a Request
    , rolesList
    , RolesList

    -- * Request Lenses
    , rlXgafv
    , rlUploadProtocol
    , rlAccessToken
    , rlUploadType
    , rlCustomer
    , rlPageToken
    , rlMaxResults
    , rlCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roles.list@ method which the
-- 'RolesList' request conforms to.
type RolesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Roles

-- | Retrieves a paginated list of all the roles in a domain.
--
-- /See:/ 'rolesList' smart constructor.
data RolesList =
  RolesList'
    { _rlXgafv :: !(Maybe Xgafv)
    , _rlUploadProtocol :: !(Maybe Text)
    , _rlAccessToken :: !(Maybe Text)
    , _rlUploadType :: !(Maybe Text)
    , _rlCustomer :: !Text
    , _rlPageToken :: !(Maybe Text)
    , _rlMaxResults :: !(Maybe (Textual Int32))
    , _rlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RolesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlXgafv'
--
-- * 'rlUploadProtocol'
--
-- * 'rlAccessToken'
--
-- * 'rlUploadType'
--
-- * 'rlCustomer'
--
-- * 'rlPageToken'
--
-- * 'rlMaxResults'
--
-- * 'rlCallback'
rolesList
    :: Text -- ^ 'rlCustomer'
    -> RolesList
rolesList pRlCustomer_ =
  RolesList'
    { _rlXgafv = Nothing
    , _rlUploadProtocol = Nothing
    , _rlAccessToken = Nothing
    , _rlUploadType = Nothing
    , _rlCustomer = pRlCustomer_
    , _rlPageToken = Nothing
    , _rlMaxResults = Nothing
    , _rlCallback = Nothing
    }


-- | V1 error format.
rlXgafv :: Lens' RolesList (Maybe Xgafv)
rlXgafv = lens _rlXgafv (\ s a -> s{_rlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlUploadProtocol :: Lens' RolesList (Maybe Text)
rlUploadProtocol
  = lens _rlUploadProtocol
      (\ s a -> s{_rlUploadProtocol = a})

-- | OAuth access token.
rlAccessToken :: Lens' RolesList (Maybe Text)
rlAccessToken
  = lens _rlAccessToken
      (\ s a -> s{_rlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlUploadType :: Lens' RolesList (Maybe Text)
rlUploadType
  = lens _rlUploadType (\ s a -> s{_rlUploadType = a})

-- | Immutable ID of the Google Workspace account.
rlCustomer :: Lens' RolesList Text
rlCustomer
  = lens _rlCustomer (\ s a -> s{_rlCustomer = a})

-- | Token to specify the next page in the list.
rlPageToken :: Lens' RolesList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | Maximum number of results to return.
rlMaxResults :: Lens' RolesList (Maybe Int32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . mapping _Coerce

-- | JSONP
rlCallback :: Lens' RolesList (Maybe Text)
rlCallback
  = lens _rlCallback (\ s a -> s{_rlCallback = a})

instance GoogleRequest RolesList where
        type Rs RolesList = Roles
        type Scopes RolesList =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement",
               "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
        requestClient RolesList'{..}
          = go _rlCustomer _rlXgafv _rlUploadProtocol
              _rlAccessToken
              _rlUploadType
              _rlPageToken
              _rlMaxResults
              _rlCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesListResource)
                      mempty
