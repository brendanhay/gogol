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
-- Module      : Network.Google.Resource.DLP.Projects.InspectTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.inspectTemplates.delete@.
module Network.Google.Resource.DLP.Projects.InspectTemplates.Delete
    (
    -- * REST Resource
      ProjectsInspectTemplatesDeleteResource

    -- * Creating a Request
    , projectsInspectTemplatesDelete
    , ProjectsInspectTemplatesDelete

    -- * Request Lenses
    , pitdXgafv
    , pitdUploadProtocol
    , pitdAccessToken
    , pitdUploadType
    , pitdName
    , pitdCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.inspectTemplates.delete@ method which the
-- 'ProjectsInspectTemplatesDelete' request conforms to.
type ProjectsInspectTemplatesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsInspectTemplatesDelete' smart constructor.
data ProjectsInspectTemplatesDelete =
  ProjectsInspectTemplatesDelete'
    { _pitdXgafv          :: !(Maybe Xgafv)
    , _pitdUploadProtocol :: !(Maybe Text)
    , _pitdAccessToken    :: !(Maybe Text)
    , _pitdUploadType     :: !(Maybe Text)
    , _pitdName           :: !Text
    , _pitdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInspectTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitdXgafv'
--
-- * 'pitdUploadProtocol'
--
-- * 'pitdAccessToken'
--
-- * 'pitdUploadType'
--
-- * 'pitdName'
--
-- * 'pitdCallback'
projectsInspectTemplatesDelete
    :: Text -- ^ 'pitdName'
    -> ProjectsInspectTemplatesDelete
projectsInspectTemplatesDelete pPitdName_ =
  ProjectsInspectTemplatesDelete'
    { _pitdXgafv = Nothing
    , _pitdUploadProtocol = Nothing
    , _pitdAccessToken = Nothing
    , _pitdUploadType = Nothing
    , _pitdName = pPitdName_
    , _pitdCallback = Nothing
    }


-- | V1 error format.
pitdXgafv :: Lens' ProjectsInspectTemplatesDelete (Maybe Xgafv)
pitdXgafv
  = lens _pitdXgafv (\ s a -> s{_pitdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitdUploadProtocol :: Lens' ProjectsInspectTemplatesDelete (Maybe Text)
pitdUploadProtocol
  = lens _pitdUploadProtocol
      (\ s a -> s{_pitdUploadProtocol = a})

-- | OAuth access token.
pitdAccessToken :: Lens' ProjectsInspectTemplatesDelete (Maybe Text)
pitdAccessToken
  = lens _pitdAccessToken
      (\ s a -> s{_pitdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitdUploadType :: Lens' ProjectsInspectTemplatesDelete (Maybe Text)
pitdUploadType
  = lens _pitdUploadType
      (\ s a -> s{_pitdUploadType = a})

-- | Resource name of the organization and inspectTemplate to be deleted, for
-- example \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
pitdName :: Lens' ProjectsInspectTemplatesDelete Text
pitdName = lens _pitdName (\ s a -> s{_pitdName = a})

-- | JSONP
pitdCallback :: Lens' ProjectsInspectTemplatesDelete (Maybe Text)
pitdCallback
  = lens _pitdCallback (\ s a -> s{_pitdCallback = a})

instance GoogleRequest ProjectsInspectTemplatesDelete
         where
        type Rs ProjectsInspectTemplatesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsInspectTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInspectTemplatesDelete'{..}
          = go _pitdName _pitdXgafv _pitdUploadProtocol
              _pitdAccessToken
              _pitdUploadType
              _pitdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInspectTemplatesDeleteResource)
                      mempty
