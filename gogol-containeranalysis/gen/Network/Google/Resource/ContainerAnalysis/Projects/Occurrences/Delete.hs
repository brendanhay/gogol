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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified occurrence. For example, use this method to delete
-- an occurrence when the occurrence is no longer applicable for the given
-- resource.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.delete@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Delete
    (
    -- * REST Resource
      ProjectsOccurrencesDeleteResource

    -- * Creating a Request
    , projectsOccurrencesDelete
    , ProjectsOccurrencesDelete

    -- * Request Lenses
    , podXgafv
    , podUploadProtocol
    , podAccessToken
    , podUploadType
    , podName
    , podCallback
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.delete@ method which the
-- 'ProjectsOccurrencesDelete' request conforms to.
type ProjectsOccurrencesDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified occurrence. For example, use this method to delete
-- an occurrence when the occurrence is no longer applicable for the given
-- resource.
--
-- /See:/ 'projectsOccurrencesDelete' smart constructor.
data ProjectsOccurrencesDelete = ProjectsOccurrencesDelete'
    { _podXgafv          :: !(Maybe Xgafv)
    , _podUploadProtocol :: !(Maybe Text)
    , _podAccessToken    :: !(Maybe Text)
    , _podUploadType     :: !(Maybe Text)
    , _podName           :: !Text
    , _podCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsOccurrencesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'podXgafv'
--
-- * 'podUploadProtocol'
--
-- * 'podAccessToken'
--
-- * 'podUploadType'
--
-- * 'podName'
--
-- * 'podCallback'
projectsOccurrencesDelete
    :: Text -- ^ 'podName'
    -> ProjectsOccurrencesDelete
projectsOccurrencesDelete pPodName_ =
    ProjectsOccurrencesDelete'
    { _podXgafv = Nothing
    , _podUploadProtocol = Nothing
    , _podAccessToken = Nothing
    , _podUploadType = Nothing
    , _podName = pPodName_
    , _podCallback = Nothing
    }

-- | V1 error format.
podXgafv :: Lens' ProjectsOccurrencesDelete (Maybe Xgafv)
podXgafv = lens _podXgafv (\ s a -> s{_podXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
podUploadProtocol :: Lens' ProjectsOccurrencesDelete (Maybe Text)
podUploadProtocol
  = lens _podUploadProtocol
      (\ s a -> s{_podUploadProtocol = a})

-- | OAuth access token.
podAccessToken :: Lens' ProjectsOccurrencesDelete (Maybe Text)
podAccessToken
  = lens _podAccessToken
      (\ s a -> s{_podAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
podUploadType :: Lens' ProjectsOccurrencesDelete (Maybe Text)
podUploadType
  = lens _podUploadType
      (\ s a -> s{_podUploadType = a})

-- | The name of the occurrence in the form of
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\`.
podName :: Lens' ProjectsOccurrencesDelete Text
podName = lens _podName (\ s a -> s{_podName = a})

-- | JSONP
podCallback :: Lens' ProjectsOccurrencesDelete (Maybe Text)
podCallback
  = lens _podCallback (\ s a -> s{_podCallback = a})

instance GoogleRequest ProjectsOccurrencesDelete
         where
        type Rs ProjectsOccurrencesDelete = Empty
        type Scopes ProjectsOccurrencesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesDelete'{..}
          = go _podName _podXgafv _podUploadProtocol
              _podAccessToken
              _podUploadType
              _podCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOccurrencesDeleteResource)
                      mempty
