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
-- Module      : Network.Google.Resource.Ml.Projects.Models.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a model. You can only delete a model if there are no versions in
-- it. You can delete versions by calling
-- [projects.models.versions.delete](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/delete).
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.models.delete@.
module Network.Google.Resource.Ml.Projects.Models.Delete
    (
    -- * REST Resource
      ProjectsModelsDeleteResource

    -- * Creating a Request
    , projectsModelsDelete
    , ProjectsModelsDelete

    -- * Request Lenses
    , pmdXgafv
    , pmdUploadProtocol
    , pmdPp
    , pmdAccessToken
    , pmdUploadType
    , pmdBearerToken
    , pmdName
    , pmdCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.delete@ method which the
-- 'ProjectsModelsDelete' request conforms to.
type ProjectsModelsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Delete '[JSON] GoogleLongrunning__Operation

-- | Deletes a model. You can only delete a model if there are no versions in
-- it. You can delete versions by calling
-- [projects.models.versions.delete](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/delete).
--
-- /See:/ 'projectsModelsDelete' smart constructor.
data ProjectsModelsDelete = ProjectsModelsDelete'
    { _pmdXgafv          :: !(Maybe Xgafv)
    , _pmdUploadProtocol :: !(Maybe Text)
    , _pmdPp             :: !Bool
    , _pmdAccessToken    :: !(Maybe Text)
    , _pmdUploadType     :: !(Maybe Text)
    , _pmdBearerToken    :: !(Maybe Text)
    , _pmdName           :: !Text
    , _pmdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsModelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdXgafv'
--
-- * 'pmdUploadProtocol'
--
-- * 'pmdPp'
--
-- * 'pmdAccessToken'
--
-- * 'pmdUploadType'
--
-- * 'pmdBearerToken'
--
-- * 'pmdName'
--
-- * 'pmdCallback'
projectsModelsDelete
    :: Text -- ^ 'pmdName'
    -> ProjectsModelsDelete
projectsModelsDelete pPmdName_ =
    ProjectsModelsDelete'
    { _pmdXgafv = Nothing
    , _pmdUploadProtocol = Nothing
    , _pmdPp = True
    , _pmdAccessToken = Nothing
    , _pmdUploadType = Nothing
    , _pmdBearerToken = Nothing
    , _pmdName = pPmdName_
    , _pmdCallback = Nothing
    }

-- | V1 error format.
pmdXgafv :: Lens' ProjectsModelsDelete (Maybe Xgafv)
pmdXgafv = lens _pmdXgafv (\ s a -> s{_pmdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmdUploadProtocol :: Lens' ProjectsModelsDelete (Maybe Text)
pmdUploadProtocol
  = lens _pmdUploadProtocol
      (\ s a -> s{_pmdUploadProtocol = a})

-- | Pretty-print response.
pmdPp :: Lens' ProjectsModelsDelete Bool
pmdPp = lens _pmdPp (\ s a -> s{_pmdPp = a})

-- | OAuth access token.
pmdAccessToken :: Lens' ProjectsModelsDelete (Maybe Text)
pmdAccessToken
  = lens _pmdAccessToken
      (\ s a -> s{_pmdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmdUploadType :: Lens' ProjectsModelsDelete (Maybe Text)
pmdUploadType
  = lens _pmdUploadType
      (\ s a -> s{_pmdUploadType = a})

-- | OAuth bearer token.
pmdBearerToken :: Lens' ProjectsModelsDelete (Maybe Text)
pmdBearerToken
  = lens _pmdBearerToken
      (\ s a -> s{_pmdBearerToken = a})

-- | Required. The name of the model. Authorization: requires \`Editor\` role
-- on the parent project.
pmdName :: Lens' ProjectsModelsDelete Text
pmdName = lens _pmdName (\ s a -> s{_pmdName = a})

-- | JSONP
pmdCallback :: Lens' ProjectsModelsDelete (Maybe Text)
pmdCallback
  = lens _pmdCallback (\ s a -> s{_pmdCallback = a})

instance GoogleRequest ProjectsModelsDelete where
        type Rs ProjectsModelsDelete =
             GoogleLongrunning__Operation
        type Scopes ProjectsModelsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsDelete'{..}
          = go _pmdName _pmdXgafv _pmdUploadProtocol
              (Just _pmdPp)
              _pmdAccessToken
              _pmdUploadType
              _pmdBearerToken
              _pmdCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsDeleteResource)
                      mempty
