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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Releases.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a \`Release\`. Release names should reflect the developer\'s
-- deployment practices. For example, the release name may include the
-- environment name, application name, application version, or any other
-- name meaningful to the developer. Once a \`Release\` refers to a
-- \`Ruleset\`, the rules can be enforced by Firebase Rules-enabled
-- services. More than one \`Release\` may be \'live\' concurrently.
-- Consider the following three \`Release\` names for \`projects\/foo\` and
-- the \`Ruleset\` to which they refer. Release Name | Ruleset Name
-- --------------------------------|-------------
-- projects\/foo\/releases\/prod | projects\/foo\/rulesets\/uuid123
-- projects\/foo\/releases\/prod\/beta | projects\/foo\/rulesets\/uuid123
-- projects\/foo\/releases\/prod\/v23 | projects\/foo\/rulesets\/uuid456
-- The table reflects the \`Ruleset\` rollout in progress. The \`prod\` and
-- \`prod\/beta\` releases refer to the same \`Ruleset\`. However,
-- \`prod\/v23\` refers to a new \`Ruleset\`. The \`Ruleset\` reference for
-- a \`Release\` may be updated using the UpdateRelease method.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.create@.
module Network.Google.Resource.FirebaseRules.Projects.Releases.Create
    (
    -- * REST Resource
      ProjectsReleasesCreateResource

    -- * Creating a Request
    , projectsReleasesCreate
    , ProjectsReleasesCreate

    -- * Request Lenses
    , prcrXgafv
    , prcrUploadProtocol
    , prcrAccessToken
    , prcrUploadType
    , prcrPayload
    , prcrName
    , prcrCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.releases.create@ method which the
-- 'ProjectsReleasesCreate' request conforms to.
type ProjectsReleasesCreateResource =
     "v1" :>
       Capture "name" Text :>
         "releases" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Release :> Post '[JSON] Release

-- | Create a \`Release\`. Release names should reflect the developer\'s
-- deployment practices. For example, the release name may include the
-- environment name, application name, application version, or any other
-- name meaningful to the developer. Once a \`Release\` refers to a
-- \`Ruleset\`, the rules can be enforced by Firebase Rules-enabled
-- services. More than one \`Release\` may be \'live\' concurrently.
-- Consider the following three \`Release\` names for \`projects\/foo\` and
-- the \`Ruleset\` to which they refer. Release Name | Ruleset Name
-- --------------------------------|-------------
-- projects\/foo\/releases\/prod | projects\/foo\/rulesets\/uuid123
-- projects\/foo\/releases\/prod\/beta | projects\/foo\/rulesets\/uuid123
-- projects\/foo\/releases\/prod\/v23 | projects\/foo\/rulesets\/uuid456
-- The table reflects the \`Ruleset\` rollout in progress. The \`prod\` and
-- \`prod\/beta\` releases refer to the same \`Ruleset\`. However,
-- \`prod\/v23\` refers to a new \`Ruleset\`. The \`Ruleset\` reference for
-- a \`Release\` may be updated using the UpdateRelease method.
--
-- /See:/ 'projectsReleasesCreate' smart constructor.
data ProjectsReleasesCreate =
  ProjectsReleasesCreate'
    { _prcrXgafv          :: !(Maybe Xgafv)
    , _prcrUploadProtocol :: !(Maybe Text)
    , _prcrAccessToken    :: !(Maybe Text)
    , _prcrUploadType     :: !(Maybe Text)
    , _prcrPayload        :: !Release
    , _prcrName           :: !Text
    , _prcrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReleasesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcrXgafv'
--
-- * 'prcrUploadProtocol'
--
-- * 'prcrAccessToken'
--
-- * 'prcrUploadType'
--
-- * 'prcrPayload'
--
-- * 'prcrName'
--
-- * 'prcrCallback'
projectsReleasesCreate
    :: Release -- ^ 'prcrPayload'
    -> Text -- ^ 'prcrName'
    -> ProjectsReleasesCreate
projectsReleasesCreate pPrcrPayload_ pPrcrName_ =
  ProjectsReleasesCreate'
    { _prcrXgafv = Nothing
    , _prcrUploadProtocol = Nothing
    , _prcrAccessToken = Nothing
    , _prcrUploadType = Nothing
    , _prcrPayload = pPrcrPayload_
    , _prcrName = pPrcrName_
    , _prcrCallback = Nothing
    }


-- | V1 error format.
prcrXgafv :: Lens' ProjectsReleasesCreate (Maybe Xgafv)
prcrXgafv
  = lens _prcrXgafv (\ s a -> s{_prcrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcrUploadProtocol :: Lens' ProjectsReleasesCreate (Maybe Text)
prcrUploadProtocol
  = lens _prcrUploadProtocol
      (\ s a -> s{_prcrUploadProtocol = a})

-- | OAuth access token.
prcrAccessToken :: Lens' ProjectsReleasesCreate (Maybe Text)
prcrAccessToken
  = lens _prcrAccessToken
      (\ s a -> s{_prcrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcrUploadType :: Lens' ProjectsReleasesCreate (Maybe Text)
prcrUploadType
  = lens _prcrUploadType
      (\ s a -> s{_prcrUploadType = a})

-- | Multipart request metadata.
prcrPayload :: Lens' ProjectsReleasesCreate Release
prcrPayload
  = lens _prcrPayload (\ s a -> s{_prcrPayload = a})

-- | Resource name for the project which owns this \`Release\`. Format:
-- \`projects\/{project_id}\`
prcrName :: Lens' ProjectsReleasesCreate Text
prcrName = lens _prcrName (\ s a -> s{_prcrName = a})

-- | JSONP
prcrCallback :: Lens' ProjectsReleasesCreate (Maybe Text)
prcrCallback
  = lens _prcrCallback (\ s a -> s{_prcrCallback = a})

instance GoogleRequest ProjectsReleasesCreate where
        type Rs ProjectsReleasesCreate = Release
        type Scopes ProjectsReleasesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient ProjectsReleasesCreate'{..}
          = go _prcrName _prcrXgafv _prcrUploadProtocol
              _prcrAccessToken
              _prcrUploadType
              _prcrCallback
              (Just AltJSON)
              _prcrPayload
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReleasesCreateResource)
                      mempty
