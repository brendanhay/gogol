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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.BatchCreate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new occurrences in batch.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.batchCreate@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.BatchCreate
    (
    -- * REST Resource
      ProjectsOccurrencesBatchCreateResource

    -- * Creating a Request
    , projectsOccurrencesBatchCreate
    , ProjectsOccurrencesBatchCreate

    -- * Request Lenses
    , pobcParent
    , pobcXgafv
    , pobcUploadProtocol
    , pobcAccessToken
    , pobcUploadType
    , pobcPayload
    , pobcCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.batchCreate@ method which the
-- 'ProjectsOccurrencesBatchCreate' request conforms to.
type ProjectsOccurrencesBatchCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "occurrences:batchCreate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchCreateOccurrencesRequest :>
                         Post '[JSON] BatchCreateOccurrencesResponse

-- | Creates new occurrences in batch.
--
-- /See:/ 'projectsOccurrencesBatchCreate' smart constructor.
data ProjectsOccurrencesBatchCreate =
  ProjectsOccurrencesBatchCreate'
    { _pobcParent :: !Text
    , _pobcXgafv :: !(Maybe Xgafv)
    , _pobcUploadProtocol :: !(Maybe Text)
    , _pobcAccessToken :: !(Maybe Text)
    , _pobcUploadType :: !(Maybe Text)
    , _pobcPayload :: !BatchCreateOccurrencesRequest
    , _pobcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOccurrencesBatchCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pobcParent'
--
-- * 'pobcXgafv'
--
-- * 'pobcUploadProtocol'
--
-- * 'pobcAccessToken'
--
-- * 'pobcUploadType'
--
-- * 'pobcPayload'
--
-- * 'pobcCallback'
projectsOccurrencesBatchCreate
    :: Text -- ^ 'pobcParent'
    -> BatchCreateOccurrencesRequest -- ^ 'pobcPayload'
    -> ProjectsOccurrencesBatchCreate
projectsOccurrencesBatchCreate pPobcParent_ pPobcPayload_ =
  ProjectsOccurrencesBatchCreate'
    { _pobcParent = pPobcParent_
    , _pobcXgafv = Nothing
    , _pobcUploadProtocol = Nothing
    , _pobcAccessToken = Nothing
    , _pobcUploadType = Nothing
    , _pobcPayload = pPobcPayload_
    , _pobcCallback = Nothing
    }


-- | Required. The name of the project in the form of
-- \`projects\/[PROJECT_ID]\`, under which the occurrences are to be
-- created.
pobcParent :: Lens' ProjectsOccurrencesBatchCreate Text
pobcParent
  = lens _pobcParent (\ s a -> s{_pobcParent = a})

-- | V1 error format.
pobcXgafv :: Lens' ProjectsOccurrencesBatchCreate (Maybe Xgafv)
pobcXgafv
  = lens _pobcXgafv (\ s a -> s{_pobcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pobcUploadProtocol :: Lens' ProjectsOccurrencesBatchCreate (Maybe Text)
pobcUploadProtocol
  = lens _pobcUploadProtocol
      (\ s a -> s{_pobcUploadProtocol = a})

-- | OAuth access token.
pobcAccessToken :: Lens' ProjectsOccurrencesBatchCreate (Maybe Text)
pobcAccessToken
  = lens _pobcAccessToken
      (\ s a -> s{_pobcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pobcUploadType :: Lens' ProjectsOccurrencesBatchCreate (Maybe Text)
pobcUploadType
  = lens _pobcUploadType
      (\ s a -> s{_pobcUploadType = a})

-- | Multipart request metadata.
pobcPayload :: Lens' ProjectsOccurrencesBatchCreate BatchCreateOccurrencesRequest
pobcPayload
  = lens _pobcPayload (\ s a -> s{_pobcPayload = a})

-- | JSONP
pobcCallback :: Lens' ProjectsOccurrencesBatchCreate (Maybe Text)
pobcCallback
  = lens _pobcCallback (\ s a -> s{_pobcCallback = a})

instance GoogleRequest ProjectsOccurrencesBatchCreate
         where
        type Rs ProjectsOccurrencesBatchCreate =
             BatchCreateOccurrencesResponse
        type Scopes ProjectsOccurrencesBatchCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesBatchCreate'{..}
          = go _pobcParent _pobcXgafv _pobcUploadProtocol
              _pobcAccessToken
              _pobcUploadType
              _pobcCallback
              (Just AltJSON)
              _pobcPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsOccurrencesBatchCreateResource)
                      mempty
