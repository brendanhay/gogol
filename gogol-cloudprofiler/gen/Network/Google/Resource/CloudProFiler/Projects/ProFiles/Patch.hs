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
-- Module      : Network.Google.Resource.CloudProFiler.Projects.ProFiles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- UpdateProfile updates the profile bytes and labels on the profile
-- resource created in the online mode. Updating the bytes for profiles
-- created in the offline mode is currently not supported: the profile
-- content must be provided at the time of the profile creation.
--
-- /See:/ <https://cloud.google.com/profiler/ Stackdriver Profiler API Reference> for @cloudprofiler.projects.profiles.patch@.
module Network.Google.Resource.CloudProFiler.Projects.ProFiles.Patch
    (
    -- * REST Resource
      ProjectsProFilesPatchResource

    -- * Creating a Request
    , projectsProFilesPatch
    , ProjectsProFilesPatch

    -- * Request Lenses
    , ppfpXgafv
    , ppfpUploadProtocol
    , ppfpUpdateMask
    , ppfpAccessToken
    , ppfpUploadType
    , ppfpPayload
    , ppfpName
    , ppfpCallback
    ) where

import           Network.Google.CloudProFiler.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprofiler.projects.profiles.patch@ method which the
-- 'ProjectsProFilesPatch' request conforms to.
type ProjectsProFilesPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ProFile :> Patch '[JSON] ProFile

-- | UpdateProfile updates the profile bytes and labels on the profile
-- resource created in the online mode. Updating the bytes for profiles
-- created in the offline mode is currently not supported: the profile
-- content must be provided at the time of the profile creation.
--
-- /See:/ 'projectsProFilesPatch' smart constructor.
data ProjectsProFilesPatch = ProjectsProFilesPatch'
    { _ppfpXgafv          :: !(Maybe Xgafv)
    , _ppfpUploadProtocol :: !(Maybe Text)
    , _ppfpUpdateMask     :: !(Maybe GFieldMask)
    , _ppfpAccessToken    :: !(Maybe Text)
    , _ppfpUploadType     :: !(Maybe Text)
    , _ppfpPayload        :: !ProFile
    , _ppfpName           :: !Text
    , _ppfpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsProFilesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppfpXgafv'
--
-- * 'ppfpUploadProtocol'
--
-- * 'ppfpUpdateMask'
--
-- * 'ppfpAccessToken'
--
-- * 'ppfpUploadType'
--
-- * 'ppfpPayload'
--
-- * 'ppfpName'
--
-- * 'ppfpCallback'
projectsProFilesPatch
    :: ProFile -- ^ 'ppfpPayload'
    -> Text -- ^ 'ppfpName'
    -> ProjectsProFilesPatch
projectsProFilesPatch pPpfpPayload_ pPpfpName_ =
    ProjectsProFilesPatch'
    { _ppfpXgafv = Nothing
    , _ppfpUploadProtocol = Nothing
    , _ppfpUpdateMask = Nothing
    , _ppfpAccessToken = Nothing
    , _ppfpUploadType = Nothing
    , _ppfpPayload = pPpfpPayload_
    , _ppfpName = pPpfpName_
    , _ppfpCallback = Nothing
    }

-- | V1 error format.
ppfpXgafv :: Lens' ProjectsProFilesPatch (Maybe Xgafv)
ppfpXgafv
  = lens _ppfpXgafv (\ s a -> s{_ppfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppfpUploadProtocol :: Lens' ProjectsProFilesPatch (Maybe Text)
ppfpUploadProtocol
  = lens _ppfpUploadProtocol
      (\ s a -> s{_ppfpUploadProtocol = a})

-- | Field mask used to specify the fields to be overwritten. Currently only
-- profile_bytes and labels fields are supported by UpdateProfile, so only
-- those fields can be specified in the mask. When no mask is provided, all
-- fields are overwritten.
ppfpUpdateMask :: Lens' ProjectsProFilesPatch (Maybe GFieldMask)
ppfpUpdateMask
  = lens _ppfpUpdateMask
      (\ s a -> s{_ppfpUpdateMask = a})

-- | OAuth access token.
ppfpAccessToken :: Lens' ProjectsProFilesPatch (Maybe Text)
ppfpAccessToken
  = lens _ppfpAccessToken
      (\ s a -> s{_ppfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppfpUploadType :: Lens' ProjectsProFilesPatch (Maybe Text)
ppfpUploadType
  = lens _ppfpUploadType
      (\ s a -> s{_ppfpUploadType = a})

-- | Multipart request metadata.
ppfpPayload :: Lens' ProjectsProFilesPatch ProFile
ppfpPayload
  = lens _ppfpPayload (\ s a -> s{_ppfpPayload = a})

-- | Output only. Opaque, server-assigned, unique ID for this profile.
ppfpName :: Lens' ProjectsProFilesPatch Text
ppfpName = lens _ppfpName (\ s a -> s{_ppfpName = a})

-- | JSONP
ppfpCallback :: Lens' ProjectsProFilesPatch (Maybe Text)
ppfpCallback
  = lens _ppfpCallback (\ s a -> s{_ppfpCallback = a})

instance GoogleRequest ProjectsProFilesPatch where
        type Rs ProjectsProFilesPatch = ProFile
        type Scopes ProjectsProFilesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient ProjectsProFilesPatch'{..}
          = go _ppfpName _ppfpXgafv _ppfpUploadProtocol
              _ppfpUpdateMask
              _ppfpAccessToken
              _ppfpUploadType
              _ppfpCallback
              (Just AltJSON)
              _ppfpPayload
              cloudProfilerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsProFilesPatchResource)
                      mempty
