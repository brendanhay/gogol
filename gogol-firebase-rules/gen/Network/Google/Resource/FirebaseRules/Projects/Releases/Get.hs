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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Releases.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a \`Release\` by name.
--
-- /See:/ <https://firebase.google.com/docs/storage/security/start Firebase Rules API Reference> for @firebaserules.projects.releases.get@.
module Network.Google.Resource.FirebaseRules.Projects.Releases.Get
    (
    -- * REST Resource
      ProjectsReleasesGetResource

    -- * Creating a Request
    , projectsReleasesGet
    , ProjectsReleasesGet

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pPp
    , pAccessToken
    , pUploadType
    , pBearerToken
    , pName
    , pCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.releases.get@ method which the
-- 'ProjectsReleasesGet' request conforms to.
type ProjectsReleasesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Release

-- | Get a \`Release\` by name.
--
-- /See:/ 'projectsReleasesGet' smart constructor.
data ProjectsReleasesGet = ProjectsReleasesGet'
    { _pXgafv          :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pPp             :: !Bool
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pBearerToken    :: !(Maybe Text)
    , _pName           :: !Text
    , _pCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsReleasesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pPp'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pBearerToken'
--
-- * 'pName'
--
-- * 'pCallback'
projectsReleasesGet
    :: Text -- ^ 'pName'
    -> ProjectsReleasesGet
projectsReleasesGet pPName_ =
    ProjectsReleasesGet'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pPp = True
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pBearerToken = Nothing
    , _pName = pPName_
    , _pCallback = Nothing
    }

-- | V1 error format.
pXgafv :: Lens' ProjectsReleasesGet (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsReleasesGet (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | Pretty-print response.
pPp :: Lens' ProjectsReleasesGet Bool
pPp = lens _pPp (\ s a -> s{_pPp = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsReleasesGet (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsReleasesGet (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | OAuth bearer token.
pBearerToken :: Lens' ProjectsReleasesGet (Maybe Text)
pBearerToken
  = lens _pBearerToken (\ s a -> s{_pBearerToken = a})

-- | Resource name of the \`Release\`. Format:
-- \`projects\/{project_id}\/releases\/{release_id}\`
pName :: Lens' ProjectsReleasesGet Text
pName = lens _pName (\ s a -> s{_pName = a})

-- | JSONP
pCallback :: Lens' ProjectsReleasesGet (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsReleasesGet where
        type Rs ProjectsReleasesGet = Release
        type Scopes ProjectsReleasesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsReleasesGet'{..}
          = go _pName _pXgafv _pUploadProtocol (Just _pPp)
              _pAccessToken
              _pUploadType
              _pBearerToken
              _pCallback
              (Just AltJSON)
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReleasesGetResource)
                      mempty
