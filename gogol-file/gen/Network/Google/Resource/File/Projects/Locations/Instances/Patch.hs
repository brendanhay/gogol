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
-- Module      : Network.Google.Resource.File.Projects.Locations.Instances.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a specific instance.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.patch@.
module Network.Google.Resource.File.Projects.Locations.Instances.Patch
    (
    -- * REST Resource
      ProjectsLocationsInstancesPatchResource

    -- * Creating a Request
    , projectsLocationsInstancesPatch
    , ProjectsLocationsInstancesPatch

    -- * Request Lenses
    , plipXgafv
    , plipUploadProtocol
    , plipUpdateMask
    , plipAccessToken
    , plipUploadType
    , plipPayload
    , plipName
    , plipCallback
    ) where

import Network.Google.File.Types
import Network.Google.Prelude

-- | A resource alias for @file.projects.locations.instances.patch@ method which the
-- 'ProjectsLocationsInstancesPatch' request conforms to.
type ProjectsLocationsInstancesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Instance :> Patch '[JSON] Operation

-- | Updates the settings of a specific instance.
--
-- /See:/ 'projectsLocationsInstancesPatch' smart constructor.
data ProjectsLocationsInstancesPatch =
  ProjectsLocationsInstancesPatch'
    { _plipXgafv :: !(Maybe Xgafv)
    , _plipUploadProtocol :: !(Maybe Text)
    , _plipUpdateMask :: !(Maybe GFieldMask)
    , _plipAccessToken :: !(Maybe Text)
    , _plipUploadType :: !(Maybe Text)
    , _plipPayload :: !Instance
    , _plipName :: !Text
    , _plipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plipXgafv'
--
-- * 'plipUploadProtocol'
--
-- * 'plipUpdateMask'
--
-- * 'plipAccessToken'
--
-- * 'plipUploadType'
--
-- * 'plipPayload'
--
-- * 'plipName'
--
-- * 'plipCallback'
projectsLocationsInstancesPatch
    :: Instance -- ^ 'plipPayload'
    -> Text -- ^ 'plipName'
    -> ProjectsLocationsInstancesPatch
projectsLocationsInstancesPatch pPlipPayload_ pPlipName_ =
  ProjectsLocationsInstancesPatch'
    { _plipXgafv = Nothing
    , _plipUploadProtocol = Nothing
    , _plipUpdateMask = Nothing
    , _plipAccessToken = Nothing
    , _plipUploadType = Nothing
    , _plipPayload = pPlipPayload_
    , _plipName = pPlipName_
    , _plipCallback = Nothing
    }


-- | V1 error format.
plipXgafv :: Lens' ProjectsLocationsInstancesPatch (Maybe Xgafv)
plipXgafv
  = lens _plipXgafv (\ s a -> s{_plipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plipUploadProtocol :: Lens' ProjectsLocationsInstancesPatch (Maybe Text)
plipUploadProtocol
  = lens _plipUploadProtocol
      (\ s a -> s{_plipUploadProtocol = a})

-- | Mask of fields to update. At least one path must be supplied in this
-- field. The elements of the repeated paths field may only include these
-- fields: * \"description\" * \"file_shares\" * \"labels\"
plipUpdateMask :: Lens' ProjectsLocationsInstancesPatch (Maybe GFieldMask)
plipUpdateMask
  = lens _plipUpdateMask
      (\ s a -> s{_plipUpdateMask = a})

-- | OAuth access token.
plipAccessToken :: Lens' ProjectsLocationsInstancesPatch (Maybe Text)
plipAccessToken
  = lens _plipAccessToken
      (\ s a -> s{_plipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plipUploadType :: Lens' ProjectsLocationsInstancesPatch (Maybe Text)
plipUploadType
  = lens _plipUploadType
      (\ s a -> s{_plipUploadType = a})

-- | Multipart request metadata.
plipPayload :: Lens' ProjectsLocationsInstancesPatch Instance
plipPayload
  = lens _plipPayload (\ s a -> s{_plipPayload = a})

-- | Output only. The resource name of the instance, in the format
-- projects\/{project}\/locations\/{location}\/instances\/{instance}.
plipName :: Lens' ProjectsLocationsInstancesPatch Text
plipName = lens _plipName (\ s a -> s{_plipName = a})

-- | JSONP
plipCallback :: Lens' ProjectsLocationsInstancesPatch (Maybe Text)
plipCallback
  = lens _plipCallback (\ s a -> s{_plipCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesPatch
         where
        type Rs ProjectsLocationsInstancesPatch = Operation
        type Scopes ProjectsLocationsInstancesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesPatch'{..}
          = go _plipName _plipXgafv _plipUploadProtocol
              _plipUpdateMask
              _plipAccessToken
              _plipUploadType
              _plipCallback
              (Just AltJSON)
              _plipPayload
              fileService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesPatchResource)
                      mempty
