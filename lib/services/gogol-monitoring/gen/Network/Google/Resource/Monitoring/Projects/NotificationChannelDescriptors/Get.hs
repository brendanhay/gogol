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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single channel descriptor. The descriptor indicates which fields
-- are expected \/ permitted for a notification channel of the given type.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannelDescriptors.get@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.Get
    (
    -- * REST Resource
      ProjectsNotificationChannelDescriptorsGetResource

    -- * Creating a Request
    , projectsNotificationChannelDescriptorsGet
    , ProjectsNotificationChannelDescriptorsGet

    -- * Request Lenses
    , pncdgXgafv
    , pncdgUploadProtocol
    , pncdgAccessToken
    , pncdgUploadType
    , pncdgName
    , pncdgCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannelDescriptors.get@ method which the
-- 'ProjectsNotificationChannelDescriptorsGet' request conforms to.
type ProjectsNotificationChannelDescriptorsGetResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] NotificationChannelDescriptor

-- | Gets a single channel descriptor. The descriptor indicates which fields
-- are expected \/ permitted for a notification channel of the given type.
--
-- /See:/ 'projectsNotificationChannelDescriptorsGet' smart constructor.
data ProjectsNotificationChannelDescriptorsGet =
  ProjectsNotificationChannelDescriptorsGet'
    { _pncdgXgafv :: !(Maybe Xgafv)
    , _pncdgUploadProtocol :: !(Maybe Text)
    , _pncdgAccessToken :: !(Maybe Text)
    , _pncdgUploadType :: !(Maybe Text)
    , _pncdgName :: !Text
    , _pncdgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotificationChannelDescriptorsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncdgXgafv'
--
-- * 'pncdgUploadProtocol'
--
-- * 'pncdgAccessToken'
--
-- * 'pncdgUploadType'
--
-- * 'pncdgName'
--
-- * 'pncdgCallback'
projectsNotificationChannelDescriptorsGet
    :: Text -- ^ 'pncdgName'
    -> ProjectsNotificationChannelDescriptorsGet
projectsNotificationChannelDescriptorsGet pPncdgName_ =
  ProjectsNotificationChannelDescriptorsGet'
    { _pncdgXgafv = Nothing
    , _pncdgUploadProtocol = Nothing
    , _pncdgAccessToken = Nothing
    , _pncdgUploadType = Nothing
    , _pncdgName = pPncdgName_
    , _pncdgCallback = Nothing
    }


-- | V1 error format.
pncdgXgafv :: Lens' ProjectsNotificationChannelDescriptorsGet (Maybe Xgafv)
pncdgXgafv
  = lens _pncdgXgafv (\ s a -> s{_pncdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncdgUploadProtocol :: Lens' ProjectsNotificationChannelDescriptorsGet (Maybe Text)
pncdgUploadProtocol
  = lens _pncdgUploadProtocol
      (\ s a -> s{_pncdgUploadProtocol = a})

-- | OAuth access token.
pncdgAccessToken :: Lens' ProjectsNotificationChannelDescriptorsGet (Maybe Text)
pncdgAccessToken
  = lens _pncdgAccessToken
      (\ s a -> s{_pncdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncdgUploadType :: Lens' ProjectsNotificationChannelDescriptorsGet (Maybe Text)
pncdgUploadType
  = lens _pncdgUploadType
      (\ s a -> s{_pncdgUploadType = a})

-- | Required. The channel type for which to execute the request. The format
-- is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/notificationChannelDescriptors\/[CHANNEL_TYPE]
pncdgName :: Lens' ProjectsNotificationChannelDescriptorsGet Text
pncdgName
  = lens _pncdgName (\ s a -> s{_pncdgName = a})

-- | JSONP
pncdgCallback :: Lens' ProjectsNotificationChannelDescriptorsGet (Maybe Text)
pncdgCallback
  = lens _pncdgCallback
      (\ s a -> s{_pncdgCallback = a})

instance GoogleRequest
           ProjectsNotificationChannelDescriptorsGet
         where
        type Rs ProjectsNotificationChannelDescriptorsGet =
             NotificationChannelDescriptor
        type Scopes ProjectsNotificationChannelDescriptorsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient
          ProjectsNotificationChannelDescriptorsGet'{..}
          = go _pncdgName _pncdgXgafv _pncdgUploadProtocol
              _pncdgAccessToken
              _pncdgUploadType
              _pncdgCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsNotificationChannelDescriptorsGetResource)
                      mempty
