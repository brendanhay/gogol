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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Releases.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a \`Release\` by resource name.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.delete@.
module Network.Google.Resource.FirebaseRules.Projects.Releases.Delete
    (
    -- * REST Resource
      ProjectsReleasesDeleteResource

    -- * Creating a Request
    , projectsReleasesDelete
    , ProjectsReleasesDelete

    -- * Request Lenses
    , prdXgafv
    , prdUploadProtocol
    , prdAccessToken
    , prdUploadType
    , prdName
    , prdCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.releases.delete@ method which the
-- 'ProjectsReleasesDelete' request conforms to.
type ProjectsReleasesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Delete a \`Release\` by resource name.
--
-- /See:/ 'projectsReleasesDelete' smart constructor.
data ProjectsReleasesDelete = ProjectsReleasesDelete'
    { _prdXgafv          :: !(Maybe Xgafv)
    , _prdUploadProtocol :: !(Maybe Text)
    , _prdAccessToken    :: !(Maybe Text)
    , _prdUploadType     :: !(Maybe Text)
    , _prdName           :: !Text
    , _prdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsReleasesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prdXgafv'
--
-- * 'prdUploadProtocol'
--
-- * 'prdAccessToken'
--
-- * 'prdUploadType'
--
-- * 'prdName'
--
-- * 'prdCallback'
projectsReleasesDelete
    :: Text -- ^ 'prdName'
    -> ProjectsReleasesDelete
projectsReleasesDelete pPrdName_ =
    ProjectsReleasesDelete'
    { _prdXgafv = Nothing
    , _prdUploadProtocol = Nothing
    , _prdAccessToken = Nothing
    , _prdUploadType = Nothing
    , _prdName = pPrdName_
    , _prdCallback = Nothing
    }

-- | V1 error format.
prdXgafv :: Lens' ProjectsReleasesDelete (Maybe Xgafv)
prdXgafv = lens _prdXgafv (\ s a -> s{_prdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prdUploadProtocol :: Lens' ProjectsReleasesDelete (Maybe Text)
prdUploadProtocol
  = lens _prdUploadProtocol
      (\ s a -> s{_prdUploadProtocol = a})

-- | OAuth access token.
prdAccessToken :: Lens' ProjectsReleasesDelete (Maybe Text)
prdAccessToken
  = lens _prdAccessToken
      (\ s a -> s{_prdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prdUploadType :: Lens' ProjectsReleasesDelete (Maybe Text)
prdUploadType
  = lens _prdUploadType
      (\ s a -> s{_prdUploadType = a})

-- | Resource name for the \`Release\` to delete. Format:
-- \`projects\/{project_id}\/releases\/{release_id}\`
prdName :: Lens' ProjectsReleasesDelete Text
prdName = lens _prdName (\ s a -> s{_prdName = a})

-- | JSONP
prdCallback :: Lens' ProjectsReleasesDelete (Maybe Text)
prdCallback
  = lens _prdCallback (\ s a -> s{_prdCallback = a})

instance GoogleRequest ProjectsReleasesDelete where
        type Rs ProjectsReleasesDelete = Empty
        type Scopes ProjectsReleasesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient ProjectsReleasesDelete'{..}
          = go _prdName _prdXgafv _prdUploadProtocol
              _prdAccessToken
              _prdUploadType
              _prdCallback
              (Just AltJSON)
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReleasesDeleteResource)
                      mempty
