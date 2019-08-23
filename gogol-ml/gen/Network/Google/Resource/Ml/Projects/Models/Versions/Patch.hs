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
-- Module      : Network.Google.Resource.Ml.Projects.Models.Versions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Version resource. Currently the only update-able
-- fields are \`description\` and \`autoScaling.minNodes\`.
--
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.models.versions.patch@.
module Network.Google.Resource.Ml.Projects.Models.Versions.Patch
    (
    -- * REST Resource
      ProjectsModelsVersionsPatchResource

    -- * Creating a Request
    , projectsModelsVersionsPatch
    , ProjectsModelsVersionsPatch

    -- * Request Lenses
    , pmvpXgafv
    , pmvpUploadProtocol
    , pmvpUpdateMask
    , pmvpAccessToken
    , pmvpUploadType
    , pmvpPayload
    , pmvpName
    , pmvpCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.versions.patch@ method which the
-- 'ProjectsModelsVersionsPatch' request conforms to.
type ProjectsModelsVersionsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudMlV1__Version :>
                         Patch '[JSON] GoogleLongrunning__Operation

-- | Updates the specified Version resource. Currently the only update-able
-- fields are \`description\` and \`autoScaling.minNodes\`.
--
-- /See:/ 'projectsModelsVersionsPatch' smart constructor.
data ProjectsModelsVersionsPatch =
  ProjectsModelsVersionsPatch'
    { _pmvpXgafv          :: !(Maybe Xgafv)
    , _pmvpUploadProtocol :: !(Maybe Text)
    , _pmvpUpdateMask     :: !(Maybe GFieldMask)
    , _pmvpAccessToken    :: !(Maybe Text)
    , _pmvpUploadType     :: !(Maybe Text)
    , _pmvpPayload        :: !GoogleCloudMlV1__Version
    , _pmvpName           :: !Text
    , _pmvpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsModelsVersionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmvpXgafv'
--
-- * 'pmvpUploadProtocol'
--
-- * 'pmvpUpdateMask'
--
-- * 'pmvpAccessToken'
--
-- * 'pmvpUploadType'
--
-- * 'pmvpPayload'
--
-- * 'pmvpName'
--
-- * 'pmvpCallback'
projectsModelsVersionsPatch
    :: GoogleCloudMlV1__Version -- ^ 'pmvpPayload'
    -> Text -- ^ 'pmvpName'
    -> ProjectsModelsVersionsPatch
projectsModelsVersionsPatch pPmvpPayload_ pPmvpName_ =
  ProjectsModelsVersionsPatch'
    { _pmvpXgafv = Nothing
    , _pmvpUploadProtocol = Nothing
    , _pmvpUpdateMask = Nothing
    , _pmvpAccessToken = Nothing
    , _pmvpUploadType = Nothing
    , _pmvpPayload = pPmvpPayload_
    , _pmvpName = pPmvpName_
    , _pmvpCallback = Nothing
    }


-- | V1 error format.
pmvpXgafv :: Lens' ProjectsModelsVersionsPatch (Maybe Xgafv)
pmvpXgafv
  = lens _pmvpXgafv (\ s a -> s{_pmvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmvpUploadProtocol :: Lens' ProjectsModelsVersionsPatch (Maybe Text)
pmvpUploadProtocol
  = lens _pmvpUploadProtocol
      (\ s a -> s{_pmvpUploadProtocol = a})

-- | Required. Specifies the path, relative to \`Version\`, of the field to
-- update. Must be present and non-empty. For example, to change the
-- description of a version to \"foo\", the \`update_mask\` parameter would
-- be specified as \`description\`, and the \`PATCH\` request body would
-- specify the new value, as follows: { \"description\": \"foo\" }
-- Currently the only supported update mask fields are \`description\` and
-- \`autoScaling.minNodes\`.
pmvpUpdateMask :: Lens' ProjectsModelsVersionsPatch (Maybe GFieldMask)
pmvpUpdateMask
  = lens _pmvpUpdateMask
      (\ s a -> s{_pmvpUpdateMask = a})

-- | OAuth access token.
pmvpAccessToken :: Lens' ProjectsModelsVersionsPatch (Maybe Text)
pmvpAccessToken
  = lens _pmvpAccessToken
      (\ s a -> s{_pmvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmvpUploadType :: Lens' ProjectsModelsVersionsPatch (Maybe Text)
pmvpUploadType
  = lens _pmvpUploadType
      (\ s a -> s{_pmvpUploadType = a})

-- | Multipart request metadata.
pmvpPayload :: Lens' ProjectsModelsVersionsPatch GoogleCloudMlV1__Version
pmvpPayload
  = lens _pmvpPayload (\ s a -> s{_pmvpPayload = a})

-- | Required. The name of the model.
pmvpName :: Lens' ProjectsModelsVersionsPatch Text
pmvpName = lens _pmvpName (\ s a -> s{_pmvpName = a})

-- | JSONP
pmvpCallback :: Lens' ProjectsModelsVersionsPatch (Maybe Text)
pmvpCallback
  = lens _pmvpCallback (\ s a -> s{_pmvpCallback = a})

instance GoogleRequest ProjectsModelsVersionsPatch
         where
        type Rs ProjectsModelsVersionsPatch =
             GoogleLongrunning__Operation
        type Scopes ProjectsModelsVersionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsVersionsPatch'{..}
          = go _pmvpName _pmvpXgafv _pmvpUploadProtocol
              _pmvpUpdateMask
              _pmvpAccessToken
              _pmvpUploadType
              _pmvpCallback
              (Just AltJSON)
              _pmvpPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsVersionsPatchResource)
                      mempty
