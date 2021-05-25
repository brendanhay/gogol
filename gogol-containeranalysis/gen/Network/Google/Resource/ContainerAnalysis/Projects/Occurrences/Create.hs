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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new occurrence.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.create@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Create
    (
    -- * REST Resource
      ProjectsOccurrencesCreateResource

    -- * Creating a Request
    , projectsOccurrencesCreate
    , ProjectsOccurrencesCreate

    -- * Request Lenses
    , pocParent
    , pocXgafv
    , pocUploadProtocol
    , pocAccessToken
    , pocUploadType
    , pocPayload
    , pocCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.create@ method which the
-- 'ProjectsOccurrencesCreate' request conforms to.
type ProjectsOccurrencesCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "occurrences" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Occurrence :> Post '[JSON] Occurrence

-- | Creates a new occurrence.
--
-- /See:/ 'projectsOccurrencesCreate' smart constructor.
data ProjectsOccurrencesCreate =
  ProjectsOccurrencesCreate'
    { _pocParent :: !Text
    , _pocXgafv :: !(Maybe Xgafv)
    , _pocUploadProtocol :: !(Maybe Text)
    , _pocAccessToken :: !(Maybe Text)
    , _pocUploadType :: !(Maybe Text)
    , _pocPayload :: !Occurrence
    , _pocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOccurrencesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pocParent'
--
-- * 'pocXgafv'
--
-- * 'pocUploadProtocol'
--
-- * 'pocAccessToken'
--
-- * 'pocUploadType'
--
-- * 'pocPayload'
--
-- * 'pocCallback'
projectsOccurrencesCreate
    :: Text -- ^ 'pocParent'
    -> Occurrence -- ^ 'pocPayload'
    -> ProjectsOccurrencesCreate
projectsOccurrencesCreate pPocParent_ pPocPayload_ =
  ProjectsOccurrencesCreate'
    { _pocParent = pPocParent_
    , _pocXgafv = Nothing
    , _pocUploadProtocol = Nothing
    , _pocAccessToken = Nothing
    , _pocUploadType = Nothing
    , _pocPayload = pPocPayload_
    , _pocCallback = Nothing
    }


-- | Required. The name of the project in the form of
-- \`projects\/[PROJECT_ID]\`, under which the occurrence is to be created.
pocParent :: Lens' ProjectsOccurrencesCreate Text
pocParent
  = lens _pocParent (\ s a -> s{_pocParent = a})

-- | V1 error format.
pocXgafv :: Lens' ProjectsOccurrencesCreate (Maybe Xgafv)
pocXgafv = lens _pocXgafv (\ s a -> s{_pocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pocUploadProtocol :: Lens' ProjectsOccurrencesCreate (Maybe Text)
pocUploadProtocol
  = lens _pocUploadProtocol
      (\ s a -> s{_pocUploadProtocol = a})

-- | OAuth access token.
pocAccessToken :: Lens' ProjectsOccurrencesCreate (Maybe Text)
pocAccessToken
  = lens _pocAccessToken
      (\ s a -> s{_pocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pocUploadType :: Lens' ProjectsOccurrencesCreate (Maybe Text)
pocUploadType
  = lens _pocUploadType
      (\ s a -> s{_pocUploadType = a})

-- | Multipart request metadata.
pocPayload :: Lens' ProjectsOccurrencesCreate Occurrence
pocPayload
  = lens _pocPayload (\ s a -> s{_pocPayload = a})

-- | JSONP
pocCallback :: Lens' ProjectsOccurrencesCreate (Maybe Text)
pocCallback
  = lens _pocCallback (\ s a -> s{_pocCallback = a})

instance GoogleRequest ProjectsOccurrencesCreate
         where
        type Rs ProjectsOccurrencesCreate = Occurrence
        type Scopes ProjectsOccurrencesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesCreate'{..}
          = go _pocParent _pocXgafv _pocUploadProtocol
              _pocAccessToken
              _pocUploadType
              _pocCallback
              (Just AltJSON)
              _pocPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOccurrencesCreateResource)
                      mempty
