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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an instance. Immediately upon completion of the request: *
-- Billing ceases for all of the instance\'s reserved resources. Soon
-- afterward: * The instance and *all of its databases* immediately and
-- irrevocably disappear from the API. All data in the databases is
-- permanently deleted.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.delete@.
module Network.Google.Resource.Spanner.Projects.Instances.Delete
    (
    -- * REST Resource
      ProjectsInstancesDeleteResource

    -- * Creating a Request
    , projectsInstancesDelete
    , ProjectsInstancesDelete

    -- * Request Lenses
    , pidXgafv
    , pidUploadProtocol
    , pidAccessToken
    , pidUploadType
    , pidName
    , pidCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.delete@ method which the
-- 'ProjectsInstancesDelete' request conforms to.
type ProjectsInstancesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an instance. Immediately upon completion of the request: *
-- Billing ceases for all of the instance\'s reserved resources. Soon
-- afterward: * The instance and *all of its databases* immediately and
-- irrevocably disappear from the API. All data in the databases is
-- permanently deleted.
--
-- /See:/ 'projectsInstancesDelete' smart constructor.
data ProjectsInstancesDelete =
  ProjectsInstancesDelete'
    { _pidXgafv          :: !(Maybe Xgafv)
    , _pidUploadProtocol :: !(Maybe Text)
    , _pidAccessToken    :: !(Maybe Text)
    , _pidUploadType     :: !(Maybe Text)
    , _pidName           :: !Text
    , _pidCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidXgafv'
--
-- * 'pidUploadProtocol'
--
-- * 'pidAccessToken'
--
-- * 'pidUploadType'
--
-- * 'pidName'
--
-- * 'pidCallback'
projectsInstancesDelete
    :: Text -- ^ 'pidName'
    -> ProjectsInstancesDelete
projectsInstancesDelete pPidName_ =
  ProjectsInstancesDelete'
    { _pidXgafv = Nothing
    , _pidUploadProtocol = Nothing
    , _pidAccessToken = Nothing
    , _pidUploadType = Nothing
    , _pidName = pPidName_
    , _pidCallback = Nothing
    }


-- | V1 error format.
pidXgafv :: Lens' ProjectsInstancesDelete (Maybe Xgafv)
pidXgafv = lens _pidXgafv (\ s a -> s{_pidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidUploadProtocol :: Lens' ProjectsInstancesDelete (Maybe Text)
pidUploadProtocol
  = lens _pidUploadProtocol
      (\ s a -> s{_pidUploadProtocol = a})

-- | OAuth access token.
pidAccessToken :: Lens' ProjectsInstancesDelete (Maybe Text)
pidAccessToken
  = lens _pidAccessToken
      (\ s a -> s{_pidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidUploadType :: Lens' ProjectsInstancesDelete (Maybe Text)
pidUploadType
  = lens _pidUploadType
      (\ s a -> s{_pidUploadType = a})

-- | Required. The name of the instance to be deleted. Values are of the form
-- \`projects\/\/instances\/\`
pidName :: Lens' ProjectsInstancesDelete Text
pidName = lens _pidName (\ s a -> s{_pidName = a})

-- | JSONP
pidCallback :: Lens' ProjectsInstancesDelete (Maybe Text)
pidCallback
  = lens _pidCallback (\ s a -> s{_pidCallback = a})

instance GoogleRequest ProjectsInstancesDelete where
        type Rs ProjectsInstancesDelete = Empty
        type Scopes ProjectsInstancesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesDelete'{..}
          = go _pidName _pidXgafv _pidUploadProtocol
              _pidAccessToken
              _pidUploadType
              _pidCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesDeleteResource)
                      mempty
