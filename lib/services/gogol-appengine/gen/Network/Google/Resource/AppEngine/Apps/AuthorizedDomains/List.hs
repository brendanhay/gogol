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
-- Module      : Network.Google.Resource.AppEngine.Apps.AuthorizedDomains.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all domains the user is authorized to administer.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedDomains.list@.
module Network.Google.Resource.AppEngine.Apps.AuthorizedDomains.List
    (
    -- * REST Resource
      AppsAuthorizedDomainsListResource

    -- * Creating a Request
    , appsAuthorizedDomainsList
    , AppsAuthorizedDomainsList

    -- * Request Lenses
    , aadlXgafv
    , aadlUploadProtocol
    , aadlAccessToken
    , aadlUploadType
    , aadlAppsId
    , aadlPageToken
    , aadlPageSize
    , aadlCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.authorizedDomains.list@ method which the
-- 'AppsAuthorizedDomainsList' request conforms to.
type AppsAuthorizedDomainsListResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "authorizedDomains" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListAuthorizedDomainsResponse

-- | Lists all domains the user is authorized to administer.
--
-- /See:/ 'appsAuthorizedDomainsList' smart constructor.
data AppsAuthorizedDomainsList =
  AppsAuthorizedDomainsList'
    { _aadlXgafv :: !(Maybe Xgafv)
    , _aadlUploadProtocol :: !(Maybe Text)
    , _aadlAccessToken :: !(Maybe Text)
    , _aadlUploadType :: !(Maybe Text)
    , _aadlAppsId :: !Text
    , _aadlPageToken :: !(Maybe Text)
    , _aadlPageSize :: !(Maybe (Textual Int32))
    , _aadlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsAuthorizedDomainsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aadlXgafv'
--
-- * 'aadlUploadProtocol'
--
-- * 'aadlAccessToken'
--
-- * 'aadlUploadType'
--
-- * 'aadlAppsId'
--
-- * 'aadlPageToken'
--
-- * 'aadlPageSize'
--
-- * 'aadlCallback'
appsAuthorizedDomainsList
    :: Text -- ^ 'aadlAppsId'
    -> AppsAuthorizedDomainsList
appsAuthorizedDomainsList pAadlAppsId_ =
  AppsAuthorizedDomainsList'
    { _aadlXgafv = Nothing
    , _aadlUploadProtocol = Nothing
    , _aadlAccessToken = Nothing
    , _aadlUploadType = Nothing
    , _aadlAppsId = pAadlAppsId_
    , _aadlPageToken = Nothing
    , _aadlPageSize = Nothing
    , _aadlCallback = Nothing
    }


-- | V1 error format.
aadlXgafv :: Lens' AppsAuthorizedDomainsList (Maybe Xgafv)
aadlXgafv
  = lens _aadlXgafv (\ s a -> s{_aadlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aadlUploadProtocol :: Lens' AppsAuthorizedDomainsList (Maybe Text)
aadlUploadProtocol
  = lens _aadlUploadProtocol
      (\ s a -> s{_aadlUploadProtocol = a})

-- | OAuth access token.
aadlAccessToken :: Lens' AppsAuthorizedDomainsList (Maybe Text)
aadlAccessToken
  = lens _aadlAccessToken
      (\ s a -> s{_aadlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aadlUploadType :: Lens' AppsAuthorizedDomainsList (Maybe Text)
aadlUploadType
  = lens _aadlUploadType
      (\ s a -> s{_aadlUploadType = a})

-- | Part of \`parent\`. Name of the parent Application resource. Example:
-- apps\/myapp.
aadlAppsId :: Lens' AppsAuthorizedDomainsList Text
aadlAppsId
  = lens _aadlAppsId (\ s a -> s{_aadlAppsId = a})

-- | Continuation token for fetching the next page of results.
aadlPageToken :: Lens' AppsAuthorizedDomainsList (Maybe Text)
aadlPageToken
  = lens _aadlPageToken
      (\ s a -> s{_aadlPageToken = a})

-- | Maximum results to return per page.
aadlPageSize :: Lens' AppsAuthorizedDomainsList (Maybe Int32)
aadlPageSize
  = lens _aadlPageSize (\ s a -> s{_aadlPageSize = a})
      . mapping _Coerce

-- | JSONP
aadlCallback :: Lens' AppsAuthorizedDomainsList (Maybe Text)
aadlCallback
  = lens _aadlCallback (\ s a -> s{_aadlCallback = a})

instance GoogleRequest AppsAuthorizedDomainsList
         where
        type Rs AppsAuthorizedDomainsList =
             ListAuthorizedDomainsResponse
        type Scopes AppsAuthorizedDomainsList =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsAuthorizedDomainsList'{..}
          = go _aadlAppsId _aadlXgafv _aadlUploadProtocol
              _aadlAccessToken
              _aadlUploadType
              _aadlPageToken
              _aadlPageSize
              _aadlCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsAuthorizedDomainsListResource)
                      mempty
