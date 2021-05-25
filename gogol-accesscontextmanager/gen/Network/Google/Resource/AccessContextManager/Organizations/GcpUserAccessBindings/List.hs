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
-- Module      : Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GcpUserAccessBindings for a Google Cloud organization.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.list@.
module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.List
    (
    -- * REST Resource
      OrganizationsGcpUserAccessBindingsListResource

    -- * Creating a Request
    , organizationsGcpUserAccessBindingsList
    , OrganizationsGcpUserAccessBindingsList

    -- * Request Lenses
    , oguablParent
    , oguablXgafv
    , oguablUploadProtocol
    , oguablAccessToken
    , oguablUploadType
    , oguablPageToken
    , oguablPageSize
    , oguablCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.list@ method which the
-- 'OrganizationsGcpUserAccessBindingsList' request conforms to.
type OrganizationsGcpUserAccessBindingsListResource =
     "v1" :>
       Capture "parent" Text :>
         "gcpUserAccessBindings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListGcpUserAccessBindingsResponse

-- | Lists all GcpUserAccessBindings for a Google Cloud organization.
--
-- /See:/ 'organizationsGcpUserAccessBindingsList' smart constructor.
data OrganizationsGcpUserAccessBindingsList =
  OrganizationsGcpUserAccessBindingsList'
    { _oguablParent :: !Text
    , _oguablXgafv :: !(Maybe Xgafv)
    , _oguablUploadProtocol :: !(Maybe Text)
    , _oguablAccessToken :: !(Maybe Text)
    , _oguablUploadType :: !(Maybe Text)
    , _oguablPageToken :: !(Maybe Text)
    , _oguablPageSize :: !(Maybe (Textual Int32))
    , _oguablCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsGcpUserAccessBindingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oguablParent'
--
-- * 'oguablXgafv'
--
-- * 'oguablUploadProtocol'
--
-- * 'oguablAccessToken'
--
-- * 'oguablUploadType'
--
-- * 'oguablPageToken'
--
-- * 'oguablPageSize'
--
-- * 'oguablCallback'
organizationsGcpUserAccessBindingsList
    :: Text -- ^ 'oguablParent'
    -> OrganizationsGcpUserAccessBindingsList
organizationsGcpUserAccessBindingsList pOguablParent_ =
  OrganizationsGcpUserAccessBindingsList'
    { _oguablParent = pOguablParent_
    , _oguablXgafv = Nothing
    , _oguablUploadProtocol = Nothing
    , _oguablAccessToken = Nothing
    , _oguablUploadType = Nothing
    , _oguablPageToken = Nothing
    , _oguablPageSize = Nothing
    , _oguablCallback = Nothing
    }


-- | Required. Example: \"organizations\/256\"
oguablParent :: Lens' OrganizationsGcpUserAccessBindingsList Text
oguablParent
  = lens _oguablParent (\ s a -> s{_oguablParent = a})

-- | V1 error format.
oguablXgafv :: Lens' OrganizationsGcpUserAccessBindingsList (Maybe Xgafv)
oguablXgafv
  = lens _oguablXgafv (\ s a -> s{_oguablXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oguablUploadProtocol :: Lens' OrganizationsGcpUserAccessBindingsList (Maybe Text)
oguablUploadProtocol
  = lens _oguablUploadProtocol
      (\ s a -> s{_oguablUploadProtocol = a})

-- | OAuth access token.
oguablAccessToken :: Lens' OrganizationsGcpUserAccessBindingsList (Maybe Text)
oguablAccessToken
  = lens _oguablAccessToken
      (\ s a -> s{_oguablAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oguablUploadType :: Lens' OrganizationsGcpUserAccessBindingsList (Maybe Text)
oguablUploadType
  = lens _oguablUploadType
      (\ s a -> s{_oguablUploadType = a})

-- | Optional. If left blank, returns the first page. To enumerate all items,
-- use the next_page_token from your previous list operation.
oguablPageToken :: Lens' OrganizationsGcpUserAccessBindingsList (Maybe Text)
oguablPageToken
  = lens _oguablPageToken
      (\ s a -> s{_oguablPageToken = a})

-- | Optional. Maximum number of items to return. The server may return fewer
-- items. If left blank, the server may return any number of items.
oguablPageSize :: Lens' OrganizationsGcpUserAccessBindingsList (Maybe Int32)
oguablPageSize
  = lens _oguablPageSize
      (\ s a -> s{_oguablPageSize = a})
      . mapping _Coerce

-- | JSONP
oguablCallback :: Lens' OrganizationsGcpUserAccessBindingsList (Maybe Text)
oguablCallback
  = lens _oguablCallback
      (\ s a -> s{_oguablCallback = a})

instance GoogleRequest
           OrganizationsGcpUserAccessBindingsList
         where
        type Rs OrganizationsGcpUserAccessBindingsList =
             ListGcpUserAccessBindingsResponse
        type Scopes OrganizationsGcpUserAccessBindingsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsGcpUserAccessBindingsList'{..}
          = go _oguablParent _oguablXgafv _oguablUploadProtocol
              _oguablAccessToken
              _oguablUploadType
              _oguablPageToken
              _oguablPageSize
              _oguablCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsGcpUserAccessBindingsListResource)
                      mempty
