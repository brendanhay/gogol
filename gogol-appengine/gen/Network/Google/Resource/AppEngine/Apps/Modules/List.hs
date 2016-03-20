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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the modules in the application.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @appengine.apps.modules.list@.
module Network.Google.Resource.AppEngine.Apps.Modules.List
    (
    -- * REST Resource
      AppsModulesListResource

    -- * Creating a Request
    , appsModulesList
    , AppsModulesList

    -- * Request Lenses
    , amlXgafv
    , amlUploadProtocol
    , amlPp
    , amlAccessToken
    , amlUploadType
    , amlBearerToken
    , amlAppsId
    , amlPageToken
    , amlPageSize
    , amlCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.modules.list@ method which the
-- 'AppsModulesList' request conforms to.
type AppsModulesListResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
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
                                 Get '[JSON] ListModulesResponse

-- | Lists all the modules in the application.
--
-- /See:/ 'appsModulesList' smart constructor.
data AppsModulesList = AppsModulesList
    { _amlXgafv          :: !(Maybe Text)
    , _amlUploadProtocol :: !(Maybe Text)
    , _amlPp             :: !Bool
    , _amlAccessToken    :: !(Maybe Text)
    , _amlUploadType     :: !(Maybe Text)
    , _amlBearerToken    :: !(Maybe Text)
    , _amlAppsId         :: !Text
    , _amlPageToken      :: !(Maybe Text)
    , _amlPageSize       :: !(Maybe (Textual Int32))
    , _amlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amlXgafv'
--
-- * 'amlUploadProtocol'
--
-- * 'amlPp'
--
-- * 'amlAccessToken'
--
-- * 'amlUploadType'
--
-- * 'amlBearerToken'
--
-- * 'amlAppsId'
--
-- * 'amlPageToken'
--
-- * 'amlPageSize'
--
-- * 'amlCallback'
appsModulesList
    :: Text -- ^ 'amlAppsId'
    -> AppsModulesList
appsModulesList pAmlAppsId_ =
    AppsModulesList
    { _amlXgafv = Nothing
    , _amlUploadProtocol = Nothing
    , _amlPp = True
    , _amlAccessToken = Nothing
    , _amlUploadType = Nothing
    , _amlBearerToken = Nothing
    , _amlAppsId = pAmlAppsId_
    , _amlPageToken = Nothing
    , _amlPageSize = Nothing
    , _amlCallback = Nothing
    }

-- | V1 error format.
amlXgafv :: Lens' AppsModulesList (Maybe Text)
amlXgafv = lens _amlXgafv (\ s a -> s{_amlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amlUploadProtocol :: Lens' AppsModulesList (Maybe Text)
amlUploadProtocol
  = lens _amlUploadProtocol
      (\ s a -> s{_amlUploadProtocol = a})

-- | Pretty-print response.
amlPp :: Lens' AppsModulesList Bool
amlPp = lens _amlPp (\ s a -> s{_amlPp = a})

-- | OAuth access token.
amlAccessToken :: Lens' AppsModulesList (Maybe Text)
amlAccessToken
  = lens _amlAccessToken
      (\ s a -> s{_amlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amlUploadType :: Lens' AppsModulesList (Maybe Text)
amlUploadType
  = lens _amlUploadType
      (\ s a -> s{_amlUploadType = a})

-- | OAuth bearer token.
amlBearerToken :: Lens' AppsModulesList (Maybe Text)
amlBearerToken
  = lens _amlBearerToken
      (\ s a -> s{_amlBearerToken = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\".
amlAppsId :: Lens' AppsModulesList Text
amlAppsId
  = lens _amlAppsId (\ s a -> s{_amlAppsId = a})

-- | Continuation token for fetching the next page of results.
amlPageToken :: Lens' AppsModulesList (Maybe Text)
amlPageToken
  = lens _amlPageToken (\ s a -> s{_amlPageToken = a})

-- | Maximum results to return per page.
amlPageSize :: Lens' AppsModulesList (Maybe Int32)
amlPageSize
  = lens _amlPageSize (\ s a -> s{_amlPageSize = a}) .
      mapping _Coerce

-- | JSONP
amlCallback :: Lens' AppsModulesList (Maybe Text)
amlCallback
  = lens _amlCallback (\ s a -> s{_amlCallback = a})

instance GoogleRequest AppsModulesList where
        type Rs AppsModulesList = ListModulesResponse
        requestClient AppsModulesList{..}
          = go _amlAppsId _amlXgafv _amlUploadProtocol
              (Just _amlPp)
              _amlAccessToken
              _amlUploadType
              _amlBearerToken
              _amlPageToken
              _amlPageSize
              _amlCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsModulesListResource)
                      mempty
