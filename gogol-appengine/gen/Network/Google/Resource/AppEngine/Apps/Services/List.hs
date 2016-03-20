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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the services in the application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.services.list@.
module Network.Google.Resource.AppEngine.Apps.Services.List
    (
    -- * REST Resource
      AppsServicesListResource

    -- * Creating a Request
    , appsServicesList
    , AppsServicesList

    -- * Request Lenses
    , aslXgafv
    , aslUploadProtocol
    , aslPp
    , aslAccessToken
    , aslUploadType
    , aslBearerToken
    , aslAppsId
    , aslPageToken
    , aslPageSize
    , aslCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.list@ method which the
-- 'AppsServicesList' request conforms to.
type AppsServicesListResource =
     "v1beta5" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListServicesResponse

-- | Lists all the services in the application.
--
-- /See:/ 'appsServicesList' smart constructor.
data AppsServicesList = AppsServicesList
    { _aslXgafv          :: !(Maybe Text)
    , _aslUploadProtocol :: !(Maybe Text)
    , _aslPp             :: !Bool
    , _aslAccessToken    :: !(Maybe Text)
    , _aslUploadType     :: !(Maybe Text)
    , _aslBearerToken    :: !(Maybe Text)
    , _aslAppsId         :: !Text
    , _aslPageToken      :: !(Maybe Text)
    , _aslPageSize       :: !(Maybe (Textual Int32))
    , _aslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslXgafv'
--
-- * 'aslUploadProtocol'
--
-- * 'aslPp'
--
-- * 'aslAccessToken'
--
-- * 'aslUploadType'
--
-- * 'aslBearerToken'
--
-- * 'aslAppsId'
--
-- * 'aslPageToken'
--
-- * 'aslPageSize'
--
-- * 'aslCallback'
appsServicesList
    :: Text -- ^ 'aslAppsId'
    -> AppsServicesList
appsServicesList pAslAppsId_ =
    AppsServicesList
    { _aslXgafv = Nothing
    , _aslUploadProtocol = Nothing
    , _aslPp = True
    , _aslAccessToken = Nothing
    , _aslUploadType = Nothing
    , _aslBearerToken = Nothing
    , _aslAppsId = pAslAppsId_
    , _aslPageToken = Nothing
    , _aslPageSize = Nothing
    , _aslCallback = Nothing
    }

-- | V1 error format.
aslXgafv :: Lens' AppsServicesList (Maybe Text)
aslXgafv = lens _aslXgafv (\ s a -> s{_aslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aslUploadProtocol :: Lens' AppsServicesList (Maybe Text)
aslUploadProtocol
  = lens _aslUploadProtocol
      (\ s a -> s{_aslUploadProtocol = a})

-- | Pretty-print response.
aslPp :: Lens' AppsServicesList Bool
aslPp = lens _aslPp (\ s a -> s{_aslPp = a})

-- | OAuth access token.
aslAccessToken :: Lens' AppsServicesList (Maybe Text)
aslAccessToken
  = lens _aslAccessToken
      (\ s a -> s{_aslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aslUploadType :: Lens' AppsServicesList (Maybe Text)
aslUploadType
  = lens _aslUploadType
      (\ s a -> s{_aslUploadType = a})

-- | OAuth bearer token.
aslBearerToken :: Lens' AppsServicesList (Maybe Text)
aslBearerToken
  = lens _aslBearerToken
      (\ s a -> s{_aslBearerToken = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\".
aslAppsId :: Lens' AppsServicesList Text
aslAppsId
  = lens _aslAppsId (\ s a -> s{_aslAppsId = a})

-- | Continuation token for fetching the next page of results.
aslPageToken :: Lens' AppsServicesList (Maybe Text)
aslPageToken
  = lens _aslPageToken (\ s a -> s{_aslPageToken = a})

-- | Maximum results to return per page.
aslPageSize :: Lens' AppsServicesList (Maybe Int32)
aslPageSize
  = lens _aslPageSize (\ s a -> s{_aslPageSize = a}) .
      mapping _Coerce

-- | JSONP
aslCallback :: Lens' AppsServicesList (Maybe Text)
aslCallback
  = lens _aslCallback (\ s a -> s{_aslCallback = a})

instance GoogleRequest AppsServicesList where
        type Rs AppsServicesList = ListServicesResponse
        type Scopes AppsServicesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesList{..}
          = go _aslAppsId _aslXgafv _aslUploadProtocol
              (Just _aslPp)
              _aslAccessToken
              _aslUploadType
              _aslBearerToken
              _aslPageToken
              _aslPageSize
              _aslCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesListResource)
                      mempty
