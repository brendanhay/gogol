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
-- Module      : Network.Google.Resource.Spanner.Projects.InstanceConfigs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a particular instance configuration.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instanceConfigs.get@.
module Network.Google.Resource.Spanner.Projects.InstanceConfigs.Get
    (
    -- * REST Resource
      ProjectsInstanceConfigsGetResource

    -- * Creating a Request
    , projectsInstanceConfigsGet
    , ProjectsInstanceConfigsGet

    -- * Request Lenses
    , picgXgafv
    , picgUploadProtocol
    , picgAccessToken
    , picgUploadType
    , picgName
    , picgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instanceConfigs.get@ method which the
-- 'ProjectsInstanceConfigsGet' request conforms to.
type ProjectsInstanceConfigsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] InstanceConfig

-- | Gets information about a particular instance configuration.
--
-- /See:/ 'projectsInstanceConfigsGet' smart constructor.
data ProjectsInstanceConfigsGet = ProjectsInstanceConfigsGet'
    { _picgXgafv          :: !(Maybe Xgafv)
    , _picgUploadProtocol :: !(Maybe Text)
    , _picgAccessToken    :: !(Maybe Text)
    , _picgUploadType     :: !(Maybe Text)
    , _picgName           :: !Text
    , _picgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstanceConfigsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picgXgafv'
--
-- * 'picgUploadProtocol'
--
-- * 'picgAccessToken'
--
-- * 'picgUploadType'
--
-- * 'picgName'
--
-- * 'picgCallback'
projectsInstanceConfigsGet
    :: Text -- ^ 'picgName'
    -> ProjectsInstanceConfigsGet
projectsInstanceConfigsGet pPicgName_ =
    ProjectsInstanceConfigsGet'
    { _picgXgafv = Nothing
    , _picgUploadProtocol = Nothing
    , _picgAccessToken = Nothing
    , _picgUploadType = Nothing
    , _picgName = pPicgName_
    , _picgCallback = Nothing
    }

-- | V1 error format.
picgXgafv :: Lens' ProjectsInstanceConfigsGet (Maybe Xgafv)
picgXgafv
  = lens _picgXgafv (\ s a -> s{_picgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picgUploadProtocol :: Lens' ProjectsInstanceConfigsGet (Maybe Text)
picgUploadProtocol
  = lens _picgUploadProtocol
      (\ s a -> s{_picgUploadProtocol = a})

-- | OAuth access token.
picgAccessToken :: Lens' ProjectsInstanceConfigsGet (Maybe Text)
picgAccessToken
  = lens _picgAccessToken
      (\ s a -> s{_picgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picgUploadType :: Lens' ProjectsInstanceConfigsGet (Maybe Text)
picgUploadType
  = lens _picgUploadType
      (\ s a -> s{_picgUploadType = a})

-- | Required. The name of the requested instance configuration. Values are
-- of the form \`projects\/\/instanceConfigs\/\`.
picgName :: Lens' ProjectsInstanceConfigsGet Text
picgName = lens _picgName (\ s a -> s{_picgName = a})

-- | JSONP
picgCallback :: Lens' ProjectsInstanceConfigsGet (Maybe Text)
picgCallback
  = lens _picgCallback (\ s a -> s{_picgCallback = a})

instance GoogleRequest ProjectsInstanceConfigsGet
         where
        type Rs ProjectsInstanceConfigsGet = InstanceConfig
        type Scopes ProjectsInstanceConfigsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstanceConfigsGet'{..}
          = go _picgName _picgXgafv _picgUploadProtocol
              _picgAccessToken
              _picgUploadType
              _picgCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstanceConfigsGetResource)
                      mempty
