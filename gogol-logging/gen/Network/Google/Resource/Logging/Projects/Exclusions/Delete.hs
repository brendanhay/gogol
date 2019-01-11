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
-- Module      : Network.Google.Resource.Logging.Projects.Exclusions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.exclusions.delete@.
module Network.Google.Resource.Logging.Projects.Exclusions.Delete
    (
    -- * REST Resource
      ProjectsExclusionsDeleteResource

    -- * Creating a Request
    , projectsExclusionsDelete
    , ProjectsExclusionsDelete

    -- * Request Lenses
    , pedXgafv
    , pedUploadProtocol
    , pedAccessToken
    , pedUploadType
    , pedName
    , pedCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.exclusions.delete@ method which the
-- 'ProjectsExclusionsDelete' request conforms to.
type ProjectsExclusionsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an exclusion.
--
-- /See:/ 'projectsExclusionsDelete' smart constructor.
data ProjectsExclusionsDelete = ProjectsExclusionsDelete'
    { _pedXgafv          :: !(Maybe Xgafv)
    , _pedUploadProtocol :: !(Maybe Text)
    , _pedAccessToken    :: !(Maybe Text)
    , _pedUploadType     :: !(Maybe Text)
    , _pedName           :: !Text
    , _pedCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsExclusionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pedXgafv'
--
-- * 'pedUploadProtocol'
--
-- * 'pedAccessToken'
--
-- * 'pedUploadType'
--
-- * 'pedName'
--
-- * 'pedCallback'
projectsExclusionsDelete
    :: Text -- ^ 'pedName'
    -> ProjectsExclusionsDelete
projectsExclusionsDelete pPedName_ =
    ProjectsExclusionsDelete'
    { _pedXgafv = Nothing
    , _pedUploadProtocol = Nothing
    , _pedAccessToken = Nothing
    , _pedUploadType = Nothing
    , _pedName = pPedName_
    , _pedCallback = Nothing
    }

-- | V1 error format.
pedXgafv :: Lens' ProjectsExclusionsDelete (Maybe Xgafv)
pedXgafv = lens _pedXgafv (\ s a -> s{_pedXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pedUploadProtocol :: Lens' ProjectsExclusionsDelete (Maybe Text)
pedUploadProtocol
  = lens _pedUploadProtocol
      (\ s a -> s{_pedUploadProtocol = a})

-- | OAuth access token.
pedAccessToken :: Lens' ProjectsExclusionsDelete (Maybe Text)
pedAccessToken
  = lens _pedAccessToken
      (\ s a -> s{_pedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pedUploadType :: Lens' ProjectsExclusionsDelete (Maybe Text)
pedUploadType
  = lens _pedUploadType
      (\ s a -> s{_pedUploadType = a})

-- | Required. The resource name of an existing exclusion to delete:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
pedName :: Lens' ProjectsExclusionsDelete Text
pedName = lens _pedName (\ s a -> s{_pedName = a})

-- | JSONP
pedCallback :: Lens' ProjectsExclusionsDelete (Maybe Text)
pedCallback
  = lens _pedCallback (\ s a -> s{_pedCallback = a})

instance GoogleRequest ProjectsExclusionsDelete where
        type Rs ProjectsExclusionsDelete = Empty
        type Scopes ProjectsExclusionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsExclusionsDelete'{..}
          = go _pedName _pedXgafv _pedUploadProtocol
              _pedAccessToken
              _pedUploadType
              _pedCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsExclusionsDeleteResource)
                      mempty
