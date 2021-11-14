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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified occurrence.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.patch@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Patch
    (
    -- * REST Resource
      ProjectsOccurrencesPatchResource

    -- * Creating a Request
    , projectsOccurrencesPatch
    , ProjectsOccurrencesPatch

    -- * Request Lenses
    , popXgafv
    , popUploadProtocol
    , popUpdateMask
    , popAccessToken
    , popUploadType
    , popPayload
    , popName
    , popCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.patch@ method which the
-- 'ProjectsOccurrencesPatch' request conforms to.
type ProjectsOccurrencesPatchResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Occurrence :>
                         Patch '[JSON] Occurrence

-- | Updates the specified occurrence.
--
-- /See:/ 'projectsOccurrencesPatch' smart constructor.
data ProjectsOccurrencesPatch =
  ProjectsOccurrencesPatch'
    { _popXgafv :: !(Maybe Xgafv)
    , _popUploadProtocol :: !(Maybe Text)
    , _popUpdateMask :: !(Maybe GFieldMask)
    , _popAccessToken :: !(Maybe Text)
    , _popUploadType :: !(Maybe Text)
    , _popPayload :: !Occurrence
    , _popName :: !Text
    , _popCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOccurrencesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'popXgafv'
--
-- * 'popUploadProtocol'
--
-- * 'popUpdateMask'
--
-- * 'popAccessToken'
--
-- * 'popUploadType'
--
-- * 'popPayload'
--
-- * 'popName'
--
-- * 'popCallback'
projectsOccurrencesPatch
    :: Occurrence -- ^ 'popPayload'
    -> Text -- ^ 'popName'
    -> ProjectsOccurrencesPatch
projectsOccurrencesPatch pPopPayload_ pPopName_ =
  ProjectsOccurrencesPatch'
    { _popXgafv = Nothing
    , _popUploadProtocol = Nothing
    , _popUpdateMask = Nothing
    , _popAccessToken = Nothing
    , _popUploadType = Nothing
    , _popPayload = pPopPayload_
    , _popName = pPopName_
    , _popCallback = Nothing
    }


-- | V1 error format.
popXgafv :: Lens' ProjectsOccurrencesPatch (Maybe Xgafv)
popXgafv = lens _popXgafv (\ s a -> s{_popXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
popUploadProtocol :: Lens' ProjectsOccurrencesPatch (Maybe Text)
popUploadProtocol
  = lens _popUploadProtocol
      (\ s a -> s{_popUploadProtocol = a})

-- | The fields to update.
popUpdateMask :: Lens' ProjectsOccurrencesPatch (Maybe GFieldMask)
popUpdateMask
  = lens _popUpdateMask
      (\ s a -> s{_popUpdateMask = a})

-- | OAuth access token.
popAccessToken :: Lens' ProjectsOccurrencesPatch (Maybe Text)
popAccessToken
  = lens _popAccessToken
      (\ s a -> s{_popAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
popUploadType :: Lens' ProjectsOccurrencesPatch (Maybe Text)
popUploadType
  = lens _popUploadType
      (\ s a -> s{_popUploadType = a})

-- | Multipart request metadata.
popPayload :: Lens' ProjectsOccurrencesPatch Occurrence
popPayload
  = lens _popPayload (\ s a -> s{_popPayload = a})

-- | Required. The name of the occurrence in the form of
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\`.
popName :: Lens' ProjectsOccurrencesPatch Text
popName = lens _popName (\ s a -> s{_popName = a})

-- | JSONP
popCallback :: Lens' ProjectsOccurrencesPatch (Maybe Text)
popCallback
  = lens _popCallback (\ s a -> s{_popCallback = a})

instance GoogleRequest ProjectsOccurrencesPatch where
        type Rs ProjectsOccurrencesPatch = Occurrence
        type Scopes ProjectsOccurrencesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesPatch'{..}
          = go _popName _popXgafv _popUploadProtocol
              _popUpdateMask
              _popAccessToken
              _popUploadType
              _popCallback
              (Just AltJSON)
              _popPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOccurrencesPatchResource)
                      mempty
