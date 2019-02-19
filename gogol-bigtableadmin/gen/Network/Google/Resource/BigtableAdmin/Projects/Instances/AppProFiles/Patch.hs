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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an app profile within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.patch@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Patch
    (
    -- * REST Resource
      ProjectsInstancesAppProFilesPatchResource

    -- * Creating a Request
    , projectsInstancesAppProFilesPatch
    , ProjectsInstancesAppProFilesPatch

    -- * Request Lenses
    , piapfpXgafv
    , piapfpUploadProtocol
    , piapfpUpdateMask
    , piapfpAccessToken
    , piapfpUploadType
    , piapfpPayload
    , piapfpIgnoreWarnings
    , piapfpName
    , piapfpCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.patch@ method which the
-- 'ProjectsInstancesAppProFilesPatch' request conforms to.
type ProjectsInstancesAppProFilesPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "ignoreWarnings" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AppProFile :> Patch '[JSON] Operation

-- | Updates an app profile within an instance.
--
-- /See:/ 'projectsInstancesAppProFilesPatch' smart constructor.
data ProjectsInstancesAppProFilesPatch =
  ProjectsInstancesAppProFilesPatch'
    { _piapfpXgafv          :: !(Maybe Xgafv)
    , _piapfpUploadProtocol :: !(Maybe Text)
    , _piapfpUpdateMask     :: !(Maybe GFieldMask)
    , _piapfpAccessToken    :: !(Maybe Text)
    , _piapfpUploadType     :: !(Maybe Text)
    , _piapfpPayload        :: !AppProFile
    , _piapfpIgnoreWarnings :: !(Maybe Bool)
    , _piapfpName           :: !Text
    , _piapfpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsInstancesAppProFilesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piapfpXgafv'
--
-- * 'piapfpUploadProtocol'
--
-- * 'piapfpUpdateMask'
--
-- * 'piapfpAccessToken'
--
-- * 'piapfpUploadType'
--
-- * 'piapfpPayload'
--
-- * 'piapfpIgnoreWarnings'
--
-- * 'piapfpName'
--
-- * 'piapfpCallback'
projectsInstancesAppProFilesPatch
    :: AppProFile -- ^ 'piapfpPayload'
    -> Text -- ^ 'piapfpName'
    -> ProjectsInstancesAppProFilesPatch
projectsInstancesAppProFilesPatch pPiapfpPayload_ pPiapfpName_ =
  ProjectsInstancesAppProFilesPatch'
    { _piapfpXgafv = Nothing
    , _piapfpUploadProtocol = Nothing
    , _piapfpUpdateMask = Nothing
    , _piapfpAccessToken = Nothing
    , _piapfpUploadType = Nothing
    , _piapfpPayload = pPiapfpPayload_
    , _piapfpIgnoreWarnings = Nothing
    , _piapfpName = pPiapfpName_
    , _piapfpCallback = Nothing
    }

-- | V1 error format.
piapfpXgafv :: Lens' ProjectsInstancesAppProFilesPatch (Maybe Xgafv)
piapfpXgafv
  = lens _piapfpXgafv (\ s a -> s{_piapfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piapfpUploadProtocol :: Lens' ProjectsInstancesAppProFilesPatch (Maybe Text)
piapfpUploadProtocol
  = lens _piapfpUploadProtocol
      (\ s a -> s{_piapfpUploadProtocol = a})

-- | The subset of app profile fields which should be replaced. If unset, all
-- fields will be replaced.
piapfpUpdateMask :: Lens' ProjectsInstancesAppProFilesPatch (Maybe GFieldMask)
piapfpUpdateMask
  = lens _piapfpUpdateMask
      (\ s a -> s{_piapfpUpdateMask = a})

-- | OAuth access token.
piapfpAccessToken :: Lens' ProjectsInstancesAppProFilesPatch (Maybe Text)
piapfpAccessToken
  = lens _piapfpAccessToken
      (\ s a -> s{_piapfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piapfpUploadType :: Lens' ProjectsInstancesAppProFilesPatch (Maybe Text)
piapfpUploadType
  = lens _piapfpUploadType
      (\ s a -> s{_piapfpUploadType = a})

-- | Multipart request metadata.
piapfpPayload :: Lens' ProjectsInstancesAppProFilesPatch AppProFile
piapfpPayload
  = lens _piapfpPayload
      (\ s a -> s{_piapfpPayload = a})

-- | If true, ignore safety checks when updating the app profile.
piapfpIgnoreWarnings :: Lens' ProjectsInstancesAppProFilesPatch (Maybe Bool)
piapfpIgnoreWarnings
  = lens _piapfpIgnoreWarnings
      (\ s a -> s{_piapfpIgnoreWarnings = a})

-- | (\`OutputOnly\`) The unique name of the app profile. Values are of the
-- form \`projects\/\/instances\/\/appProfiles\/_a-zA-Z0-9*\`.
piapfpName :: Lens' ProjectsInstancesAppProFilesPatch Text
piapfpName
  = lens _piapfpName (\ s a -> s{_piapfpName = a})

-- | JSONP
piapfpCallback :: Lens' ProjectsInstancesAppProFilesPatch (Maybe Text)
piapfpCallback
  = lens _piapfpCallback
      (\ s a -> s{_piapfpCallback = a})

instance GoogleRequest
           ProjectsInstancesAppProFilesPatch
         where
        type Rs ProjectsInstancesAppProFilesPatch = Operation
        type Scopes ProjectsInstancesAppProFilesPatch =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesAppProFilesPatch'{..}
          = go _piapfpName _piapfpXgafv _piapfpUploadProtocol
              _piapfpUpdateMask
              _piapfpAccessToken
              _piapfpUploadType
              _piapfpIgnoreWarnings
              _piapfpCallback
              (Just AltJSON)
              _piapfpPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesAppProFilesPatchResource)
                      mempty
