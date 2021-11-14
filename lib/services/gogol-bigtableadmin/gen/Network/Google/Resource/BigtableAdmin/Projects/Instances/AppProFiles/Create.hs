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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an app profile within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.create@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Create
    (
    -- * REST Resource
      ProjectsInstancesAppProFilesCreateResource

    -- * Creating a Request
    , projectsInstancesAppProFilesCreate
    , ProjectsInstancesAppProFilesCreate

    -- * Request Lenses
    , piapfcParent
    , piapfcXgafv
    , piapfcAppProFileId
    , piapfcUploadProtocol
    , piapfcAccessToken
    , piapfcUploadType
    , piapfcPayload
    , piapfcIgnoreWarnings
    , piapfcCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.create@ method which the
-- 'ProjectsInstancesAppProFilesCreate' request conforms to.
type ProjectsInstancesAppProFilesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "appProfiles" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "appProfileId" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "ignoreWarnings" Bool :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AppProFile :> Post '[JSON] AppProFile

-- | Creates an app profile within an instance.
--
-- /See:/ 'projectsInstancesAppProFilesCreate' smart constructor.
data ProjectsInstancesAppProFilesCreate =
  ProjectsInstancesAppProFilesCreate'
    { _piapfcParent :: !Text
    , _piapfcXgafv :: !(Maybe Xgafv)
    , _piapfcAppProFileId :: !(Maybe Text)
    , _piapfcUploadProtocol :: !(Maybe Text)
    , _piapfcAccessToken :: !(Maybe Text)
    , _piapfcUploadType :: !(Maybe Text)
    , _piapfcPayload :: !AppProFile
    , _piapfcIgnoreWarnings :: !(Maybe Bool)
    , _piapfcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesAppProFilesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piapfcParent'
--
-- * 'piapfcXgafv'
--
-- * 'piapfcAppProFileId'
--
-- * 'piapfcUploadProtocol'
--
-- * 'piapfcAccessToken'
--
-- * 'piapfcUploadType'
--
-- * 'piapfcPayload'
--
-- * 'piapfcIgnoreWarnings'
--
-- * 'piapfcCallback'
projectsInstancesAppProFilesCreate
    :: Text -- ^ 'piapfcParent'
    -> AppProFile -- ^ 'piapfcPayload'
    -> ProjectsInstancesAppProFilesCreate
projectsInstancesAppProFilesCreate pPiapfcParent_ pPiapfcPayload_ =
  ProjectsInstancesAppProFilesCreate'
    { _piapfcParent = pPiapfcParent_
    , _piapfcXgafv = Nothing
    , _piapfcAppProFileId = Nothing
    , _piapfcUploadProtocol = Nothing
    , _piapfcAccessToken = Nothing
    , _piapfcUploadType = Nothing
    , _piapfcPayload = pPiapfcPayload_
    , _piapfcIgnoreWarnings = Nothing
    , _piapfcCallback = Nothing
    }


-- | Required. The unique name of the instance in which to create the new app
-- profile. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\`.
piapfcParent :: Lens' ProjectsInstancesAppProFilesCreate Text
piapfcParent
  = lens _piapfcParent (\ s a -> s{_piapfcParent = a})

-- | V1 error format.
piapfcXgafv :: Lens' ProjectsInstancesAppProFilesCreate (Maybe Xgafv)
piapfcXgafv
  = lens _piapfcXgafv (\ s a -> s{_piapfcXgafv = a})

-- | Required. The ID to be used when referring to the new app profile within
-- its instance, e.g., just \`myprofile\` rather than
-- \`projects\/myproject\/instances\/myinstance\/appProfiles\/myprofile\`.
piapfcAppProFileId :: Lens' ProjectsInstancesAppProFilesCreate (Maybe Text)
piapfcAppProFileId
  = lens _piapfcAppProFileId
      (\ s a -> s{_piapfcAppProFileId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piapfcUploadProtocol :: Lens' ProjectsInstancesAppProFilesCreate (Maybe Text)
piapfcUploadProtocol
  = lens _piapfcUploadProtocol
      (\ s a -> s{_piapfcUploadProtocol = a})

-- | OAuth access token.
piapfcAccessToken :: Lens' ProjectsInstancesAppProFilesCreate (Maybe Text)
piapfcAccessToken
  = lens _piapfcAccessToken
      (\ s a -> s{_piapfcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piapfcUploadType :: Lens' ProjectsInstancesAppProFilesCreate (Maybe Text)
piapfcUploadType
  = lens _piapfcUploadType
      (\ s a -> s{_piapfcUploadType = a})

-- | Multipart request metadata.
piapfcPayload :: Lens' ProjectsInstancesAppProFilesCreate AppProFile
piapfcPayload
  = lens _piapfcPayload
      (\ s a -> s{_piapfcPayload = a})

-- | If true, ignore safety checks when creating the app profile.
piapfcIgnoreWarnings :: Lens' ProjectsInstancesAppProFilesCreate (Maybe Bool)
piapfcIgnoreWarnings
  = lens _piapfcIgnoreWarnings
      (\ s a -> s{_piapfcIgnoreWarnings = a})

-- | JSONP
piapfcCallback :: Lens' ProjectsInstancesAppProFilesCreate (Maybe Text)
piapfcCallback
  = lens _piapfcCallback
      (\ s a -> s{_piapfcCallback = a})

instance GoogleRequest
           ProjectsInstancesAppProFilesCreate
         where
        type Rs ProjectsInstancesAppProFilesCreate =
             AppProFile
        type Scopes ProjectsInstancesAppProFilesCreate =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesAppProFilesCreate'{..}
          = go _piapfcParent _piapfcXgafv _piapfcAppProFileId
              _piapfcUploadProtocol
              _piapfcAccessToken
              _piapfcUploadType
              _piapfcIgnoreWarnings
              _piapfcCallback
              (Just AltJSON)
              _piapfcPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesAppProFilesCreateResource)
                      mempty
