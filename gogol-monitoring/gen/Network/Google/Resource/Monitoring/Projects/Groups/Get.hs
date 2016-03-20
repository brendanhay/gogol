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
-- Module      : Network.Google.Resource.Monitoring.Projects.Groups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single group.
--
-- /See:/ <https://cloud.google.com/monitoring/alpha/ Google Monitoring API Reference> for @monitoring.projects.groups.get@.
module Network.Google.Resource.Monitoring.Projects.Groups.Get
    (
    -- * REST Resource
      ProjectsGroupsGetResource

    -- * Creating a Request
    , projectsGroupsGet
    , ProjectsGroupsGet

    -- * Request Lenses
    , pggXgafv
    , pggUploadProtocol
    , pggPp
    , pggAccessToken
    , pggUploadType
    , pggBearerToken
    , pggName
    , pggCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.groups.get@ method which the
-- 'ProjectsGroupsGet' request conforms to.
type ProjectsGroupsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Group

-- | Gets a single group.
--
-- /See:/ 'projectsGroupsGet' smart constructor.
data ProjectsGroupsGet = ProjectsGroupsGet
    { _pggXgafv          :: !(Maybe Text)
    , _pggUploadProtocol :: !(Maybe Text)
    , _pggPp             :: !Bool
    , _pggAccessToken    :: !(Maybe Text)
    , _pggUploadType     :: !(Maybe Text)
    , _pggBearerToken    :: !(Maybe Text)
    , _pggName           :: !Text
    , _pggCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggXgafv'
--
-- * 'pggUploadProtocol'
--
-- * 'pggPp'
--
-- * 'pggAccessToken'
--
-- * 'pggUploadType'
--
-- * 'pggBearerToken'
--
-- * 'pggName'
--
-- * 'pggCallback'
projectsGroupsGet
    :: Text -- ^ 'pggName'
    -> ProjectsGroupsGet
projectsGroupsGet pPggName_ =
    ProjectsGroupsGet
    { _pggXgafv = Nothing
    , _pggUploadProtocol = Nothing
    , _pggPp = True
    , _pggAccessToken = Nothing
    , _pggUploadType = Nothing
    , _pggBearerToken = Nothing
    , _pggName = pPggName_
    , _pggCallback = Nothing
    }

-- | V1 error format.
pggXgafv :: Lens' ProjectsGroupsGet (Maybe Text)
pggXgafv = lens _pggXgafv (\ s a -> s{_pggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pggUploadProtocol :: Lens' ProjectsGroupsGet (Maybe Text)
pggUploadProtocol
  = lens _pggUploadProtocol
      (\ s a -> s{_pggUploadProtocol = a})

-- | Pretty-print response.
pggPp :: Lens' ProjectsGroupsGet Bool
pggPp = lens _pggPp (\ s a -> s{_pggPp = a})

-- | OAuth access token.
pggAccessToken :: Lens' ProjectsGroupsGet (Maybe Text)
pggAccessToken
  = lens _pggAccessToken
      (\ s a -> s{_pggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pggUploadType :: Lens' ProjectsGroupsGet (Maybe Text)
pggUploadType
  = lens _pggUploadType
      (\ s a -> s{_pggUploadType = a})

-- | OAuth bearer token.
pggBearerToken :: Lens' ProjectsGroupsGet (Maybe Text)
pggBearerToken
  = lens _pggBearerToken
      (\ s a -> s{_pggBearerToken = a})

-- | The group to retrieve. The format is \`\"projects\/ \/groups\/\"\`.
pggName :: Lens' ProjectsGroupsGet Text
pggName = lens _pggName (\ s a -> s{_pggName = a})

-- | JSONP
pggCallback :: Lens' ProjectsGroupsGet (Maybe Text)
pggCallback
  = lens _pggCallback (\ s a -> s{_pggCallback = a})

instance GoogleRequest ProjectsGroupsGet where
        type Rs ProjectsGroupsGet = Group
        requestClient ProjectsGroupsGet{..}
          = go _pggName _pggXgafv _pggUploadProtocol
              (Just _pggPp)
              _pggAccessToken
              _pggUploadType
              _pggBearerToken
              _pggCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupsGetResource)
                      mempty
