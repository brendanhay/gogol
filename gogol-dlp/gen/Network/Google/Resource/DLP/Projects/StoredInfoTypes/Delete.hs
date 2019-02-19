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
-- Module      : Network.Google.Resource.DLP.Projects.StoredInfoTypes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.storedInfoTypes.delete@.
module Network.Google.Resource.DLP.Projects.StoredInfoTypes.Delete
    (
    -- * REST Resource
      ProjectsStoredInfoTypesDeleteResource

    -- * Creating a Request
    , projectsStoredInfoTypesDelete
    , ProjectsStoredInfoTypesDelete

    -- * Request Lenses
    , psitdXgafv
    , psitdUploadProtocol
    , psitdAccessToken
    , psitdUploadType
    , psitdName
    , psitdCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.storedInfoTypes.delete@ method which the
-- 'ProjectsStoredInfoTypesDelete' request conforms to.
type ProjectsStoredInfoTypesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'projectsStoredInfoTypesDelete' smart constructor.
data ProjectsStoredInfoTypesDelete =
  ProjectsStoredInfoTypesDelete'
    { _psitdXgafv          :: !(Maybe Xgafv)
    , _psitdUploadProtocol :: !(Maybe Text)
    , _psitdAccessToken    :: !(Maybe Text)
    , _psitdUploadType     :: !(Maybe Text)
    , _psitdName           :: !Text
    , _psitdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsStoredInfoTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psitdXgafv'
--
-- * 'psitdUploadProtocol'
--
-- * 'psitdAccessToken'
--
-- * 'psitdUploadType'
--
-- * 'psitdName'
--
-- * 'psitdCallback'
projectsStoredInfoTypesDelete
    :: Text -- ^ 'psitdName'
    -> ProjectsStoredInfoTypesDelete
projectsStoredInfoTypesDelete pPsitdName_ =
  ProjectsStoredInfoTypesDelete'
    { _psitdXgafv = Nothing
    , _psitdUploadProtocol = Nothing
    , _psitdAccessToken = Nothing
    , _psitdUploadType = Nothing
    , _psitdName = pPsitdName_
    , _psitdCallback = Nothing
    }

-- | V1 error format.
psitdXgafv :: Lens' ProjectsStoredInfoTypesDelete (Maybe Xgafv)
psitdXgafv
  = lens _psitdXgafv (\ s a -> s{_psitdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psitdUploadProtocol :: Lens' ProjectsStoredInfoTypesDelete (Maybe Text)
psitdUploadProtocol
  = lens _psitdUploadProtocol
      (\ s a -> s{_psitdUploadProtocol = a})

-- | OAuth access token.
psitdAccessToken :: Lens' ProjectsStoredInfoTypesDelete (Maybe Text)
psitdAccessToken
  = lens _psitdAccessToken
      (\ s a -> s{_psitdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psitdUploadType :: Lens' ProjectsStoredInfoTypesDelete (Maybe Text)
psitdUploadType
  = lens _psitdUploadType
      (\ s a -> s{_psitdUploadType = a})

-- | Resource name of the organization and storedInfoType to be deleted, for
-- example \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
psitdName :: Lens' ProjectsStoredInfoTypesDelete Text
psitdName
  = lens _psitdName (\ s a -> s{_psitdName = a})

-- | JSONP
psitdCallback :: Lens' ProjectsStoredInfoTypesDelete (Maybe Text)
psitdCallback
  = lens _psitdCallback
      (\ s a -> s{_psitdCallback = a})

instance GoogleRequest ProjectsStoredInfoTypesDelete
         where
        type Rs ProjectsStoredInfoTypesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsStoredInfoTypesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsStoredInfoTypesDelete'{..}
          = go _psitdName _psitdXgafv _psitdUploadProtocol
              _psitdAccessToken
              _psitdUploadType
              _psitdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsStoredInfoTypesDeleteResource)
                      mempty
