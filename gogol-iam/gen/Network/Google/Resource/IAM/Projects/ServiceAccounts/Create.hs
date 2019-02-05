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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a ServiceAccount and returns it.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.create@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Create
    (
    -- * REST Resource
      ProjectsServiceAccountsCreateResource

    -- * Creating a Request
    , projectsServiceAccountsCreate
    , ProjectsServiceAccountsCreate

    -- * Request Lenses
    , psacXgafv
    , psacUploadProtocol
    , psacAccessToken
    , psacUploadType
    , psacPayload
    , psacName
    , psacCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.create@ method which the
-- 'ProjectsServiceAccountsCreate' request conforms to.
type ProjectsServiceAccountsCreateResource =
     "v1" :>
       Capture "name" Text :>
         "serviceAccounts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateServiceAccountRequest :>
                         Post '[JSON] ServiceAccount

-- | Creates a ServiceAccount and returns it.
--
-- /See:/ 'projectsServiceAccountsCreate' smart constructor.
data ProjectsServiceAccountsCreate = ProjectsServiceAccountsCreate'
    { _psacXgafv          :: !(Maybe Xgafv)
    , _psacUploadProtocol :: !(Maybe Text)
    , _psacAccessToken    :: !(Maybe Text)
    , _psacUploadType     :: !(Maybe Text)
    , _psacPayload        :: !CreateServiceAccountRequest
    , _psacName           :: !Text
    , _psacCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psacXgafv'
--
-- * 'psacUploadProtocol'
--
-- * 'psacAccessToken'
--
-- * 'psacUploadType'
--
-- * 'psacPayload'
--
-- * 'psacName'
--
-- * 'psacCallback'
projectsServiceAccountsCreate
    :: CreateServiceAccountRequest -- ^ 'psacPayload'
    -> Text -- ^ 'psacName'
    -> ProjectsServiceAccountsCreate
projectsServiceAccountsCreate pPsacPayload_ pPsacName_ =
    ProjectsServiceAccountsCreate'
    { _psacXgafv = Nothing
    , _psacUploadProtocol = Nothing
    , _psacAccessToken = Nothing
    , _psacUploadType = Nothing
    , _psacPayload = pPsacPayload_
    , _psacName = pPsacName_
    , _psacCallback = Nothing
    }

-- | V1 error format.
psacXgafv :: Lens' ProjectsServiceAccountsCreate (Maybe Xgafv)
psacXgafv
  = lens _psacXgafv (\ s a -> s{_psacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psacUploadProtocol :: Lens' ProjectsServiceAccountsCreate (Maybe Text)
psacUploadProtocol
  = lens _psacUploadProtocol
      (\ s a -> s{_psacUploadProtocol = a})

-- | OAuth access token.
psacAccessToken :: Lens' ProjectsServiceAccountsCreate (Maybe Text)
psacAccessToken
  = lens _psacAccessToken
      (\ s a -> s{_psacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psacUploadType :: Lens' ProjectsServiceAccountsCreate (Maybe Text)
psacUploadType
  = lens _psacUploadType
      (\ s a -> s{_psacUploadType = a})

-- | Multipart request metadata.
psacPayload :: Lens' ProjectsServiceAccountsCreate CreateServiceAccountRequest
psacPayload
  = lens _psacPayload (\ s a -> s{_psacPayload = a})

-- | Required. The resource name of the project associated with the service
-- accounts, such as \`projects\/my-project-123\`.
psacName :: Lens' ProjectsServiceAccountsCreate Text
psacName = lens _psacName (\ s a -> s{_psacName = a})

-- | JSONP
psacCallback :: Lens' ProjectsServiceAccountsCreate (Maybe Text)
psacCallback
  = lens _psacCallback (\ s a -> s{_psacCallback = a})

instance GoogleRequest ProjectsServiceAccountsCreate
         where
        type Rs ProjectsServiceAccountsCreate =
             ServiceAccount
        type Scopes ProjectsServiceAccountsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsCreate'{..}
          = go _psacName _psacXgafv _psacUploadProtocol
              _psacAccessToken
              _psacUploadType
              _psacCallback
              (Just AltJSON)
              _psacPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsCreateResource)
                      mempty
