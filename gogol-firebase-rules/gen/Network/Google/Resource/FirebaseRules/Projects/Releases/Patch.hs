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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Releases.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a \`Release\` via PATCH. Only updates to the \`ruleset_name\` and
-- \`test_suite_name\` fields will be honored. \`Release\` rename is not
-- supported. To create a \`Release\` use the CreateRelease method.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.patch@.
module Network.Google.Resource.FirebaseRules.Projects.Releases.Patch
    (
    -- * REST Resource
      ProjectsReleasesPatchResource

    -- * Creating a Request
    , projectsReleasesPatch
    , ProjectsReleasesPatch

    -- * Request Lenses
    , prpXgafv
    , prpUploadProtocol
    , prpAccessToken
    , prpUploadType
    , prpPayload
    , prpName
    , prpCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.releases.patch@ method which the
-- 'ProjectsReleasesPatch' request conforms to.
type ProjectsReleasesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateReleaseRequest :>
                       Patch '[JSON] Release

-- | Update a \`Release\` via PATCH. Only updates to the \`ruleset_name\` and
-- \`test_suite_name\` fields will be honored. \`Release\` rename is not
-- supported. To create a \`Release\` use the CreateRelease method.
--
-- /See:/ 'projectsReleasesPatch' smart constructor.
data ProjectsReleasesPatch =
  ProjectsReleasesPatch'
    { _prpXgafv          :: !(Maybe Xgafv)
    , _prpUploadProtocol :: !(Maybe Text)
    , _prpAccessToken    :: !(Maybe Text)
    , _prpUploadType     :: !(Maybe Text)
    , _prpPayload        :: !UpdateReleaseRequest
    , _prpName           :: !Text
    , _prpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReleasesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prpXgafv'
--
-- * 'prpUploadProtocol'
--
-- * 'prpAccessToken'
--
-- * 'prpUploadType'
--
-- * 'prpPayload'
--
-- * 'prpName'
--
-- * 'prpCallback'
projectsReleasesPatch
    :: UpdateReleaseRequest -- ^ 'prpPayload'
    -> Text -- ^ 'prpName'
    -> ProjectsReleasesPatch
projectsReleasesPatch pPrpPayload_ pPrpName_ =
  ProjectsReleasesPatch'
    { _prpXgafv = Nothing
    , _prpUploadProtocol = Nothing
    , _prpAccessToken = Nothing
    , _prpUploadType = Nothing
    , _prpPayload = pPrpPayload_
    , _prpName = pPrpName_
    , _prpCallback = Nothing
    }


-- | V1 error format.
prpXgafv :: Lens' ProjectsReleasesPatch (Maybe Xgafv)
prpXgafv = lens _prpXgafv (\ s a -> s{_prpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prpUploadProtocol :: Lens' ProjectsReleasesPatch (Maybe Text)
prpUploadProtocol
  = lens _prpUploadProtocol
      (\ s a -> s{_prpUploadProtocol = a})

-- | OAuth access token.
prpAccessToken :: Lens' ProjectsReleasesPatch (Maybe Text)
prpAccessToken
  = lens _prpAccessToken
      (\ s a -> s{_prpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prpUploadType :: Lens' ProjectsReleasesPatch (Maybe Text)
prpUploadType
  = lens _prpUploadType
      (\ s a -> s{_prpUploadType = a})

-- | Multipart request metadata.
prpPayload :: Lens' ProjectsReleasesPatch UpdateReleaseRequest
prpPayload
  = lens _prpPayload (\ s a -> s{_prpPayload = a})

-- | Resource name for the project which owns this \`Release\`. Format:
-- \`projects\/{project_id}\`
prpName :: Lens' ProjectsReleasesPatch Text
prpName = lens _prpName (\ s a -> s{_prpName = a})

-- | JSONP
prpCallback :: Lens' ProjectsReleasesPatch (Maybe Text)
prpCallback
  = lens _prpCallback (\ s a -> s{_prpCallback = a})

instance GoogleRequest ProjectsReleasesPatch where
        type Rs ProjectsReleasesPatch = Release
        type Scopes ProjectsReleasesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient ProjectsReleasesPatch'{..}
          = go _prpName _prpXgafv _prpUploadProtocol
              _prpAccessToken
              _prpUploadType
              _prpCallback
              (Just AltJSON)
              _prpPayload
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReleasesPatchResource)
                      mempty
