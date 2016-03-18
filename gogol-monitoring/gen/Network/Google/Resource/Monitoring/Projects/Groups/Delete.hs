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
-- Module      : Network.Google.Resource.Monitoring.Projects.Groups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing group.
--
-- /See:/ <https://cloud.google.com/monitoring/alpha/ Google Monitoring API Reference> for @monitoring.projects.groups.delete@.
module Network.Google.Resource.Monitoring.Projects.Groups.Delete
    (
    -- * REST Resource
      ProjectsGroupsDeleteResource

    -- * Creating a Request
    , projectsGroupsDelete
    , ProjectsGroupsDelete

    -- * Request Lenses
    , pgdXgafv
    , pgdUploadProtocol
    , pgdPp
    , pgdAccessToken
    , pgdUploadType
    , pgdBearerToken
    , pgdName
    , pgdCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.groups.delete@ method which the
-- 'ProjectsGroupsDelete' request conforms to.
type ProjectsGroupsDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an existing group.
--
-- /See:/ 'projectsGroupsDelete' smart constructor.
data ProjectsGroupsDelete = ProjectsGroupsDelete
    { _pgdXgafv          :: !(Maybe Text)
    , _pgdUploadProtocol :: !(Maybe Text)
    , _pgdPp             :: !Bool
    , _pgdAccessToken    :: !(Maybe Text)
    , _pgdUploadType     :: !(Maybe Text)
    , _pgdBearerToken    :: !(Maybe Text)
    , _pgdName           :: !Text
    , _pgdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgdXgafv'
--
-- * 'pgdUploadProtocol'
--
-- * 'pgdPp'
--
-- * 'pgdAccessToken'
--
-- * 'pgdUploadType'
--
-- * 'pgdBearerToken'
--
-- * 'pgdName'
--
-- * 'pgdCallback'
projectsGroupsDelete
    :: Text -- ^ 'pgdName'
    -> ProjectsGroupsDelete
projectsGroupsDelete pPgdName_ =
    ProjectsGroupsDelete
    { _pgdXgafv = Nothing
    , _pgdUploadProtocol = Nothing
    , _pgdPp = True
    , _pgdAccessToken = Nothing
    , _pgdUploadType = Nothing
    , _pgdBearerToken = Nothing
    , _pgdName = pPgdName_
    , _pgdCallback = Nothing
    }

-- | V1 error format.
pgdXgafv :: Lens' ProjectsGroupsDelete (Maybe Text)
pgdXgafv = lens _pgdXgafv (\ s a -> s{_pgdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgdUploadProtocol :: Lens' ProjectsGroupsDelete (Maybe Text)
pgdUploadProtocol
  = lens _pgdUploadProtocol
      (\ s a -> s{_pgdUploadProtocol = a})

-- | Pretty-print response.
pgdPp :: Lens' ProjectsGroupsDelete Bool
pgdPp = lens _pgdPp (\ s a -> s{_pgdPp = a})

-- | OAuth access token.
pgdAccessToken :: Lens' ProjectsGroupsDelete (Maybe Text)
pgdAccessToken
  = lens _pgdAccessToken
      (\ s a -> s{_pgdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgdUploadType :: Lens' ProjectsGroupsDelete (Maybe Text)
pgdUploadType
  = lens _pgdUploadType
      (\ s a -> s{_pgdUploadType = a})

-- | OAuth bearer token.
pgdBearerToken :: Lens' ProjectsGroupsDelete (Maybe Text)
pgdBearerToken
  = lens _pgdBearerToken
      (\ s a -> s{_pgdBearerToken = a})

-- | The group to delete. The format is \`\"projects\/ \/groups\/\"\`.
pgdName :: Lens' ProjectsGroupsDelete Text
pgdName = lens _pgdName (\ s a -> s{_pgdName = a})

-- | JSONP
pgdCallback :: Lens' ProjectsGroupsDelete (Maybe Text)
pgdCallback
  = lens _pgdCallback (\ s a -> s{_pgdCallback = a})

instance GoogleRequest ProjectsGroupsDelete where
        type Rs ProjectsGroupsDelete = Empty
        requestClient ProjectsGroupsDelete{..}
          = go _pgdName _pgdXgafv _pgdUploadProtocol
              (Just _pgdPp)
              _pgdAccessToken
              _pgdUploadType
              _pgdBearerToken
              _pgdCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupsDeleteResource)
                      mempty
