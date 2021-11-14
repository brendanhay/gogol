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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified occurrence.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.get@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Get
    (
    -- * REST Resource
      ProjectsOccurrencesGetResource

    -- * Creating a Request
    , projectsOccurrencesGet
    , ProjectsOccurrencesGet

    -- * Request Lenses
    , pogXgafv
    , pogUploadProtocol
    , pogAccessToken
    , pogUploadType
    , pogName
    , pogCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.get@ method which the
-- 'ProjectsOccurrencesGet' request conforms to.
type ProjectsOccurrencesGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Occurrence

-- | Gets the specified occurrence.
--
-- /See:/ 'projectsOccurrencesGet' smart constructor.
data ProjectsOccurrencesGet =
  ProjectsOccurrencesGet'
    { _pogXgafv :: !(Maybe Xgafv)
    , _pogUploadProtocol :: !(Maybe Text)
    , _pogAccessToken :: !(Maybe Text)
    , _pogUploadType :: !(Maybe Text)
    , _pogName :: !Text
    , _pogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOccurrencesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pogXgafv'
--
-- * 'pogUploadProtocol'
--
-- * 'pogAccessToken'
--
-- * 'pogUploadType'
--
-- * 'pogName'
--
-- * 'pogCallback'
projectsOccurrencesGet
    :: Text -- ^ 'pogName'
    -> ProjectsOccurrencesGet
projectsOccurrencesGet pPogName_ =
  ProjectsOccurrencesGet'
    { _pogXgafv = Nothing
    , _pogUploadProtocol = Nothing
    , _pogAccessToken = Nothing
    , _pogUploadType = Nothing
    , _pogName = pPogName_
    , _pogCallback = Nothing
    }


-- | V1 error format.
pogXgafv :: Lens' ProjectsOccurrencesGet (Maybe Xgafv)
pogXgafv = lens _pogXgafv (\ s a -> s{_pogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pogUploadProtocol :: Lens' ProjectsOccurrencesGet (Maybe Text)
pogUploadProtocol
  = lens _pogUploadProtocol
      (\ s a -> s{_pogUploadProtocol = a})

-- | OAuth access token.
pogAccessToken :: Lens' ProjectsOccurrencesGet (Maybe Text)
pogAccessToken
  = lens _pogAccessToken
      (\ s a -> s{_pogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pogUploadType :: Lens' ProjectsOccurrencesGet (Maybe Text)
pogUploadType
  = lens _pogUploadType
      (\ s a -> s{_pogUploadType = a})

-- | Required. The name of the occurrence in the form of
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\`.
pogName :: Lens' ProjectsOccurrencesGet Text
pogName = lens _pogName (\ s a -> s{_pogName = a})

-- | JSONP
pogCallback :: Lens' ProjectsOccurrencesGet (Maybe Text)
pogCallback
  = lens _pogCallback (\ s a -> s{_pogCallback = a})

instance GoogleRequest ProjectsOccurrencesGet where
        type Rs ProjectsOccurrencesGet = Occurrence
        type Scopes ProjectsOccurrencesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesGet'{..}
          = go _pogName _pogXgafv _pogUploadProtocol
              _pogAccessToken
              _pogUploadType
              _pogCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOccurrencesGetResource)
                      mempty
