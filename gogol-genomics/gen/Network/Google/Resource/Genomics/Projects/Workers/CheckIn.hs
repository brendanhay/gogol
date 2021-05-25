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
-- Module      : Network.Google.Resource.Genomics.Projects.Workers.CheckIn
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The worker uses this method to retrieve the assigned operation and
-- provide periodic status updates.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.projects.workers.checkIn@.
module Network.Google.Resource.Genomics.Projects.Workers.CheckIn
    (
    -- * REST Resource
      ProjectsWorkersCheckInResource

    -- * Creating a Request
    , projectsWorkersCheckIn
    , ProjectsWorkersCheckIn

    -- * Request Lenses
    , pwciXgafv
    , pwciUploadProtocol
    , pwciAccessToken
    , pwciUploadType
    , pwciPayload
    , pwciId
    , pwciCallback
    ) where

import Network.Google.Genomics.Types
import Network.Google.Prelude

-- | A resource alias for @genomics.projects.workers.checkIn@ method which the
-- 'ProjectsWorkersCheckIn' request conforms to.
type ProjectsWorkersCheckInResource =
     "v2alpha1" :>
       CaptureMode "id" "checkIn" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CheckInRequest :>
                       Post '[JSON] CheckInResponse

-- | The worker uses this method to retrieve the assigned operation and
-- provide periodic status updates.
--
-- /See:/ 'projectsWorkersCheckIn' smart constructor.
data ProjectsWorkersCheckIn =
  ProjectsWorkersCheckIn'
    { _pwciXgafv :: !(Maybe Xgafv)
    , _pwciUploadProtocol :: !(Maybe Text)
    , _pwciAccessToken :: !(Maybe Text)
    , _pwciUploadType :: !(Maybe Text)
    , _pwciPayload :: !CheckInRequest
    , _pwciId :: !Text
    , _pwciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsWorkersCheckIn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pwciXgafv'
--
-- * 'pwciUploadProtocol'
--
-- * 'pwciAccessToken'
--
-- * 'pwciUploadType'
--
-- * 'pwciPayload'
--
-- * 'pwciId'
--
-- * 'pwciCallback'
projectsWorkersCheckIn
    :: CheckInRequest -- ^ 'pwciPayload'
    -> Text -- ^ 'pwciId'
    -> ProjectsWorkersCheckIn
projectsWorkersCheckIn pPwciPayload_ pPwciId_ =
  ProjectsWorkersCheckIn'
    { _pwciXgafv = Nothing
    , _pwciUploadProtocol = Nothing
    , _pwciAccessToken = Nothing
    , _pwciUploadType = Nothing
    , _pwciPayload = pPwciPayload_
    , _pwciId = pPwciId_
    , _pwciCallback = Nothing
    }


-- | V1 error format.
pwciXgafv :: Lens' ProjectsWorkersCheckIn (Maybe Xgafv)
pwciXgafv
  = lens _pwciXgafv (\ s a -> s{_pwciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pwciUploadProtocol :: Lens' ProjectsWorkersCheckIn (Maybe Text)
pwciUploadProtocol
  = lens _pwciUploadProtocol
      (\ s a -> s{_pwciUploadProtocol = a})

-- | OAuth access token.
pwciAccessToken :: Lens' ProjectsWorkersCheckIn (Maybe Text)
pwciAccessToken
  = lens _pwciAccessToken
      (\ s a -> s{_pwciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pwciUploadType :: Lens' ProjectsWorkersCheckIn (Maybe Text)
pwciUploadType
  = lens _pwciUploadType
      (\ s a -> s{_pwciUploadType = a})

-- | Multipart request metadata.
pwciPayload :: Lens' ProjectsWorkersCheckIn CheckInRequest
pwciPayload
  = lens _pwciPayload (\ s a -> s{_pwciPayload = a})

-- | The VM identity token for authenticating the VM instance.
-- https:\/\/cloud.google.com\/compute\/docs\/instances\/verifying-instance-identity
pwciId :: Lens' ProjectsWorkersCheckIn Text
pwciId = lens _pwciId (\ s a -> s{_pwciId = a})

-- | JSONP
pwciCallback :: Lens' ProjectsWorkersCheckIn (Maybe Text)
pwciCallback
  = lens _pwciCallback (\ s a -> s{_pwciCallback = a})

instance GoogleRequest ProjectsWorkersCheckIn where
        type Rs ProjectsWorkersCheckIn = CheckInResponse
        type Scopes ProjectsWorkersCheckIn =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient ProjectsWorkersCheckIn'{..}
          = go _pwciId _pwciXgafv _pwciUploadProtocol
              _pwciAccessToken
              _pwciUploadType
              _pwciCallback
              (Just AltJSON)
              _pwciPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsWorkersCheckInResource)
                      mempty
