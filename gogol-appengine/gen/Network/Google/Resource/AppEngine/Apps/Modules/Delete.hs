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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a module and all enclosed versions.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsModulesDelete@.
module Network.Google.Resource.AppEngine.Apps.Modules.Delete
    (
    -- * REST Resource
      AppsModulesDeleteResource

    -- * Creating a Request
    , appsModulesDelete'
    , AppsModulesDelete'

    -- * Request Lenses
    , amdXgafv
    , amdUploadProtocol
    , amdPp
    , amdAccessToken
    , amdUploadType
    , amdModulesId
    , amdBearerToken
    , amdAppsId
    , amdCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsModulesDelete@ method which the
-- 'AppsModulesDelete'' request conforms to.
type AppsModulesDeleteResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] Operation

-- | Deletes a module and all enclosed versions.
--
-- /See:/ 'appsModulesDelete'' smart constructor.
data AppsModulesDelete' = AppsModulesDelete'
    { _amdXgafv          :: !(Maybe Text)
    , _amdUploadProtocol :: !(Maybe Text)
    , _amdPp             :: !Bool
    , _amdAccessToken    :: !(Maybe Text)
    , _amdUploadType     :: !(Maybe Text)
    , _amdModulesId      :: !Text
    , _amdBearerToken    :: !(Maybe Text)
    , _amdAppsId         :: !Text
    , _amdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdXgafv'
--
-- * 'amdUploadProtocol'
--
-- * 'amdPp'
--
-- * 'amdAccessToken'
--
-- * 'amdUploadType'
--
-- * 'amdModulesId'
--
-- * 'amdBearerToken'
--
-- * 'amdAppsId'
--
-- * 'amdCallback'
appsModulesDelete'
    :: Text -- ^ 'modulesId'
    -> Text -- ^ 'appsId'
    -> AppsModulesDelete'
appsModulesDelete' pAmdModulesId_ pAmdAppsId_ =
    AppsModulesDelete'
    { _amdXgafv = Nothing
    , _amdUploadProtocol = Nothing
    , _amdPp = True
    , _amdAccessToken = Nothing
    , _amdUploadType = Nothing
    , _amdModulesId = pAmdModulesId_
    , _amdBearerToken = Nothing
    , _amdAppsId = pAmdAppsId_
    , _amdCallback = Nothing
    }

-- | V1 error format.
amdXgafv :: Lens' AppsModulesDelete' (Maybe Text)
amdXgafv = lens _amdXgafv (\ s a -> s{_amdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amdUploadProtocol :: Lens' AppsModulesDelete' (Maybe Text)
amdUploadProtocol
  = lens _amdUploadProtocol
      (\ s a -> s{_amdUploadProtocol = a})

-- | Pretty-print response.
amdPp :: Lens' AppsModulesDelete' Bool
amdPp = lens _amdPp (\ s a -> s{_amdPp = a})

-- | OAuth access token.
amdAccessToken :: Lens' AppsModulesDelete' (Maybe Text)
amdAccessToken
  = lens _amdAccessToken
      (\ s a -> s{_amdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amdUploadType :: Lens' AppsModulesDelete' (Maybe Text)
amdUploadType
  = lens _amdUploadType
      (\ s a -> s{_amdUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amdModulesId :: Lens' AppsModulesDelete' Text
amdModulesId
  = lens _amdModulesId (\ s a -> s{_amdModulesId = a})

-- | OAuth bearer token.
amdBearerToken :: Lens' AppsModulesDelete' (Maybe Text)
amdBearerToken
  = lens _amdBearerToken
      (\ s a -> s{_amdBearerToken = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/modules\/default\".
amdAppsId :: Lens' AppsModulesDelete' Text
amdAppsId
  = lens _amdAppsId (\ s a -> s{_amdAppsId = a})

-- | JSONP
amdCallback :: Lens' AppsModulesDelete' (Maybe Text)
amdCallback
  = lens _amdCallback (\ s a -> s{_amdCallback = a})

instance GoogleRequest AppsModulesDelete' where
        type Rs AppsModulesDelete' = Operation
        requestClient AppsModulesDelete'{..}
          = go _amdAppsId _amdModulesId _amdXgafv
              _amdUploadProtocol
              (Just _amdPp)
              _amdAccessToken
              _amdUploadType
              _amdBearerToken
              _amdCallback
              (Just AltJSON)
              appEngine
          where go
                  = buildClient
                      (Proxy :: Proxy AppsModulesDeleteResource)
                      mempty
