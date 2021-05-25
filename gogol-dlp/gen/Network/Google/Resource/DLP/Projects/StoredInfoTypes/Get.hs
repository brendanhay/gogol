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
-- Module      : Network.Google.Resource.DLP.Projects.StoredInfoTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.storedInfoTypes.get@.
module Network.Google.Resource.DLP.Projects.StoredInfoTypes.Get
    (
    -- * REST Resource
      ProjectsStoredInfoTypesGetResource

    -- * Creating a Request
    , projectsStoredInfoTypesGet
    , ProjectsStoredInfoTypesGet

    -- * Request Lenses
    , psitgXgafv
    , psitgUploadProtocol
    , psitgAccessToken
    , psitgUploadType
    , psitgName
    , psitgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.storedInfoTypes.get@ method which the
-- 'ProjectsStoredInfoTypesGet' request conforms to.
type ProjectsStoredInfoTypesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Gets a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'projectsStoredInfoTypesGet' smart constructor.
data ProjectsStoredInfoTypesGet =
  ProjectsStoredInfoTypesGet'
    { _psitgXgafv :: !(Maybe Xgafv)
    , _psitgUploadProtocol :: !(Maybe Text)
    , _psitgAccessToken :: !(Maybe Text)
    , _psitgUploadType :: !(Maybe Text)
    , _psitgName :: !Text
    , _psitgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsStoredInfoTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psitgXgafv'
--
-- * 'psitgUploadProtocol'
--
-- * 'psitgAccessToken'
--
-- * 'psitgUploadType'
--
-- * 'psitgName'
--
-- * 'psitgCallback'
projectsStoredInfoTypesGet
    :: Text -- ^ 'psitgName'
    -> ProjectsStoredInfoTypesGet
projectsStoredInfoTypesGet pPsitgName_ =
  ProjectsStoredInfoTypesGet'
    { _psitgXgafv = Nothing
    , _psitgUploadProtocol = Nothing
    , _psitgAccessToken = Nothing
    , _psitgUploadType = Nothing
    , _psitgName = pPsitgName_
    , _psitgCallback = Nothing
    }


-- | V1 error format.
psitgXgafv :: Lens' ProjectsStoredInfoTypesGet (Maybe Xgafv)
psitgXgafv
  = lens _psitgXgafv (\ s a -> s{_psitgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psitgUploadProtocol :: Lens' ProjectsStoredInfoTypesGet (Maybe Text)
psitgUploadProtocol
  = lens _psitgUploadProtocol
      (\ s a -> s{_psitgUploadProtocol = a})

-- | OAuth access token.
psitgAccessToken :: Lens' ProjectsStoredInfoTypesGet (Maybe Text)
psitgAccessToken
  = lens _psitgAccessToken
      (\ s a -> s{_psitgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psitgUploadType :: Lens' ProjectsStoredInfoTypesGet (Maybe Text)
psitgUploadType
  = lens _psitgUploadType
      (\ s a -> s{_psitgUploadType = a})

-- | Required. Resource name of the organization and storedInfoType to be
-- read, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
psitgName :: Lens' ProjectsStoredInfoTypesGet Text
psitgName
  = lens _psitgName (\ s a -> s{_psitgName = a})

-- | JSONP
psitgCallback :: Lens' ProjectsStoredInfoTypesGet (Maybe Text)
psitgCallback
  = lens _psitgCallback
      (\ s a -> s{_psitgCallback = a})

instance GoogleRequest ProjectsStoredInfoTypesGet
         where
        type Rs ProjectsStoredInfoTypesGet =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes ProjectsStoredInfoTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsStoredInfoTypesGet'{..}
          = go _psitgName _psitgXgafv _psitgUploadProtocol
              _psitgAccessToken
              _psitgUploadType
              _psitgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsStoredInfoTypesGetResource)
                      mempty
