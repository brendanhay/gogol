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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Test
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Test \`Source\` for syntactic and semantic correctness. Issues present,
-- if any, will be returned to the caller with a description, severity, and
-- source location. The test method may be executed with \`Source\` or a
-- \`Ruleset\` name. Passing \`Source\` is useful for unit testing new
-- rules. Passing a \`Ruleset\` name is useful for regression testing an
-- existing rule. The following is an example of \`Source\` that permits
-- users to upload images to a bucket bearing their user id and matching
-- the correct metadata: _*Example*_ \/\/ Users are allowed to subscribe
-- and unsubscribe to the blog. service firebase.storage { match
-- \/users\/{userId}\/images\/{imageName} { allow write: if userId ==
-- request.auth.uid && (imageName.matches(\'*.png$\') ||
-- imageName.matches(\'*.jpg$\')) &&
-- resource.mimeType.matches(\'^image\/\') } }
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.test@.
module Network.Google.Resource.FirebaseRules.Projects.Test
    (
    -- * REST Resource
      ProjectsTestResource

    -- * Creating a Request
    , projectsTest
    , ProjectsTest

    -- * Request Lenses
    , ptXgafv
    , ptUploadProtocol
    , ptAccessToken
    , ptUploadType
    , ptPayload
    , ptName
    , ptCallback
    ) where

import Network.Google.FirebaseRules.Types
import Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.test@ method which the
-- 'ProjectsTest' request conforms to.
type ProjectsTestResource =
     "v1" :>
       CaptureMode "name" "test" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestRulesetRequest :>
                       Post '[JSON] TestRulesetResponse

-- | Test \`Source\` for syntactic and semantic correctness. Issues present,
-- if any, will be returned to the caller with a description, severity, and
-- source location. The test method may be executed with \`Source\` or a
-- \`Ruleset\` name. Passing \`Source\` is useful for unit testing new
-- rules. Passing a \`Ruleset\` name is useful for regression testing an
-- existing rule. The following is an example of \`Source\` that permits
-- users to upload images to a bucket bearing their user id and matching
-- the correct metadata: _*Example*_ \/\/ Users are allowed to subscribe
-- and unsubscribe to the blog. service firebase.storage { match
-- \/users\/{userId}\/images\/{imageName} { allow write: if userId ==
-- request.auth.uid && (imageName.matches(\'*.png$\') ||
-- imageName.matches(\'*.jpg$\')) &&
-- resource.mimeType.matches(\'^image\/\') } }
--
-- /See:/ 'projectsTest' smart constructor.
data ProjectsTest =
  ProjectsTest'
    { _ptXgafv :: !(Maybe Xgafv)
    , _ptUploadProtocol :: !(Maybe Text)
    , _ptAccessToken :: !(Maybe Text)
    , _ptUploadType :: !(Maybe Text)
    , _ptPayload :: !TestRulesetRequest
    , _ptName :: !Text
    , _ptCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptXgafv'
--
-- * 'ptUploadProtocol'
--
-- * 'ptAccessToken'
--
-- * 'ptUploadType'
--
-- * 'ptPayload'
--
-- * 'ptName'
--
-- * 'ptCallback'
projectsTest
    :: TestRulesetRequest -- ^ 'ptPayload'
    -> Text -- ^ 'ptName'
    -> ProjectsTest
projectsTest pPtPayload_ pPtName_ =
  ProjectsTest'
    { _ptXgafv = Nothing
    , _ptUploadProtocol = Nothing
    , _ptAccessToken = Nothing
    , _ptUploadType = Nothing
    , _ptPayload = pPtPayload_
    , _ptName = pPtName_
    , _ptCallback = Nothing
    }


-- | V1 error format.
ptXgafv :: Lens' ProjectsTest (Maybe Xgafv)
ptXgafv = lens _ptXgafv (\ s a -> s{_ptXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptUploadProtocol :: Lens' ProjectsTest (Maybe Text)
ptUploadProtocol
  = lens _ptUploadProtocol
      (\ s a -> s{_ptUploadProtocol = a})

-- | OAuth access token.
ptAccessToken :: Lens' ProjectsTest (Maybe Text)
ptAccessToken
  = lens _ptAccessToken
      (\ s a -> s{_ptAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptUploadType :: Lens' ProjectsTest (Maybe Text)
ptUploadType
  = lens _ptUploadType (\ s a -> s{_ptUploadType = a})

-- | Multipart request metadata.
ptPayload :: Lens' ProjectsTest TestRulesetRequest
ptPayload
  = lens _ptPayload (\ s a -> s{_ptPayload = a})

-- | Required. Tests may either provide \`source\` or a \`Ruleset\` resource
-- name. For tests against \`source\`, the resource name must refer to the
-- project: Format: \`projects\/{project_id}\` For tests against a
-- \`Ruleset\`, this must be the \`Ruleset\` resource name: Format:
-- \`projects\/{project_id}\/rulesets\/{ruleset_id}\`
ptName :: Lens' ProjectsTest Text
ptName = lens _ptName (\ s a -> s{_ptName = a})

-- | JSONP
ptCallback :: Lens' ProjectsTest (Maybe Text)
ptCallback
  = lens _ptCallback (\ s a -> s{_ptCallback = a})

instance GoogleRequest ProjectsTest where
        type Rs ProjectsTest = TestRulesetResponse
        type Scopes ProjectsTest =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient ProjectsTest'{..}
          = go _ptName _ptXgafv _ptUploadProtocol
              _ptAccessToken
              _ptUploadType
              _ptCallback
              (Just AltJSON)
              _ptPayload
              firebaseRulesService
          where go
                  = buildClient (Proxy :: Proxy ProjectsTestResource)
                      mempty
