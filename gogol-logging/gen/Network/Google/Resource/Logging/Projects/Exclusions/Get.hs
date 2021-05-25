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
-- Module      : Network.Google.Resource.Logging.Projects.Exclusions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the description of an exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.exclusions.get@.
module Network.Google.Resource.Logging.Projects.Exclusions.Get
    (
    -- * REST Resource
      ProjectsExclusionsGetResource

    -- * Creating a Request
    , projectsExclusionsGet
    , ProjectsExclusionsGet

    -- * Request Lenses
    , pegXgafv
    , pegUploadProtocol
    , pegAccessToken
    , pegUploadType
    , pegName
    , pegCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.exclusions.get@ method which the
-- 'ProjectsExclusionsGet' request conforms to.
type ProjectsExclusionsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogExclusion

-- | Gets the description of an exclusion.
--
-- /See:/ 'projectsExclusionsGet' smart constructor.
data ProjectsExclusionsGet =
  ProjectsExclusionsGet'
    { _pegXgafv :: !(Maybe Xgafv)
    , _pegUploadProtocol :: !(Maybe Text)
    , _pegAccessToken :: !(Maybe Text)
    , _pegUploadType :: !(Maybe Text)
    , _pegName :: !Text
    , _pegCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsExclusionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pegXgafv'
--
-- * 'pegUploadProtocol'
--
-- * 'pegAccessToken'
--
-- * 'pegUploadType'
--
-- * 'pegName'
--
-- * 'pegCallback'
projectsExclusionsGet
    :: Text -- ^ 'pegName'
    -> ProjectsExclusionsGet
projectsExclusionsGet pPegName_ =
  ProjectsExclusionsGet'
    { _pegXgafv = Nothing
    , _pegUploadProtocol = Nothing
    , _pegAccessToken = Nothing
    , _pegUploadType = Nothing
    , _pegName = pPegName_
    , _pegCallback = Nothing
    }


-- | V1 error format.
pegXgafv :: Lens' ProjectsExclusionsGet (Maybe Xgafv)
pegXgafv = lens _pegXgafv (\ s a -> s{_pegXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pegUploadProtocol :: Lens' ProjectsExclusionsGet (Maybe Text)
pegUploadProtocol
  = lens _pegUploadProtocol
      (\ s a -> s{_pegUploadProtocol = a})

-- | OAuth access token.
pegAccessToken :: Lens' ProjectsExclusionsGet (Maybe Text)
pegAccessToken
  = lens _pegAccessToken
      (\ s a -> s{_pegAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pegUploadType :: Lens' ProjectsExclusionsGet (Maybe Text)
pegUploadType
  = lens _pegUploadType
      (\ s a -> s{_pegUploadType = a})

-- | Required. The resource name of an existing exclusion:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
pegName :: Lens' ProjectsExclusionsGet Text
pegName = lens _pegName (\ s a -> s{_pegName = a})

-- | JSONP
pegCallback :: Lens' ProjectsExclusionsGet (Maybe Text)
pegCallback
  = lens _pegCallback (\ s a -> s{_pegCallback = a})

instance GoogleRequest ProjectsExclusionsGet where
        type Rs ProjectsExclusionsGet = LogExclusion
        type Scopes ProjectsExclusionsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsExclusionsGet'{..}
          = go _pegName _pegXgafv _pegUploadProtocol
              _pegAccessToken
              _pegUploadType
              _pegCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsExclusionsGetResource)
                      mempty
