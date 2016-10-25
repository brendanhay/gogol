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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Releases.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a \`Release\`. Only updates to the \`ruleset_name\` field will be
-- honored. \`Release\` rename is not supported. To create a \`Release\`
-- use the CreateRelease method instead.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.update@.
module Network.Google.Resource.FirebaseRules.Projects.Releases.Update
    (
    -- * REST Resource
      ProjectsReleasesUpdateResource

    -- * Creating a Request
    , projectsReleasesUpdate
    , ProjectsReleasesUpdate

    -- * Request Lenses
    , pruXgafv
    , pruUploadProtocol
    , pruPp
    , pruAccessToken
    , pruUploadType
    , pruPayload
    , pruBearerToken
    , pruName
    , pruCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.releases.update@ method which the
-- 'ProjectsReleasesUpdate' request conforms to.
type ProjectsReleasesUpdateResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Release :> Put '[JSON] Release

-- | Update a \`Release\`. Only updates to the \`ruleset_name\` field will be
-- honored. \`Release\` rename is not supported. To create a \`Release\`
-- use the CreateRelease method instead.
--
-- /See:/ 'projectsReleasesUpdate' smart constructor.
data ProjectsReleasesUpdate = ProjectsReleasesUpdate'
    { _pruXgafv          :: !(Maybe Xgafv)
    , _pruUploadProtocol :: !(Maybe Text)
    , _pruPp             :: !Bool
    , _pruAccessToken    :: !(Maybe Text)
    , _pruUploadType     :: !(Maybe Text)
    , _pruPayload        :: !Release
    , _pruBearerToken    :: !(Maybe Text)
    , _pruName           :: !Text
    , _pruCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsReleasesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pruXgafv'
--
-- * 'pruUploadProtocol'
--
-- * 'pruPp'
--
-- * 'pruAccessToken'
--
-- * 'pruUploadType'
--
-- * 'pruPayload'
--
-- * 'pruBearerToken'
--
-- * 'pruName'
--
-- * 'pruCallback'
projectsReleasesUpdate
    :: Release -- ^ 'pruPayload'
    -> Text -- ^ 'pruName'
    -> ProjectsReleasesUpdate
projectsReleasesUpdate pPruPayload_ pPruName_ =
    ProjectsReleasesUpdate'
    { _pruXgafv = Nothing
    , _pruUploadProtocol = Nothing
    , _pruPp = True
    , _pruAccessToken = Nothing
    , _pruUploadType = Nothing
    , _pruPayload = pPruPayload_
    , _pruBearerToken = Nothing
    , _pruName = pPruName_
    , _pruCallback = Nothing
    }

-- | V1 error format.
pruXgafv :: Lens' ProjectsReleasesUpdate (Maybe Xgafv)
pruXgafv = lens _pruXgafv (\ s a -> s{_pruXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pruUploadProtocol :: Lens' ProjectsReleasesUpdate (Maybe Text)
pruUploadProtocol
  = lens _pruUploadProtocol
      (\ s a -> s{_pruUploadProtocol = a})

-- | Pretty-print response.
pruPp :: Lens' ProjectsReleasesUpdate Bool
pruPp = lens _pruPp (\ s a -> s{_pruPp = a})

-- | OAuth access token.
pruAccessToken :: Lens' ProjectsReleasesUpdate (Maybe Text)
pruAccessToken
  = lens _pruAccessToken
      (\ s a -> s{_pruAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pruUploadType :: Lens' ProjectsReleasesUpdate (Maybe Text)
pruUploadType
  = lens _pruUploadType
      (\ s a -> s{_pruUploadType = a})

-- | Multipart request metadata.
pruPayload :: Lens' ProjectsReleasesUpdate Release
pruPayload
  = lens _pruPayload (\ s a -> s{_pruPayload = a})

-- | OAuth bearer token.
pruBearerToken :: Lens' ProjectsReleasesUpdate (Maybe Text)
pruBearerToken
  = lens _pruBearerToken
      (\ s a -> s{_pruBearerToken = a})

-- | Resource name for the \`Release\`. \`Release\` names may be structured
-- \`app1\/prod\/v2\` or flat \`app1_prod_v2\` which affords developers a
-- great deal of flexibility in mapping the name to the style that best
-- fits their existing development practices. For example, a name could
-- refer to an environment, an app, a version, or some combination of
-- three. In the table below, for the project name \`projects\/foo\`, the
-- following relative release paths show how flat and structured names
-- might be chosen to match a desired development \/ deployment strategy.
-- Use Case | Flat Name | Structured Name
-- -------------|---------------------|---------------- Environments |
-- releases\/qa | releases\/qa Apps | releases\/app1_qa |
-- releases\/app1\/qa Versions | releases\/app1_v2_qa |
-- releases\/app1\/v2\/qa The delimiter between the release name path
-- elements can be almost anything and it should work equally well with the
-- release name list filter, but in many ways the structured paths provide
-- a clearer picture of the relationship between \`Release\` instances.
-- Format: \`projects\/{project_id}\/releases\/{release_id}\`
pruName :: Lens' ProjectsReleasesUpdate Text
pruName = lens _pruName (\ s a -> s{_pruName = a})

-- | JSONP
pruCallback :: Lens' ProjectsReleasesUpdate (Maybe Text)
pruCallback
  = lens _pruCallback (\ s a -> s{_pruCallback = a})

instance GoogleRequest ProjectsReleasesUpdate where
        type Rs ProjectsReleasesUpdate = Release
        type Scopes ProjectsReleasesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient ProjectsReleasesUpdate'{..}
          = go _pruName _pruXgafv _pruUploadProtocol
              (Just _pruPp)
              _pruAccessToken
              _pruUploadType
              _pruBearerToken
              _pruCallback
              (Just AltJSON)
              _pruPayload
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReleasesUpdateResource)
                      mempty
