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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all sources belonging to an organization.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.list@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.List
    (
    -- * REST Resource
      OrganizationsSourcesListResource

    -- * Creating a Request
    , organizationsSourcesList
    , OrganizationsSourcesList

    -- * Request Lenses
    , oslParent
    , oslXgafv
    , oslUploadProtocol
    , oslAccessToken
    , oslUploadType
    , oslPageToken
    , oslPageSize
    , oslCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.list@ method which the
-- 'OrganizationsSourcesList' request conforms to.
type OrganizationsSourcesListResource =
     "v1p1beta1" :>
       Capture "parent" Text :>
         "sources" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSourcesResponse

-- | Lists all sources belonging to an organization.
--
-- /See:/ 'organizationsSourcesList' smart constructor.
data OrganizationsSourcesList =
  OrganizationsSourcesList'
    { _oslParent :: !Text
    , _oslXgafv :: !(Maybe Xgafv)
    , _oslUploadProtocol :: !(Maybe Text)
    , _oslAccessToken :: !(Maybe Text)
    , _oslUploadType :: !(Maybe Text)
    , _oslPageToken :: !(Maybe Text)
    , _oslPageSize :: !(Maybe (Textual Int32))
    , _oslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslParent'
--
-- * 'oslXgafv'
--
-- * 'oslUploadProtocol'
--
-- * 'oslAccessToken'
--
-- * 'oslUploadType'
--
-- * 'oslPageToken'
--
-- * 'oslPageSize'
--
-- * 'oslCallback'
organizationsSourcesList
    :: Text -- ^ 'oslParent'
    -> OrganizationsSourcesList
organizationsSourcesList pOslParent_ =
  OrganizationsSourcesList'
    { _oslParent = pOslParent_
    , _oslXgafv = Nothing
    , _oslUploadProtocol = Nothing
    , _oslAccessToken = Nothing
    , _oslUploadType = Nothing
    , _oslPageToken = Nothing
    , _oslPageSize = Nothing
    , _oslCallback = Nothing
    }


-- | Required. Resource name of the parent of sources to list. Its format
-- should be \"organizations\/[organization_id]\".
oslParent :: Lens' OrganizationsSourcesList Text
oslParent
  = lens _oslParent (\ s a -> s{_oslParent = a})

-- | V1 error format.
oslXgafv :: Lens' OrganizationsSourcesList (Maybe Xgafv)
oslXgafv = lens _oslXgafv (\ s a -> s{_oslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oslUploadProtocol :: Lens' OrganizationsSourcesList (Maybe Text)
oslUploadProtocol
  = lens _oslUploadProtocol
      (\ s a -> s{_oslUploadProtocol = a})

-- | OAuth access token.
oslAccessToken :: Lens' OrganizationsSourcesList (Maybe Text)
oslAccessToken
  = lens _oslAccessToken
      (\ s a -> s{_oslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oslUploadType :: Lens' OrganizationsSourcesList (Maybe Text)
oslUploadType
  = lens _oslUploadType
      (\ s a -> s{_oslUploadType = a})

-- | The value returned by the last \`ListSourcesResponse\`; indicates that
-- this is a continuation of a prior \`ListSources\` call, and that the
-- system should return the next page of data.
oslPageToken :: Lens' OrganizationsSourcesList (Maybe Text)
oslPageToken
  = lens _oslPageToken (\ s a -> s{_oslPageToken = a})

-- | The maximum number of results to return in a single response. Default is
-- 10, minimum is 1, maximum is 1000.
oslPageSize :: Lens' OrganizationsSourcesList (Maybe Int32)
oslPageSize
  = lens _oslPageSize (\ s a -> s{_oslPageSize = a}) .
      mapping _Coerce

-- | JSONP
oslCallback :: Lens' OrganizationsSourcesList (Maybe Text)
oslCallback
  = lens _oslCallback (\ s a -> s{_oslCallback = a})

instance GoogleRequest OrganizationsSourcesList where
        type Rs OrganizationsSourcesList =
             ListSourcesResponse
        type Scopes OrganizationsSourcesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesList'{..}
          = go _oslParent _oslXgafv _oslUploadProtocol
              _oslAccessToken
              _oslUploadType
              _oslPageToken
              _oslPageSize
              _oslCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSourcesListResource)
                      mempty
